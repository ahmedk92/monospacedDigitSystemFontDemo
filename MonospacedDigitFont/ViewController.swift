//
//  ViewController.swift
//  MonospacedDigitFont
//
//  Created by Arabia -IT on 8/8/19.
//  Copyright © 2019 Arabia-IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var labelVariable: UILabel!
    @IBOutlet private weak var labelFixed: UILabel!
    
    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        [labelFixed, labelVariable].forEach({
            $0?.text = "\(Int(sender.value))"
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFixed.font = .monospacedDigitSystemFont(ofSize: labelFixed.font.pointSize, weight: .regular)
    }
}

