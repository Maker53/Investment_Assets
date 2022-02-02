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
}
