//
//  ViewController.swift
//  SmaplePBPopup
//
//  Created by Yugo Matsuda on 2021-01-03.
//

import UIKit
import PBPopupController
class ViewController: UIViewController, PBPopupControllerDelegate, PBPopupBarDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sample"
        // Do any additional setup after loading the view.
    }
    @IBAction func displayPopupAction(_ sender: Any) {
        
        self.tabBarController?.popupController.delegate = self
        self.tabBarController?.popupContentView.popupIgnoreDropShadowView = true
        if let popupBar = self.tabBarController?.popupBar {
            
            popupBar.dataSource = self
            popupBar.title = "ray"
            popupBar.subtitle = "BUMP OF CHICKEN"
            
            popupBar.image = UIImage(named:  "ray")
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let popupContentVC = storyboard.instantiateViewController(withIdentifier: "PopUpViewController") as? PopUpViewController
            popupContentVC!.songImage = UIImage(named:  "ray")
            popupContentVC!.songTitleString = "ray"
            popupContentVC!.artistTitleString = "BUMP OF CHICKEN"
            
            self.tabBarController?.presentPopupBar(withPopupContentViewController: popupContentVC, animated: true, completion: {
                print("Presented")
            })
        }
    }
    
    
}

