//
//  GifCell.swift
//  GiphySearchIOS
//
//  Created by Bo on 3/30/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
import UIKit

class GifCell: UITableViewCell {
    
    var gif: Gif?
    // ImageView to contain our gif.
    var gifView: UIImageView = {
        let v = UIImageView()
        v.contentMode = .scaleAspectFit
        return v
    }()
    
override func layoutSubviews() {
    super.layoutSubviews()
    // make sure cell has a gif object
    if gif != nil {
        // grab gif from object and display it inside imageview
        let gifURL = gif!.getGifURL()
        gifView.image = UIImage.gif(url: gifURL)
        gifView.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height)
    }
}
override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
}
required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
}
}
