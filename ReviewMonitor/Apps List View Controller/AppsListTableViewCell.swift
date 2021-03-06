//
//  AppsListTableViewCell.swift
//  ReviewMonitor
//
//  Created by Tayal, Rishabh on 9/8/17.
//  Copyright © 2017 Tayal, Rishabh. All rights reserved.
//

import UIKit

class AppsListTableViewCell: UITableViewCell {

    @IBOutlet weak var appIconImageView: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        appIconImageView.addBorder(1 / UIScreen.main.scale, color: UIColor.lightGray)
        appIconImageView.cornerRadius(8)
    }

    func configure(app: App) {
        if let imageUrl = app.previewUrl {
            appIconImageView.sd_setImage(with: URL(string: imageUrl)!, completed: nil)
        } else {
            appIconImageView.image = UIImage(named: "empty_app_icon")
        }
        appNameLabel.text = app.name
    }
}
