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
                
                if let popupBar = self.tabBarController?.popupBar {

                    popupBar.dataSource = self
                    popupBar.title = "Title"
                    
                    let popupContentVC = PopUpViewController()
                    
                    self.tabBarController?.presentPopupBar(withPopupContentViewController: popupContentVC, animated: true, completion: {
                        print("Presented")
                    })
                }
    }
    

}

