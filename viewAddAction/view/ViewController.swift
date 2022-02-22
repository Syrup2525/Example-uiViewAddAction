//
//  ViewController.swift
//  viewAddAction
//
//  Created by 김경환 on 2022/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.addAction {
            self.alert(message: "click red view")
        }
        
        greenView.addAction {
            self.alert(message: "click green ivew")
        }
        
        blueView.addAction {
            self.alert(message: "click blue view")
        }
    }

    private func alert(message: String) {
        let alert = UIAlertController(title: "Notification", message: message, preferredStyle: .alert)
        let uiAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(uiAlertAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

