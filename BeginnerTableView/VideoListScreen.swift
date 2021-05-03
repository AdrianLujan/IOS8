//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by mbtec22 on 2/05/21.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        videos = createArray()
        
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
  
        
        let video1 = Video(image: #imageLiteral(resourceName: "serie2"), title: "Car")
        let video2 = Video(image: #imageLiteral(resourceName: "serie3"), title: "Invencible")
        let video3 = Video(image: #imageLiteral(resourceName: "serie1"), title: "Gintama")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        return tempVideos

    }
    
   

}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }

}
