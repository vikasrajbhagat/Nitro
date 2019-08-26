//
//  ViewController.swift
//  Nitro
//
//  Created by Vikas Raj Bhagat on 2019-02-28.
//  Copyright © 2019 Vikas Raj Bhagat. All rights reserved.
//

import UIKit
import Foundation



class ViewController: UIViewController {
    var timer = Timer()
    
    //Variables from Storyboard
    @IBOutlet weak var CurrentTime: UILabel!
    @IBOutlet weak var CurrentDate: UILabel!
    
    @IBOutlet weak var BreakfastDisplay: UILabel!
    @IBOutlet weak var LunchDisplay: UILabel!
    @IBOutlet weak var DinnerDisplay: UILabel!

    @IBOutlet weak var Temp: UILabel!
    @IBOutlet weak var TempMin: UILabel!
    @IBOutlet weak var TempMax: UILabel!
    @IBOutlet weak var WindSpeed: UILabel!
    @IBOutlet weak var Direction: UILabel!
    @IBOutlet weak var Humidity: UILabel!
    @IBOutlet weak var MainDesc: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var SunRise: UILabel!
    @IBOutlet weak var SunSet: UILabel!
    @IBOutlet weak var Icon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        
        
        // Define URL for Weather Data
        URLSession.shared.dataTask(with: URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=51.05011&lon=-114.08529&appid=b44e7ea56a79630c29ac283f025501e6&units=metric")!) { data, response, error in
            if let error = error {
                print("Error:\n\(error)")
            } else {
                do {
                    let JSon = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String: AnyObject]
                    
                    let weatherData = (JSon["weather"]as! NSArray)
                    if let Temp1 = weatherData[0] as? NSDictionary {
                        DispatchQueue.main.async {
                            let Desc = Temp1["description"] as? String
                            self.Description.text = Desc?.uppercased()
                            self.MainDesc.text = Temp1["main"] as? String
                            let Ico = Temp1["icon"] as? String
                            let fileName = "\(Ico!).png"
                            let urlStr = NSURL(string:"https://openweathermap.org/img/w/\(fileName)")
                            let urlData = NSData(contentsOf: urlStr! as URL)
                            self.Icon.image = UIImage(data: urlData! as Data)
                        }
                    }
                    if let Temp2 = JSon["main"]as? NSDictionary {
                        DispatchQueue.main.async {
                                self.Temp.text = "\(String(Temp2["temp"] as! Double))°C"
                            self.Humidity.text = "Humidity  \(String(Temp2["humidity"] as! Double))%"
                            self.TempMax.text = "Max: \(String(Temp2["temp_max"] as! Double))°C"
                            self.TempMin.text = "Min: \(String(Temp2["temp_min"] as! Double))°C"
                    }
                }
                    if let Temp3 = JSon["sys"]as? NSDictionary {
                    DispatchQueue.main.async {
//                   All the Code for SunRise and Sunset to be readable to humans
                        let sunrise = (Temp3["sunrise"] as! UInt64)
                        let sunriseDate = Date(timeIntervalSince1970: TimeInterval(sunrise))
                        let formatter1 = DateFormatter()
                        formatter1.dateStyle = .none
                        formatter1.timeStyle = .medium
                        let formattedTime1 = formatter1.string(from: sunriseDate)
                        self.SunRise.text = "Sunrise Time \(formattedTime1) "
                        
                        let sunset = (Temp3["sunset"] as! UInt64)
                        let sunsetDate = Date(timeIntervalSince1970: TimeInterval(sunset))
                        let formatter2 = DateFormatter()
                        formatter2.dateStyle = .none
                        formatter2.timeStyle = .medium
                        let formattedTime2 = formatter2.string(from: sunsetDate)
                        self.SunSet.text = "Sunset Time \(formattedTime2) "
                        
                        }
                    }
                    if let Temp4 = JSon["name"] as? NSDictionary {
                        DispatchQueue.main.async {
                            self.City.text = "City: \(Temp4["name"] as! String)"
                           
                        }
                    }
                    if let Temp5 = JSon["wind"] as? NSDictionary {
                        DispatchQueue.main.async {
                            let KPH_MPS = (Temp5["speed"] as! Double)*3.6
                            self.WindSpeed.text = "WindSpeed \((String(format: "%.2f", KPH_MPS))) KPH"
                            let Direct = (Temp5["deg"] as! Int)
                            if Int(348.75) <= Direct, Direct <= 360   {self.Direction.text =  "Direction:  \(Direct)° N" }
                            else if 0 <= Direct, Direct <= Int(11.25) {self.Direction.text = "Direction:  \(Direct)° N" }
                            else if Int(11.25) < Direct, Direct <= Int(33.75) { self.Direction.text = "Direction:  \(Direct)° NNE" }
                            else if Int(33.75) < Direct, Direct <= Int(56.25) { self.Direction.text = "Direction:  \(Direct)° NE" }
                            else if Int(56.25) < Direct, Direct <= Int(78.75) { self.Direction.text = "Direction:  \(Direct)° ENE" }
                            else if Int(78.75) < Direct, Direct <= Int(101.25) { self.Direction.text = "Direction:  \(Direct)° E" }
                            else if Int(101.25) < Direct, Direct <= Int(123.75) { self.Direction.text = "Direction:  \(Direct)° ESE" }
                            else if Int(123.75) < Direct, Direct <= Int(146.25) { self.Direction.text = "Direction:  \(Direct)° SE" }
                            else if Int(146.25) < Direct, Direct <= Int(168.75) { self.Direction.text = "Direction:  \(Direct)° SSE" }
                            else if Int(168.75) < Direct, Direct <= Int(191.25) { self.Direction.text = "Direction:  \(Direct)° S" }
                            else if Int(191.25) < Direct, Direct <= Int(213.75) { self.Direction.text = "Direction:  \(Direct)° SSW" }
                            else if Int(213.75) < Direct, Direct <= Int(236.25) { self.Direction.text = "Direction:  \(Direct)° SW" }
                            else if Int(236.25) < Direct, Direct <= Int(258.75) { self.Direction.text = "Direction:  \(Direct)° WSW" }
                            else if Int(258.75) < Direct, Direct <= Int(281.25) { self.Direction.text = "Direction:  \(Direct)° W" }
                            else if Int(281.25) < Direct, Direct <= Int(303.75) { self.Direction.text = "Direction:  \(Direct)° WNW" }
                            else if Int(303.75) < Direct, Direct <= Int(326.25) { self.Direction.text = "Direction:  \(Direct)° NW" }
                            else if Int(326.25) < Direct, Direct < Int(348.75) { self.Direction.text = "Direction:  \(Direct)° NNW" }
                        }
                    }


                } catch let jsonError as NSError {
                    print("JSON error:\n\(jsonError.description)")
                }
            }
            }.resume()

       
        }
        
    
    
    //Hide the Navigation Bar on the main screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar for current view controller
        self.navigationController?.isNavigationBarHidden = true;
    }
        @objc func UpdateTimer() {
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        timeFormatter.timeStyle = .medium
        
        
        CurrentDate.text = dateFormatter.string(from: NSDate() as Date)
        CurrentTime.text = timeFormatter.string(from: NSDate() as Date)
            let myCalendar = Calendar (identifier: .gregorian)
            let weekDay = myCalendar.component(.weekdayOrdinal, from: Date())
            let dayname = Calendar.current.weekdaySymbols[weekDay]
            BreakfastDisplay.text = WeekMenu.getMenu(forDay: dayname, forMeal: "Breakfast")?.menu ?? ""
            LunchDisplay.text = WeekMenu.getMenu(forDay: dayname, forMeal: "Lunch")?.menu ?? ""
            DinnerDisplay.text = WeekMenu.getMenu(forDay: dayname, forMeal: "Dinner")?.menu ?? ""
            
    }
    
  

}
