//
//  ViewController.swift
//  FoodTracker
//
//  Created by thanh.ly@philips.com on 21/07/16.
//  Copyright © 2016 thanh.ly@philips.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    // MARK : properties 
    
    
    @IBOutlet weak var textFieldMealName: UITextField!
    

    @IBOutlet weak var lblMealName: UILabel!
    
    
    @IBOutlet weak var btnDefaultLabelText: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print ("View did load!!!")
        
        textFieldMealName.delegate = self ;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print ("View did receive memory warning !!!")
    }
    
    
    // MARK : ACTIONS 
    
    

    @IBAction func btnDefaultLabelText(sender: UIButton) {
        
        print ("button clicked!!!")
        lblMealName.text = "Button clicked!!!"
        
    }
    
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        print ("text field did end editing !!!")
        
        lblMealName.text = textField.text
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        print ("text field should return ")
        // hide the keyboard
        textFieldMealName.resignFirstResponder()
        
        return true ;
        //
    }

}

