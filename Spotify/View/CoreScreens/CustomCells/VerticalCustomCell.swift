import Foundation
import UIKit
import SnapKit

class VertCustomCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(resource: .rectangle16)
        return imageView
    }()
    let ellipsisView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "ellipsis")
        imageView.tintColor = .black
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont smile at me"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Billie Eilish"
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    let timeLabel: UILabel = {
        let label = UILabel()
        label.text = "5:33"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Добавляем элементы на ячейку
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(timeLabel)
        addSubview(ellipsisView)
        
        imageView.snp.makeConstraints{ make in
            make.top.equalTo(10)
            make.leading.equalTo(25)
            make.height.equalTo(56)
            make.width.equalTo(58)
        }
        titleLabel.snp.makeConstraints{ make in
            make.top.equalTo(10)
            make.leading.equalTo(imageView.snp.trailing).offset(20)
           
        }
        subTitleLabel.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.equalTo(imageView.snp.trailing).offset(20)
           
        }
        timeLabel.snp.makeConstraints{ make in
            make.top.equalTo(15)
            make.trailing.equalTo(ellipsisView.snp.leading).offset(-20)
           
        }
        ellipsisView.snp.makeConstraints{ make in
            make.top.equalTo(12)
            make.trailing.equalToSuperview().offset(-25)
           
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
