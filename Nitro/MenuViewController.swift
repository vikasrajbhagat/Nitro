//
//  MenuViewController.swift
//  Nitro
//
//  Created by Vikas Raj Bhagat on 2019-03-19.
//  Copyright © 2019 Vikas Raj Bhagat. All rights reserved.
//

import UIKit
import CoreData


@available(iOS 10.0, *)
class MenuViewController: UIViewController {
   
    
    //Define all the Output Labels
    @IBOutlet weak var MonB: UILabel!
    @IBOutlet weak var MonL: UILabel!
    @IBOutlet weak var MonD: UILabel!
    @IBOutlet weak var TueB: UILabel!
    @IBOutlet weak var TueL: UILabel!
    @IBOutlet weak var TueD: UILabel!
    @IBOutlet weak var WedB: UILabel!
    @IBOutlet weak var WedL: UILabel!
    @IBOutlet weak var WedD: UILabel!
    @IBOutlet weak var ThuB: UILabel!
    @IBOutlet weak var ThuL: UILabel!
    @IBOutlet weak var ThuD: UILabel!
    @IBOutlet weak var FriB: UILabel!
    @IBOutlet weak var FriL: UILabel!
    @IBOutlet weak var FriD: UILabel!
    @IBOutlet weak var SatB: UILabel!
    @IBOutlet weak var SatL: UILabel!
    @IBOutlet weak var SatD: UILabel!
    @IBOutlet weak var SunB: UILabel!
    @IBOutlet weak var SunL: UILabel!
    @IBOutlet weak var SunD: UILabel!
    
    //Define Buttons to Enable/Disable
    @IBOutlet weak var MondB: UIButton!
    @IBOutlet weak var MondL: UIButton!
    @IBOutlet weak var MondD: UIButton!
    @IBOutlet weak var TuesB: UIButton!
    @IBOutlet weak var TuesL: UIButton!
    @IBOutlet weak var TuesD: UIButton!
    @IBOutlet weak var WedsB: UIButton!
    @IBOutlet weak var WedsL: UIButton!
    @IBOutlet weak var WedsD: UIButton!
    @IBOutlet weak var ThurB: UIButton!
    @IBOutlet weak var ThurL: UIButton!
    @IBOutlet weak var ThurD: UIButton!
    @IBOutlet weak var FridB: UIButton!
    @IBOutlet weak var FridL: UIButton!
    @IBOutlet weak var FridD: UIButton!
    @IBOutlet weak var SatuB: UIButton!
    @IBOutlet weak var SatuL: UIButton!
    @IBOutlet weak var SatuD: UIButton!
    @IBOutlet weak var SundB: UIButton!
    @IBOutlet weak var SundL: UIButton!
    @IBOutlet weak var SundD: UIButton!
    
    //Define the Edit button to enable Tap Buttons
    @IBOutlet var editButton: UIBarButtonItem!
    
