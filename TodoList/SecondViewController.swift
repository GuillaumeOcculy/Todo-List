//
//  SecondViewController.swift
//  TodoList
//
//  Created by Guillaume on 01/06/16.
//  Copyright © 2016 Guillaume. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.delegate = self
    }
    
    @IBAction func addButton(sender: AnyObject) {
        
        todoList.append(textField.text!)
        
        NSUserDefaults.standardUserDefaults().setObject(todoList, forKey: "todoList")
        
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

