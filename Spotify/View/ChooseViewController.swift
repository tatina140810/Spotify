//
//  ViewController.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 2/3/24.
//

import UIKit
import SnapKit


class ChooseViewController: UIViewController {
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .billieEilishGreenHairWallpaper)
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .vector)
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private var conteinerStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 55
        view.distribution = .fillEqually
        return view
        
    }()
    private var firstStack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 20
        return view
    }()
    
    private var secondStack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 20
        return view
        
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Choose mode"
        view.font = UIFont.boldSystemFont(ofSize: 25)
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    
    private lazy var darkModeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = UIColor(hex: "353C3E")
        view.setImage(UIImage(resource: .hiconLinearMoon), for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 38
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var darkLabel: UILabel = {
        let view = UILabel()
        view.text = "Dark Mode"
        view.font = UIFont(name: "Satoshi-Regular", size: 16)
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    
    private lazy var lightModeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = UIColor(hex: "3D373B")
        view.setImage(UIImage(resource: .hiconLinearSun1), for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 38
        view.clipsToBounds = true
        return view
    }()
    private lazy var lightLabel: UILabel = {
        let view = UILabel()
        view.text = "Light Mode"
        view.font = UIFont(name: "Satoshi-Regular", size: 16)
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    private lazy var continueButton: UIButton = {
        let view = UIButton()
        view.setTitle("Continue", for: .normal)
        view.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        view.tintColor = .white
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(hex: "42C83C")
        view.addTarget(self, action: #selector(ContBtnTapped), for: .touchUpInside)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
        
    }
    
    private func setupUI() {
        
        view.addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints {make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(47) // Добавляем отступ от верха
            make.centerX.equalToSuperview() // Уточняем, что centerX относится к центру родительской вью
            make.height.equalTo(59)
        }
        view.addSubview(continueButton)
        continueButton.snp.makeConstraints{ make in
            make.bottom.equalToSuperview().offset(-70)
            make.height.equalTo(92)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
//
        
        view.addSubview(conteinerStack)
        conteinerStack.snp.makeConstraints{ make in
            make.bottom.equalTo(continueButton.snp.top).offset(-50)
            make.leading.equalToSuperview().offset(110)
            make.trailing.equalToSuperview().offset(-110)
            make.height.equalTo(120)
        }
        conteinerStack.addArrangedSubview(firstStack)
        conteinerStack.addArrangedSubview(secondStack)
        firstStack.addArrangedSubview(darkModeButton)
        firstStack.addArrangedSubview(darkLabel)
        secondStack.addArrangedSubview(lightModeButton)
        secondStack.addArrangedSubview(lightLabel)
        
        darkModeButton.snp.makeConstraints { make in
            make.width.equalTo(76)
            make.height.equalTo(76)
        }
        lightModeButton.snp.makeConstraints { make in
            make.width.equalTo(76)
            make.height.equalTo(76)
        }
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.bottom.equalTo(conteinerStack.snp.top).offset(-50)
            make.centerX.equalToSuperview()
        }
    }
    @objc func ContBtnTapped() {
        
        navigationController?.navigationBar.isHidden = true
        
        navigationController?.pushViewController(RegisterSignInViewController(), animated: true)
    }
}
