import UIKit

struct ArtistsModel {
    var imageView: UIImage
    var titleLabel: String
    var subTitleLabel: String
}

struct ArtistsData {
    let artists: [ArtistsModel] = [ArtistsModel(imageView: UIImage(resource: .rectangle9), titleLabel: "Bad Guy", subTitleLabel: "Billie Eilish"),
                                   ArtistsModel(imageView: UIImage(resource: .rectangle8), titleLabel: "Scorpion", subTitleLabel: "Drake"),
                                   ArtistsModel(imageView: UIImage(resource: .rectangle9), titleLabel: "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?", subTitleLabel: "Billie Eilish")
    ]
}

