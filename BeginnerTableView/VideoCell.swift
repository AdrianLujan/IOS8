//
//  ViewCell.swift
//  BeginnerTableView
//
//  Created by mbtec22 on 2/05/21.
//

import UIKit

class VideoCell: UITableViewCell {
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
        
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