    //Define all the Output Buttons
    @IBAction func MoB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func MoL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func MoD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func TuB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func TuL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func TuD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func WeB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func WeL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func WeD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func ThB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func ThL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func ThD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func FrB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func FrL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func FrD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SaB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SaL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SaD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SuB(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SuL(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    @IBAction func SuD(_ sender: UIButton) {
        ButtonTapped(sender)
    }
    

    //VIEWDIDLOAD Parameters
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide the Navigation Bar on the screen
        self.navigationController?.isNavigationBarHidden = false
        
        //Define the Title for the page
        self.title = "~~~Weekly Menu~~~"
        
        //Enable the buttons to edit
        self.navigationItem.rightBarButtonItem = self.editButton
        
        //Fetch Stored Weekly Menu from Device and Display
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.MonB.text = WeekMenu.getMenu(forDay:"Monday", forMeal: "Breakfast")?.meal ?? ""
        self.MonL.text = WeekMenu.getMenu(forDay:"Monday", forMeal: "Lunch")?.meal ?? ""
        self.MonD.text = WeekMenu.getMenu(forDay:"Monday", forMeal: "Dinner")?.meal ?? ""
        self.TueB.text = WeekMenu.getMenu(forDay:"Tuesday", forMeal: "Breakfast")?.meal ?? ""
        self.TueL.text = WeekMenu.getMenu(forDay:"Tuesday", forMeal: "Lunch")?.meal ?? ""
        self.TueD.text = WeekMenu.getMenu(forDay:"Tuesday", forMeal: "Dinner")?.meal ?? ""
        self.WedB.text = WeekMenu.getMenu(forDay:"Wednesday", forMeal: "Breakfast")?.meal ?? ""
        self.WedL.text = WeekMenu.getMenu(forDay:"Wednesday", forMeal: "Lunch")?.meal ?? ""
        self.WedD.text = WeekMenu.getMenu(forDay:"Wednesday", forMeal: "Dinner")?.meal ?? ""
        self.ThuB.text = WeekMenu.getMenu(forDay:"Thursday", forMeal: "Breakfast")?.meal ?? ""
        self.ThuL.text = WeekMenu.getMenu(forDay:"Thursday", forMeal: "Lunch")?.meal ?? ""
        self.ThuD.text = WeekMenu.getMenu(forDay:"Thursday", forMeal: "Dinner")?.meal ?? ""
        self.FriB.text = WeekMenu.getMenu(forDay:"Friday", forMeal: "Breakfast")?.meal ?? ""
        self.FriL.text = WeekMenu.getMenu(forDay:"Friday", forMeal: "Lunch")?.meal ?? ""
        self.FriD.text = WeekMenu.getMenu(forDay:"Friday", forMeal: "Dinner")?.meal ?? ""
        self.SatB.text = WeekMenu.getMenu(forDay:"Saturday", forMeal: "Breakfast")?.meal ?? ""
        self.SatL.text = WeekMenu.getMenu(forDay:"Saturday", forMeal: "Lunch")?.meal ?? ""
        self.SatD.text = WeekMenu.getMenu(forDay:"Saturday", forMeal: "Dinner")?.meal ?? ""
        self.SunB.text = WeekMenu.getMenu(forDay:"Sunday", forMeal: "Breakfast")?.meal ?? ""
        self.SunL.text = WeekMenu.getMenu(forDay:"Sunday", forMeal: "Lunch")?.meal ?? ""
        self.SunD.text = WeekMenu.getMenu(forDay:"Sunday", forMeal: "Dinner")?.meal ?? ""
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //Disable UIButton by default
        self.MondB.isEnabled = false
        self.MondL.isEnabled = false
        self.MondD.isEnabled = false
        self.TuesB.isEnabled = false
        self.TuesL.isEnabled = false
        self.TuesD.isEnabled = false
        self.WedsB.isEnabled = false
        self.WedsL.isEnabled = false
        self.WedsD.isEnabled = false
        self.ThurB.isEnabled = false
        self.ThurL.isEnabled = false
        self.ThurD.isEnabled = false
        self.FridB.isEnabled = false
        self.FridL.isEnabled = false
        self.FridD.isEnabled = false
        self.SatuB.isEnabled = false
        self.SatuL.isEnabled = false
        self.SatuD.isEnabled = false
        self.SundB.isEnabled = false
        self.SundL.isEnabled = false
        self.SundD.isEnabled = false
        
        
    }
    
    @IBAction func editEnable(_ sender: Any) {
        // Alert stating Changes can be made
        let alert = UIAlertController(title: "Message for Chona",
                                      message: "Time to change the Menu for Next Week",
                                      preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
        present(alert, animated: true, completion: {

           
            //Enable Button capabilities
            self.MondB.isEnabled = true
            self.MondL.isEnabled = true
            self.MondD.isEnabled = true
            self.TuesB.isEnabled = true
            self.TuesL.isEnabled = true
            self.TuesD.isEnabled = true
            self.WedsB.isEnabled = true
            self.WedsL.isEnabled = true
            self.WedsD.isEnabled = true
            self.ThurB.isEnabled = true
            self.ThurL.isEnabled = true
            self.ThurD.isEnabled = true
            self.FridB.isEnabled = true
            self.FridL.isEnabled = true
            self.FridD.isEnabled = true
            self.SatuB.isEnabled = true
            self.SatuL.isEnabled = true
            self.SatuD.isEnabled = true
            self.SundB.isEnabled = true
            self.SundL.isEnabled = true
            self.SundD.isEnabled = true

        })
    }
    
    
    @objc func ButtonTapped(_ sender: UIButton)
    {
        
        
        // Create an alert
        let alert = UIAlertController(
            title: "What to cook?",
            message: "Add The Name Of The Dish:",
            preferredStyle: .alert)
        
        // Add a text field to the alert for the new item's title
        alert.addTextField(configurationHandler: nil)
        
        // Add a "cancel" button to the alert. This one doesn't need a handler
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // Add a "OK" button to the alert. The handler calls addNewToDoItem()
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            if let Dish = alert.textFields?[0].text {
            
                if sender == self.MondB {
                self.MonB.text = Dish
                    self.createWeekMenu(sender: sender)
                }
                else if sender == self.MondL
                {
                self.MonL.text = Dish
                }
            else if sender == self.MondD
            {
                self.MonD.text = Dish
                }
            else if sender == self.TuesB
            {
                self.TueB.text = Dish
                }
            else if sender == self.TuesL
            {
                self.TueL.text = Dish
                }
            else if sender == self.TuesD
            {
                self.TueD.text = Dish
                }
            else if sender == self.WedsB
            {
                self.WedB.text = Dish
                }
            else if sender == self.WedsL
            {
                self.WedL.text = Dish
                }
            else if sender == self.WedsD
            {
                self.WedD.text = Dish
                }
            else if sender == self.ThurB
            {
                self.ThuB.text = Dish
                }
            else if sender == self.ThurL
            {
                self.ThuL.text = Dish
                }
            else if sender == self.ThurD
            {
                self.ThuD.text = Dish
                }
            else if sender == self.FridB
            {
                self.FriB.text = Dish
                }
            else if sender == self.FridL
            {
                self.FriL.text = Dish
                }
            else if sender == self.FridD
            {
                self.FriD.text = Dish
                }
            else if sender == self.SatuB
            {
                self.SatB.text = Dish
                }
            else if sender == self.SatuL
            {
                self.SatL.text = Dish
                }
            else if sender == self.SatuD
            {
                self.SatD.text = Dish
                }
            else if sender == self.SundB
            {
                self.SunB.text = Dish
                }
            else if sender == self.SundL
            {
                self.SunL.text = Dish
                }
            else if sender == self.SundD
            {
                self.SunD.text = Dish
                }
            }}))
        
