//
//  ArticsProfilViewController.swift
//  Spotify
//
//  Created by Tatina Dzhakypbekova on 8/3/24.
//

import UIKit
import SnapKit

class ArticsProfilViewController: UIViewController {
    
    private let verticalData = VerticalData()
    private lazy var searchController: UISearchBar = {
        let view = UISearchBar()
        return view
    }()
    
    
    var collectionView: UICollectionView!
    let layout = UICollectionViewFlowLayout()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: "FAFAFA")
        setupSearchbar()
        setupCollectionview()
        
        let urlString = "https://itunes.apple.com/search?term=jack+johnson&limit=25"
        request(urlString: urlString) { (result) in
            switch result {
                
            case .success(let searchResponse):
                searchResponse.results.map { (track) in
                    print(track.artistName)
                }
            case .failure(let error):
                print("error", error)
            }
        
        }
        
        
        
    }
    private func request(urlString: String, completion: @escaping (Result <SearchResponse, Error>)-> Void){
        guard let url = URL(string: urlString)
        else {return}
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            DispatchQueue.main.async{
                if let error = error{
                    print(error)
                    completion(.failure(error))
                    return
                }
                guard let data = data else {return}
                do{
                    let tracks = try JSONDecoder().decode(SearchResponse.self, from: data)
                    completion(.success(tracks))
                    
                } catch let jsonError {
                    print("Failed to docode JSON", jsonError)
                    completion(.failure(jsonError))
                    
                }
                
            }
        }.resume()
        
    }
    
    private func setupSearchbar() {
        searchController.delegate = self
        
        view.addSubview(searchController)
        searchController.snp.makeConstraints {make in 
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
    
    private func setupCollectionview() {
        
        layout.scrollDirection = .vertical// Устанавливаем направление прокрутки
        
        // Инициализируем UICollectionView с UICollectionViewFlowLayout
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        
        // Регистрируем кастомный UICollectionViewCell
        collectionView.register(VertCustomCell.self, forCellWithReuseIdentifier: VertCustomCell().cellIdentifier)
        
        // Добавляем UICollectionView на экран
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints{make in
            make.top.equalTo(searchController.snp.bottom).offset(5)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
            
        }
    }
    
}
extension ArticsProfilViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Возвращаем количество ячеек в коллекции
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VertCustomCell().cellIdentifier, for: indexPath) as! VertCustomCell
            
            let verticals = verticalData.verticals[indexPath.item]
            cell.setData(verticals: verticals)
            
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Возвращаем размер ячейки
        return CGSize(width: collectionView.bounds.width, height: 56)
    }
    
}

extension ArticsProfilViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
   

}
