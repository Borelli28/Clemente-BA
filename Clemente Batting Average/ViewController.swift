//
//  ViewController.swift
//  Clemente Batting Average
//
//  Created by Armando Borelli on 10/31/19.
//  Copyright © 2019 Armando Borelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{


    @IBOutlet weak var clementeLabel: UILabel!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    //func when button is pressed
    @IBAction func button(_ sender: Any)
    {
    
        //save the user input in the text field to: user_input
        let user_input = textField.text!
        
        
         var output = ""
         
                
        //display error label text
         errorLabel.text = ""
        
         if user_input == "1955"
         {
             let sum = ".255"
             output = sum
         }

         else if user_input == "1956"
         {
             let sum = ".311"
             output = sum
         }

         else if user_input == "1957"
         {
             let sum = ".252"
             output = sum
         }

         else if user_input == "1958"
         {
             let sum = ".289"
             output = sum
         }

         else if user_input == "1959"
         {
             let sum = ".296"
             output = sum
         }

         else if user_input == "1960"
         {
             let sum = ".314"
             output = sum
         }

         else if user_input == "1961"
         {
             let sum = ".351"
             output = sum
         }

         else if user_input == "1962"
         {
             let sum = ".312"
             output = sum
         }

         else if user_input == "1963"
         {
             let sum = ".320"
             output = sum
         }

         else if user_input == "1964"
         {
             let sum = ".339"
             output = sum
         }

         else if user_input == "1965"
         {
             let sum = ".329"
             output = sum
         }

         else if user_input == "1966"
         {
             let sum = ".316"
             output = sum
         }

         else if user_input == "1967"
         {
             let sum = ".357"
             output = sum
         }

         else if user_input == "1968"
         {
             let sum = ".290"
             output = sum
         }

         else if user_input == "1969"
         {
             let sum = ".345"
             output = sum
         }

         else if user_input == "1970"
         {
             let sum = ".351"
             output = sum
         }

         else if user_input == "1971"
         {
             let sum = ".340"
             output = sum
         }

         else if user_input == "1972"
         {
             let sum = ".312"
             output = sum
         }
         
         else if ["borelli", "Borelli"].contains(user_input)
         {
            clementeLabel.text = "Roberto " + "\"" + "Momen" + "\"" + " Clemente"
            output = "#21"
         }

         else if user_input.isEmpty
         {
            output = " "
         } else{
            errorLabel.text = "ERROR: Invalid input | " + "Enter a Year from: 1955 - 1972"}
         
         
        
         //display the year BA of the user input to the output label
         outputLabel.text = output
        
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
