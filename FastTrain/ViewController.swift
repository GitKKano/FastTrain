//
//  ViewController.swift
//  FastTrain
//
//  Created by Kankuro Kano on 2017/08/09.
//  Copyright © 2017 Kankuro Kano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trainName: UITextField!
    @IBOutlet weak var traffic: UISegmentedControl!
    @IBOutlet weak var placeInTrain: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func submitNewRecord(_ sender: Any) {
        
                //Sets Place in train
        var Traffic = 0
        
        switch self.placeInTrain.selectedSegmentIndex {
        case 0:
            Traffic = 0
        case 1:
            Traffic = 1
        default:
            break
        }
        
                var placaInTrainINT = 0
        
                    switch self.placeInTrain.selectedSegmentIndex {
                    case 0:
                        placaInTrainINT = 0
                    case 1:
                        placaInTrainINT = 1
                    case 2:
                        placaInTrainINT = 2
                    default:
                        break
                    }
                print(trainName.text ?? "Toukaido Line", Traffic, placaInTrainINT)
        
        
    }

}

