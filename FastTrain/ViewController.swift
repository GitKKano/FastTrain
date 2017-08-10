//
//  ViewController.swift
//  FastTrain
//
//  Created by Kankuro Kano on 2017/08/09.
//  Copyright © 2017 Kankuro Kano. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var trainName: UITextField!
    @IBOutlet weak var traffic: UISegmentedControl!
    @IBOutlet weak var placeInTrain: UISegmentedControl!
    @IBOutlet weak var SuggetionN: UILabel!
    @IBOutlet weak var Suggetion21: UILabel!
    @IBOutlet weak var Suggetion22: UILabel!
    @IBOutlet weak var test: UILabel!


    

    var Data:Data?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 1
        if let Data = Data {
            // 2
            trainName.text = Data.trainName
                    } else {
            // 3
            trainName.text = ""
            
            
            
            
            
        }
        

    }
    

    @IBAction func submitNewRecord(_ sender: Any) {
        
                //Sets Place in train
        var trafficINT = 0
        

        
        UserDefaults.standard.set(10, forKey: "LukesAge") // Store
        UserDefaults.standard.integer(forKey: "LukesAge") // Retrieve
        switch self.traffic.selectedSegmentIndex {
        case 0:
            trafficINT = 1
        case 1:
            trafficINT = 2
        default:
            break
        }
        
                var placaInTrainINT = 0
                    switch self.placeInTrain.selectedSegmentIndex {
                    case 0:
                        placaInTrainINT = 1
                    case 1:
                        placaInTrainINT = 2
                    case 2:
                        placaInTrainINT = 3
                    default:
                        break
                    }
        
        var placeInTrainF:Int = UserDefaults.standard.integer(forKey: "\(trainName)TrafficF")
        var placeInTrainM:Int = UserDefaults.standard.integer(forKey: "\(trainName)TrafficM")
        var placeInTrainB:Int = UserDefaults.standard.integer(forKey: "\(trainName)TrafficB")
        var Num:Int = UserDefaults.standard.integer(forKey: "\(trainName)PlaceInTrainNUM")
        
        


//                print(trainName.text ?? "Toukaido Line", trafficINT, placaInTrainINT)
        
        if placaInTrainINT == 1 {
            if trafficINT == 1 {
                placeInTrainF += 1
                Num += 1
                
            } else {
                Num += 1
                
            }
        }
        
        if placaInTrainINT == 2 {
            if trafficINT == 1 {
                placeInTrainM += 1
                Num += 1
                
            } else {
                Num += 1
                
            }
        }
            
        if placaInTrainINT == 3 {
            if trafficINT == 1 {
                placeInTrainB += 1
                Num += 1
                
            } else {
                Num += 1
                
            }
        }
                
            

        
        
        UserDefaults.standard.set(Num, forKey: "\(trainName)PlaceInTrainNUM")

        UserDefaults.standard.set(placeInTrainF, forKey: "\(trainName)TrafficF")
        UserDefaults.standard.set(placeInTrainM, forKey: "\(trainName)TrafficM")
        UserDefaults.standard.set(placeInTrainB, forKey: "\(trainName)TrafficB")
        
        print(UserDefaults.standard.integer(forKey: "\(trainName)TrafficF"))
        print(UserDefaults.standard.integer(forKey: "\(trainName)TrafficM"))
        print(UserDefaults.standard.integer(forKey: "\(trainName)TrafficB"))
        test.text = "\(UserDefaults.standard.integer(forKey: "\(trainName)TrafficF")), \(UserDefaults.standard.integer(forKey: "\(trainName)TrafficM")), \(UserDefaults.standard.integer(forKey: "\(trainName)TrafficB"))"

        if UserDefaults.standard.integer(forKey: "\(trainName)TrafficF") > UserDefaults.standard.integer(forKey: "\(trainName)TrafficM") {
            if UserDefaults.standard.integer(forKey: "\(trainName)TrafficF") > UserDefaults.standard.integer(forKey: "\(trainName)TrafficB") {
                // Ride FRONT
                print(placeInTrainF)
                print("#1")
                if UserDefaults.standard.integer(forKey: "\(trainName)PlaceInTrainNUM") > 2 {
                    SuggetionN.text = "Recommended to ride in FRONT"
                    Suggetion21.text = ""
                    Suggetion22.text = ""
                } else {
                    SuggetionN.text = "Recommended to ride in FRONT"
                    Suggetion21.text = "You have only submitted once."
                    Suggetion22.text = "Try going to the middle or the back."
                }
            } else {
                //Ride BACK
                print(placeInTrainB)
                print("#2")
                if UserDefaults.standard.integer(forKey: "\(trainName)PlaceInTrainNUM") > 2 {
                    SuggetionN.text = "Recommended to ride in BACK"
                    Suggetion21.text = ""
                    Suggetion22.text = ""
                } else {
                    SuggetionN.text = "Recommended to ride in BACK"
                    Suggetion21.text = "You have only submitted once."
                    Suggetion22.text = "Try going to the front or the middle."
                }
            }
        } else {
            if UserDefaults.standard.integer(forKey: "\(trainName)TrafficM") > UserDefaults.standard.integer(forKey: "\(trainName)TrafficB") {
                //Ride MIDDLE
                print(placeInTrainM)
                print("#3")
                if UserDefaults.standard.integer(forKey: "\(trainName)PlaceInTrainNUM") > 2 {
                    SuggetionN.text = "Recommended to ride in MIDDLE"
                    Suggetion21.text = ""
                    Suggetion22.text = ""
                } else {
                    SuggetionN.text = "Recommended to ride in MIDDLE"
                    Suggetion21.text = "You have only submitted once."
                    Suggetion22.text = " Try going to the front or the back."
                    
                }
            } else {
                //Ride BACK
                print(placeInTrainB)
                print("#4")
                if UserDefaults.standard.integer(forKey: "\(trainName)PlaceInTrainNUM") > 2 {
                    SuggetionN.text = "Recommended to ride in BACK"
                    Suggetion21.text = ""
                    Suggetion22.text = ""
                } else {
                    SuggetionN.text = "Recommended to ride in BACK"
                    Suggetion21.text = "You have only submitted once."
                    Suggetion22.text = "Try going to the front or the middle."
                }
            }
        }
        
    }



}
