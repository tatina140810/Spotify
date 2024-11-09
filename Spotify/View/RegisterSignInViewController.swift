//
//  RegisterSignInViewController.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 6/3/24.
//

import UIKit
import SnapKit

class RegisterSignInViewController: UIViewController {
   
    private lazy var unionImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .union)
       
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .vector)
        return view
    }()
    
    private lazy var backButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        view.tintColor = .black
        view.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Enjoy Listening To Music"
        view.font = UIFont(name: "Satoshi-Bold", size:30)
        view.textColor = .black
        view.textAlignment = .center
        return view
    }()
    
    private lazy var bodyLabel: UILabel = {
        let view = UILabel()
        view.text = "Spotify is a proprietary Swedish audio streaming and media services provider"
        view.font = UIFont(name: "Satoshi-Regular", size: 17)
        view.textColor = .gray
        view.textAlignment = .center
        view.numberOfLines = 0
 
        return view
    }()
    
    private lazy var registerButton: UIButton = {
        let view = UIButton()
        view.setTitle("Register", for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.tintColor = .white
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(hex: "42C83C")
        view.addTarget(self, action: #selector(registerBtnTapped), for: .touchUpInside)
        return view
    }()
    
    private lazy var signInButton: UIButton = {
        let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.setTitleColor(.black, for: .normal)
        view.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
        return view
    }()
    private lazy var greenHairImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .greenHair)
        return view
    }()
    
    private lazy var secondUnionImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .union)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        
    }
    private func setupUI() {
        
        view.addSubview(unionImage)
        unionImage.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(-120)
            make.trailing.equalToSuperview().offset(164)
            make.height.equalTo(314)
            make.width.equalTo(300)
        }
        
        view.addSubview(backButton)
        backButton.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview().offset(16)
        }
        
        
        let rotationAngle = 10 * CGFloat.pi / 180
        unionImage.transform = CGAffineTransform(rotationAngle: rotationAngle)
        
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints{ make in
            make.top.equalTo(backButton).offset(200)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalTo(logoImage).offset(100)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(bodyLabel)
        bodyLabel.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel).offset(70)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
        }
        view.addSubview(registerButton)
        registerButton.snp.makeConstraints{ make in
            make.top.equalTo(bodyLabel).offset(70)
            make.leading.equalToSuperview().offset(40)
            make.height.equalTo(73)
            make.width.equalTo(147)
        }
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints{make in
            make.top.equalTo(bodyLabel).offset(70)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(73)
            make.width.equalTo(147)
           }
        view.addSubview(greenHairImage)
        greenHairImage.snp.makeConstraints{ make in
            make.bottom.equalToSuperview().offset(120)
            make.leading.equalToSuperview().offset(-200)
        }
        
        view.addSubview(secondUnionImage)
        secondUnionImage.snp.makeConstraints{ make in
            make.bottom.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(120)
            make.height.equalTo(314)
            make.width.equalTo(300)
            
        }
    }
    
    @objc func backBtnTapped () {
        navigationController?.navigationBar.isHidden = true
        
        navigationController?.pushViewController(ChooseViewController(), animated: true)
    }
    @objc func registerBtnTapped() {
        navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
    @objc func signInBtnTapped() {
        navigationController?.pushViewController(SignInViewController(), animated: true)

        
    }
 }
