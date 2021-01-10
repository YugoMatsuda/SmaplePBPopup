//
//  PopUpViewController.swift
//  SmaplePBPopup
//
//  Created by Yugo Matsuda on 2021-01-03.
//

import UIKit
import MediaPlayer

class PopUpViewController: UIViewController {
    
  
    @IBOutlet var songImageView: UIImageView!
    @IBOutlet var songTitle: UILabel!
    @IBOutlet var artistTitle: UILabel!
    
    @IBOutlet var playButton: UIButton!
    
    var songImage: UIImage!
    var songTitleString: String!
    var artistTitleString: String!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songImageView.layer.masksToBounds = false
        songImageView.layer.shadowOpacity = 0.3
        songImageView.layer.shadowRadius = 10
        songImageView.layer.shadowColor = UIColor.black.cgColor
        songImageView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        songImageView.image = songImage
        songTitle.text = songTitleString
        artistTitle.text = artistTitleString
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
