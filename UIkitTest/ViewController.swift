//
//  ViewController.swift
//  UIkitTest
//
//  Created by Alex on 23.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var slider: UISlider!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
//MARK: segment Controll
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
//        MARK: mainlabel
       mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        mainLabel.text = String(slider.value)
        
    }

    @IBAction func segmentConreollAction(_ sender: Any) {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент 1"
            mainLabel.textColor = .red
        case 1:
    
            mainLabel.text = "Выбран сегмент 2"
            mainLabel.textColor = .green
            
        case 2:
            mainLabel.text = "Выбран сегмент 3"
            mainLabel.textColor = .blue
        default:
            break
        }
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
    }
    
    
    
}

