public extension String {
    static let animeCharactesTitle = "Anime Characters"
    fileprivate static let animeCharacterKey = "AnimeCharacterKey"
}

import UIKit
import SnapKit

class AnimeCharactersViewController: UIViewController {
    fileprivate lazy var animeCharactersTableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    fileprivate var viewmodel: AnimeCharactersViewModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupData()
        self.setupView()
        self.setupNavigation()
        self.viewmodel?.getAnimeCharacters()
    }
    
    static func create() -> AnimeCharactersViewController {
        let viewController = AnimeCharactersViewController()
        viewController.viewmodel = AnimeCharactersViewModel.create()
        return viewController
    }
}

//mark: Setup
fileprivate extension AnimeCharactersViewController {
    func setupView(){
        view.backgroundColor = .white
        let tableView: UITableView = self.animeCharactersTableView
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        tableView.register(AnimeChraterTableViewCell.self, forCellReuseIdentifier: .animeCharacterKey)
        tableView.snp.makeConstraints { (make) in
            make.top.left.equalTo(self.view).offset(16)
            make.bottom.equalTo(self.view)
            make.right.equalTo(self.view).offset(-16)
        }
    }
    
    func setupData() {
        guard var viewmodel = self.viewmodel else {
            return
        }
        viewmodel.animeCharactersLiveData = { result in
            switch result {
            case .begin:
                break
            case .success(_):
                break
            case .error(_):
                let alert = UIAlertController(title: "Error", message: "Cannot load anime charaters", preferredStyle: .alert)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func setupNavigation() {
        guard let navigationBar = self.navigationController?.navigationBar else {
            return
        }
        navigationBar.prefersLargeTitles = true
        title = .animeCharactesTitle
        self.navigationController?.title = title
    }
}

//mark: TableView DataSource
extension AnimeCharactersViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewmodel?.animeCharacters.count ?? 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: AnimeChraterTableViewCell = tableView.dequeueReusableCell(withIdentifier: .animeCharacterKey, for: indexPath) as? AnimeChraterTableViewCell ?? AnimeChraterTableViewCell()
        cell.animeCharacter = self.viewmodel?.animeCharacters[indexPath.row]
        return cell
    }
}

//mark: TableView Delegate
extension AnimeCharactersViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = AnimeCharacterDetailViewController.create(animeCharaterId: self.viewmodel?.animeCharacters[indexPath.row].id ?? "")
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}
