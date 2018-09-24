//
//  ViewController.swift
//  Asset Management
//
//  Created by Mohit on 23/09/18.
//  Copyright © 2018 Mohit. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var picker: UIPickerView!
    
    let position = ["Student","Teacher","Lab Assistant","H.O.D", "Principal", "Purchase Officer"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return position.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return position[row]
          }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        positionSelected = position[row]
//    }
    
    
    @IBAction func SignUpButton(_ sender: UIButton) {
        
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailId.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil{
                print(error)
            }
            else{
                //success
                print("Registration SUccessfull")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToSignIn", sender: self)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

