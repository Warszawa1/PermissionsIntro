//
//  ViewController.swift
//  Permissions
//
//  Created by Ire  Av on 1/5/25.
//

import UIKit
import SPPermissions

class ViewController: UIViewController, SPPermissionsDelegate {
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton() {
        
        let controller = SPPermissions.list([.camera, .locationWhenInUse, .microphone])
        
        controller.titleText = "Permissions"
        controller.headerText = "Please allow to get started"
        controller.footerText = "These are required permissions"
        
        controller.delegate = self
        
        controller.present(on: self)
            
    }
}

