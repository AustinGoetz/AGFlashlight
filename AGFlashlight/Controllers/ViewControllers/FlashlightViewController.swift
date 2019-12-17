//
//  FlashlightViewController.swift
//  AGFlashlight
//
//  Created by Austin Goetz on 12/16/19.
//  Copyright © 2019 Austin Goetz. All rights reserved.
//

import UIKit

class FlashlightViewController: UIViewController {
    
    var isOn: Bool = false
    
    // MARK: - Outlets
    
    @IBOutlet weak var turnOnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    // MARK: - Actions
    
    @IBAction func turnOnButtonTapped(_ sender: Any) {
        
        if isOn == false {
            view.backgroundColor = .white
            turnOnButton.setTitleColor(.black, for: .normal)
            turnOnButton.setTitle("Turn Off", for: .normal)
            turnOnButton.backgroundColor = .white
            
            isOn = true
            
        } else if isOn == true {
            view.backgroundColor = .black
            turnOnButton.setTitleColor(.white, for: .normal)
            turnOnButton.setTitle("Turn On", for: .normal)
            turnOnButton.backgroundColor = .black
            
            isOn = false
        }
    }
    
    // MARK: - Helpers
    
    func setUpViews() {
        view.backgroundColor = .black
        turnOnButton.layer.cornerRadius = 10
        turnOnButton.setTitle("Turn On", for: .normal)
        turnOnButton.setTitleColor(.white, for: .normal)
    }
}