        // Present the alert to the user
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
   //Saving the data
    func createWeekMenu(sender: Any?) {
        let mealButton = sender as! UIButton
            if mealButton == self.MondB {
                // look up weekMenu for MonB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "MON", forMeal: "B") {
                    weekMenu.meal = self.MonB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "MON", forMeal: "B")
                    newWeekMenu.meal = self.MonB.text
                }
            }
              else if mealButton == self.MondL {
                    // look up weekMenu for MonL
                    // if found update it, if not found create it
                    if let weekMenu = WeekMenu.getMenu(forDay: "MON", forMeal: "L") {
                        weekMenu.meal = self.MonL.text
                    } else {
                        let newWeekMenu = WeekMenu.create(forDay: "MON", forMeal: "L")
                        newWeekMenu.meal = self.MonL.text
                    }
            }
            else if mealButton == self.MondD {
                // look up weekMenu for MonD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "MON", forMeal: "D") {
                    weekMenu.meal = self.MonD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "MON", forMeal: "D")
                    newWeekMenu.meal = self.MonD.text
                }
            }
            else if mealButton == self.TuesB {
                // look up weekMenu for TueB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "TUE", forMeal: "B") {
                    weekMenu.meal = self.TueB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "TUE", forMeal: "B")
                    newWeekMenu.meal = self.TueB.text
                }
            }
            else if mealButton == self.TuesL {
                // look up weekMenu for TueL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "TUE", forMeal: "L") {
                    weekMenu.meal = self.TueL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "TUE", forMeal: "L")
                    newWeekMenu.meal = self.TueL.text
                }
            }
                else if mealButton == self.TuesD {
                // look up weekMenu for TueD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "TUE", forMeal: "D") {
                weekMenu.meal = self.TueD.text
                } else {
                let newWeekMenu = WeekMenu.create(forDay: "TUE", forMeal: "D")
                newWeekMenu.meal = self.TueD.text
                }
            }
            else if mealButton == self.WedsB {
                // look up weekMenu for WedB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "WED", forMeal: "B") {
                    weekMenu.meal = self.WedB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "WED", forMeal: "B")
                    newWeekMenu.meal = self.WedB.text
                }
            }
            else if mealButton == self.WedsL {
                // look up weekMenu for WedL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "WED", forMeal: "L") {
                    weekMenu.meal = self.WedL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "WED", forMeal: "L")
                    newWeekMenu.meal = self.WedL.text
                }
            }
            else if mealButton == self.WedsD {
                // look up weekMenu for WedD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "WED", forMeal: "D") {
                    weekMenu.meal = self.WedD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "WED", forMeal: "D")
                    newWeekMenu.meal = self.WedD.text
                }
        }
            else if mealButton == self.ThurB {
                // look up weekMenu for ThuB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "THU", forMeal: "B") {
                    weekMenu.meal = self.ThuB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "THU", forMeal: "B")
                    newWeekMenu.meal = self.ThuB.text
                }
        }
            else if mealButton == self.ThurL {
                // look up weekMenu for ThuL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "THU", forMeal: "L") {
                    weekMenu.meal = self.ThuL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "THU", forMeal: "L")
                    newWeekMenu.meal = self.ThuL.text
                }
        }
            else if mealButton == self.ThurD {
                // look up weekMenu for ThuD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "THU", forMeal: "D") {
                    weekMenu.meal = self.ThuD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "THU", forMeal: "D")
                    newWeekMenu.meal = self.ThuD.text
                }
        }
            else if mealButton == self.FridB {
                // look up weekMenu for FriB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "FRI", forMeal: "B") {
                    weekMenu.meal = self.FriB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "FRI", forMeal: "B")
                    newWeekMenu.meal = self.FriB.text
                }
        }
            else if mealButton == self.FridL {
                // look up weekMenu for FriL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "FRI", forMeal: "L") {
                    weekMenu.meal = self.FriL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "FRI", forMeal: "L")
                    newWeekMenu.meal = self.FriL.text
                }
        }
            else if mealButton == self.FridD {
                // look up weekMenu for FriD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "FRI", forMeal: "D") {
                    weekMenu.meal = self.FriD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "FRI", forMeal: "D")
                    newWeekMenu.meal = self.FriD.text
                }
        }
            else if mealButton == self.SatuB {
                // look up weekMenu for SatB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SAT", forMeal: "B") {
                    weekMenu.meal = self.SatB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SAT", forMeal: "B")
                    newWeekMenu.meal = self.SatB.text
                }
        }
            else if mealButton == self.SatuL {
                // look up weekMenu for SatL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SAT", forMeal: "L") {
                    weekMenu.meal = self.SatL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SAT", forMeal: "L")
                    newWeekMenu.meal = self.SatL.text
                }
        }
            else if mealButton == self.SatuD {
                // look up weekMenu for SatD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SAT", forMeal: "D") {
                    weekMenu.meal = self.SatD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SAT", forMeal: "D")
                    newWeekMenu.meal = self.SatD.text
                }
        }
            else if mealButton == self.SundB {
                // look up weekMenu for SunB
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SUN", forMeal: "B") {
                    weekMenu.meal = self.SunB.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SUN", forMeal: "B")
                    newWeekMenu.meal = self.SunB.text
                }
        }
            else if mealButton == self.SundL {
                // look up weekMenu for SunL
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SUN", forMeal: "L") {
                    weekMenu.meal = self.SunL.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SUN", forMeal: "L")
                    newWeekMenu.meal = self.SunL.text
                }
        }
            else if mealButton == self.SundD {
                // look up weekMenu for SunD
                // if found update it, if not found create it
                if let weekMenu = WeekMenu.getMenu(forDay: "SUN", forMeal: "D") {
                    weekMenu.meal = self.SunD.text
                } else {
                    let newWeekMenu = WeekMenu.create(forDay: "SUN", forMeal: "D")
                    newWeekMenu.meal = self.SunD.text
                }
        }
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        try! context.save()
    }
}

//@available(iOS 10.0, *)
//func retrieveWeeklyMenu() -> WeekMenu? {
//
//    let appDelegate = UIApplication.shared.delegate as! AppDelegate
//
//    let managedContext = appDelegate.persistentContainer.viewContext
//
//    let fetchRequest = NSFetchRequest<WeekMenu>(entityName: "WeekMenu")
//    var menus: [WeekMenu]
//    do
//    {
//       menus = try managedContext.fetch(fetchRequest)
//        if menus.isEmpty {
//            return nil
//        }
//        else if menus.count == 1 {
//            return menus.first
//        }
//        else {
//            print ("More than 1 menu item")
//            return nil
//        }
//    }
//    catch {
//        print("Unable to fetch Data")
//    }
//    return nil
//}
//
