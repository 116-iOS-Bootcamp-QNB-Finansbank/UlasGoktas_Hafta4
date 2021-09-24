//
//  SettingsPopupViewController.swift
//  BasicUIComponents
//
//  Created by ulas on 24.09.2021.
//

import UIKit

class SettingsPopupViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func settingsButtonTapped(_ sender: UIButton) {
        
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: nil)
        }
        
    }
    
    
}
