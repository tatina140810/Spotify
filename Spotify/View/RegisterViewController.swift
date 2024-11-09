//
//  RegisterViewController.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 6/3/24.
//

import UIKit

class  RegisterViewController: UIViewController {
    
    private lazy var backButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        view.tintColor = .black
        view.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        return view
    }()
    private lazy var logoImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .vector)
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Register"
        view.font = UIFont(name: "Satoshi-Bold", size:30)
        view.textColor = .black
        view.textAlignment = .center
        return view
    }()
    
    private lazy var suportButton: UIButton = {
        let view = UIButton()
        view.setTitle("If you need any support click here", for: .normal)
        view.titleLabel?.font = UIFont(name: "Satoshi-Regular", size: 16)
        view.setTitleColor(.black, for: .normal)
        //view.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        return view
    }()
    
    private lazy var nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "   Full name"
        view.borderStyle = .roundedRect
        return view
    }()
    
    private lazy var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "   Enter e-mail"
        view.borderStyle = .roundedRect
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "   Password"
        view.borderStyle = .roundedRect
        return view
    }()
    private lazy var creatButton: UIButton = {
        let view = UIButton()
        view.setTitle("Creat Account", for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        view.tintColor = .white
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(hex: "42C83C")
            //view.addTarget(self, action: #selector(ContBtnTapped), for: .touchUpInside)
        return view
    }()
    private lazy var lineLabel: UILabel = {
        let view = UILabel()
        view.text = "--------------or---------------"
        view.font = UIFont(name: "Satoshi-Regular", size: 17)
        view.textColor = .gray
        view.textAlignment = .center
        view.numberOfLines = 0
 
        return view
    }()
    private var conteinerStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 30
        view.distribution = .fillEqually
        return view
        
    }()
    
    private lazy var googleImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .group26)
        view.contentMode = .scaleAspectFit
        return view
    }()
    private lazy var appleImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .vector1)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var notAMemberButton: UIButton = {
        let view = UIButton()
        view.setTitle("Do you have an account? sign In", for: .normal)
        view.titleLabel?.font = UIFont(name: "Satoshi-Regular", size: 16)
        view.setTitleColor(.black, for: .normal)
        //view.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(backButton)
        backButton.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview().offset(16)
        }
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.centerX.equalToSuperview()
            make.height.equalTo(33)
            make.width.equalTo(108)
        }
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalTo(logoImage).offset(90)
            make.centerX.equalToSuperview()
           
        }
        view.addSubview(suportButton)
        suportButton.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel).offset(50)
            make.centerX.equalToSuperview()
        }
        view.addSubview(nameTextField)
        nameTextField.snp.makeConstraints{ make in
            make.top.equalTo(suportButton).offset(50)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(92)
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints{ make in
            make.top.equalTo(nameTextField).offset(120)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(92)
        }
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{ make in
            make.top.equalTo(emailTextField).offset(120)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(92)
        }
        view.addSubview(creatButton)
        creatButton.snp.makeConstraints{ make in
            make.bottom.equalTo(passwordTextField).offset(130)
            make.height.equalTo(92)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        view.addSubview(lineLabel)
        lineLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(creatButton).offset(80)
            make.height.equalTo(92)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        view.addSubview(conteinerStack)
        conteinerStack.snp.makeConstraints{make in
            make.top.equalTo(lineLabel.snp_bottomMargin).offset(20)
            make.centerX.equalToSuperview()
           
            make.height.equalTo(30)
            make.width.equalTo(150)
        }
        conteinerStack.addArrangedSubview(googleImage)
        conteinerStack.addArrangedSubview(appleImage)
        
        view.addSubview(notAMemberButton)
        notAMemberButton.snp.makeConstraints{make in
            make.bottom.equalToSuperview().offset(-60)
            make.centerX.equalToSuperview()
           
        }
    }
    @objc func backBtnTapped () {
        navigationController?.navigationBar.isHidden = true
        
        navigationController?.pushViewController(RegisterSignInViewController(), animated: true)
    }
}
