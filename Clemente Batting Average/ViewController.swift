//
//  ViewController.swift
//  Clemente Batting Average
//
//  Created by Armando Borelli on 10/31/19.
//  Copyright © 2019 Armando Borelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var clementeLabel: UILabel!
    
    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet weak var yearPickerView: UIPickerView!
    
    
    // Is displayed in the Picker View
    private let pickerYears = ["1955", "1956", "1957", "1958", "1959", "1960", "1961", "1962", "1963", "1964", "1965", "1966", "1967", "1968", "1969", "1970", "1971", "1972"]
    
    // Displayed in the Output Label
    private let pickerAvgs = [".255", ".311", ".252", ".289", ".296", ".314", ".351", ".312", ".320", ".339", ".329", ".316", ".357", ".290", ".345", ".351", ".340", ".312"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Assign picker view delegates. More info: https://codewithchris.com/uipickerview-example/
        self.yearPickerView.delegate = self
        self.yearPickerView.dataSource = self
    
    }
    
    // Not sure why this is needed but...
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  
}

// This is called so we can use the methods from UIPickerView
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    // How many columns in the picker view. As many as elements in list
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    // How many rows in picker view. Rows are vertical
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerYears.count
        
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerYears[row]
        
    }
    
    // Capture the picker view selection as a index. Pass that index into an array and display the element in the array at the pick index. For more info: YT/playlist/ios-dev/pickerView-video
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
 
        return outputLabel.text = pickerAvgs[row]   // User-pick index is passed into pickerAvgs array, and that element in the index in pickerAvgs array will be display in the outputLabel
        
    }
    
    // Dk
    func pickerViewTitle(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerYears[row]
        
    }
    
        
}

