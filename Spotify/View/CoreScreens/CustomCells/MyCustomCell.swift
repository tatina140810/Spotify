import Foundation
import UIKit
import SnapKit

class MyCustomCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(resource: .rectangle16)
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "lilbubblegum"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSettings()
    }
    
    func setupSettings(){
       
        addSubview(imageView)
        addSubview(titleLabel)
        
        imageView.snp.makeConstraints{ make in
            make.top.equalTo(10)
            make.leading.equalTo(10)
            make.height.equalTo(135)
            make.width.equalTo(140)
        }
        titleLabel.snp.makeConstraints{ make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.leading.equalTo(10)
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
