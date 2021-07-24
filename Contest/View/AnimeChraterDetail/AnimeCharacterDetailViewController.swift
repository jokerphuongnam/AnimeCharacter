import UIKit

class AnimeCharacterDetailViewController: UIViewController {
    fileprivate lazy var avatarImage: UIImageView = {
       let image = UIImageView()
        return image
    }()
    fileprivate lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.setupData()
        self.setupData()
        self.setupNavigation()
    }
    
    fileprivate var viewmodel: AnimeCharacterDetailViewModel? = nil
    
    static func create(animeCharaterId id: String) -> AnimeCharacterDetailViewController {
        let viewController = AnimeCharacterDetailViewController()
        viewController.viewmodel = AnimeCharacterDetailViewModel.create(animeCharacterId: id)
        return viewController
    }
}

fileprivate extension AnimeCharacterDetailViewController {
    func setupView() {
        self.view.backgroundColor = .white
        let scrollView: UIScrollView = {
           let scrollView = UIScrollView()
            scrollView.alwaysBounceVertical = true
            return scrollView
        }()
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(avatarImage)
        scrollView.addSubview(descriptionLabel)
        
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview()
        }
        self.avatarImage.snp.makeConstraints { make in
            make.top.equalTo(scrollView).offset(16)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-16)
            make.height.equalTo(250)
            make.width.equalToSuperview()
        }
        self.descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(self.avatarImage.snp.bottom).offset(16)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-16)
            make.width.equalToSuperview()
        }
    }
    
    func setupData() {
        self.viewmodel?.getAnimeCharacterDetail()
        guard let animeCharacter = self.viewmodel?.animeCharacter else {
            return
        }
        self.avatarImage.loadFromUrl(from: animeCharacter.avatar)
        self.descriptionLabel.text = animeCharacter.description
        
        self.descriptionLabel.sizeToFit()
    }
    
    func setupNavigation() {
        guard let navigationBar = self.navigationController?.navigationBar, let animeCharacter = self.viewmodel?.animeCharacter else {
            return
        }
        title = animeCharacter.title
        let backButton = UIBarButtonItem()
        backButton.title = .animeCharactesTitle
        navigationBar.topItem?.backBarButtonItem = backButton
    }
}
