//
//  AssetCell.swift
//  Investment_Assets
//
//  Created by Станислав on 01.02.2022.
//

import UIKit

class AssetCell: UITableViewCell {

    @IBOutlet var assetImage: UIImageView!
    @IBOutlet var assetNameLabel: UILabel!
    @IBOutlet var countAndPriceLabel: UILabel!
    @IBOutlet var capitalisationLabel: UILabel!
    @IBOutlet var growthLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with asset: Asset?) {
        assetNameLabel.text = asset?.name
        countAndPriceLabel.text = "\(asset?.count) шт. \(asset?.price) руб."
        capitalisationLabel.text = "\(asset?.capitalisation) руб."
        growthLabel.text = "\(asset?.growth) %"
        assetImage.image = #imageLiteral(resourceName: "emptyAsset")
        
        /*
        DispatchQueue.global().async {
            guard let stringURL = course.imageUrl else { return }
            guard let url = URL(string: stringURL) else { return }
            guard let imageData = try? Data(contentsOf: url) else { return }
            
            DispatchQueue.main.async {
                self.courseImage.image = UIImage(data: imageData)
            }
        }
         */ // Здесь попробовать картинку загрузить
    }
}
