//
//  CustomNavigationBar.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 7/3/24.
//

import UIKit

class CustomNavigationBar: UIView {
    
    private lazy var searchButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.tintColor = .black
        //view.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        return view
    }()
   
    private lazy var logoImage: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(resource: .vector)
        return view
    }()
    
    private lazy var menuButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "slider.horizontal.3"), for: .normal)
        view.tintColor = .black
        //view.addTarget(self, action: #selector(backBtnTapped), for: .touchUpInside)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    private func  setupUI() {
        
        addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.height.equalTo(33)
            make.width.equalTo(33)
        }
        addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(33)
            make.width.equalTo(108)
           
        }
        addSubview(menuButton)
        menuButton.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(33)
            make.width.equalTo(33)
        }
        
    }
}
