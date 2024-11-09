import UIKit
import SnapKit

class CustomTextFieldWithSecureButton: UIView {
    private let confirmTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter a password"
        tf.borderStyle = .roundedRect
        tf.layer.cornerRadius = 15
        tf.clipsToBounds = true
//        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry = true
        let rightView = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        rightView.setBackgroundImage(UIImage(systemName: "eye.slash"), for: .normal)
        rightView.tintColor = .gray
        tf.isUserInteractionEnabled = true
        rightView.addTarget(self, action: #selector(hideText), for: .touchUpInside)
        rightView.tag = 1
        tf.rightView = rightView
        tf.rightViewMode = .always
        tf.tag = 1
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI(){
        addSubview(confirmTF)
        confirmTF.snp.makeConstraints{ make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(92)
            make.centerY.equalToSuperview()
        }
    }
    
    @objc func hideText(_ sender: UIButton) {
        confirmTF.isSecureTextEntry.toggle()
        let imageName = confirmTF.isSecureTextEntry ? "eye.slash" : "eye"
        sender.setBackgroundImage(UIImage(systemName: imageName), for: .normal)
    }
    func fill(placeholder: String){
          confirmTF.placeholder = placeholder
   }
}

