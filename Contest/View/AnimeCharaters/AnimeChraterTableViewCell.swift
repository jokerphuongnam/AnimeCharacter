import UIKit
import Foundation

class AnimeChraterTableViewCell: UITableViewCell {
    fileprivate lazy var avatarImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    fileprivate lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    fileprivate lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(self.avatarImage)
        contentView.addSubview(self.nameLabel)
        contentView.addSubview(self.detailLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setupView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension AnimeChraterTableViewCell {
    var animeCharacter: AnimeCharacter? {
        get {
            fatalError()
        }
        
        set {
            guard let newValue = newValue else {
                return
            }
            self.avatarImage.loadFromUrl(from: newValue.avatar)
            self.nameLabel.text = newValue.title
            self.detailLabel.text = newValue.description
        }
    }
}

fileprivate extension AnimeChraterTableViewCell {
    private func setupView(){
        avatarImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().offset(-16)
            make.right.equalTo(nameLabel.snp.left).offset(-16)
            make.right.equalTo(detailLabel.snp.left).offset(-16)
            make.width.equalTo(100)
        }
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.left.equalTo(avatarImage.snp.right).offset(-16)
            make.bottom.equalTo(detailLabel.snp.top)
            make.trailing.equalToSuperview()
        }
        detailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
            make.left.left.equalTo(avatarImage.snp.right).offset(-16)
            make.bottom.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview()
        }
    }
}
