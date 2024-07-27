//
//  SettingViewController.swift
//  Hello
//
//  Created by gadgelogger on 2024/07/20.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBAction func darkModeSwitch(_ sender: Any) {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        if window?.overrideUserInterfaceStyle == .dark{
            window?.overrideUserInterfaceStyle = .light
        }else{
            window?.overrideUserInterfaceStyle = .dark
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    

    
}
