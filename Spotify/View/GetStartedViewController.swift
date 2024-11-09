//
//  ViewController.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 2/3/24.
//

import UIKit

class GetStartedViewController: UIViewController {
    private lazy var backgroundImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .wp4780558BillieEilishGlassesWallpapers1)
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(resource: .vector)
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Enjoy Listening To Music"
        view.font = UIFont(name: "Satoshi-Bold", size:27)
        view.textColor = .white
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var bodyLabel: UILabel = {
        let view = UILabel()
        view.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam."
        view.font = UIFont(name: "Satoshi-Regular", size: 17)
        view.textColor = .gray
        view.textAlignment = .center
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var getStartedButton: UIButton = {
        let view = UIButton()
        view.setTitle("Get started", for: .normal)
        view.titleLabel?.font = UIFont(name: "Satoshi-Bold", size: 24)
        view.tintColor = .white
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(hex: "42C83C")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(startBtnTapped), for: .touchUpInside)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
        
    }
    
    private func setupUI() {
        
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate(
            [backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
             backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        view.addSubview(logoImage)
        NSLayoutConstraint.activate(
            [logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 47),
             logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             logoImage.heightAnchor.constraint(equalToConstant: 59)
            ])
        
        
        
        view.addSubview(titleLabel)
        view.addSubview(bodyLabel)
        view.addSubview(getStartedButton)
        
        NSLayoutConstraint.activate(
            [
                getStartedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
                getStartedButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                getStartedButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                getStartedButton.heightAnchor.constraint(equalToConstant: 92)
            ])
        
        NSLayoutConstraint.activate(
            [
                bodyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46),
                bodyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -46),
                bodyLabel.bottomAnchor.constraint(equalTo: getStartedButton.topAnchor, constant: -50)
            ])
        NSLayoutConstraint.activate(
            [
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 46),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -46),
                titleLabel.bottomAnchor.constraint(equalTo: bodyLabel.topAnchor, constant: -30)
            ])
        
    }
    @objc func startBtnTapped() {
        
        navigationController?.navigationBar.isHidden = true
        
        navigationController?.pushViewController(ChooseViewController(), animated: true)
    }
    
    
}
