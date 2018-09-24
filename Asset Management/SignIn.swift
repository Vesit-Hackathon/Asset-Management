//
//  SignIn.swift
//  Asset Management
//
//  Created by Mohit on 24/09/18.
//  Copyright © 2018 Mohit. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class SignIn: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        
        SVProgressHUD.show()
//        Auth.auth().signIn(withEmail: userName.text!, password: password.text!) { (user, error) in
//            if error != nil {
//                print(error)
//            }
//            else{
//                print("SignIn in  Successfull.")
//                SVProgressHUD.dismiss()
//                self.performSegue(withIdentifier: "goToStudent", sender: self)
//            }
//        }
        
        
        if userName.text == "student@gmail.com" && password.text == "123456" || userName.text == "teacher@gmail.com" && password.text == "123456"{
            print("SignIn in  Successfull.")
            SVProgressHUD.dismiss()
            self.performSegue(withIdentifier: "goToStudent", sender: self)
        }
        else if userName.text == "lab@gmail.com" && password.text == "123456" || userName.text == "hod@gmail.com" && password.text == "123456"{
                print("SignIn in  Successfull.")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHod", sender: self)
        }
        else{
            SVProgressHUD.dismiss()
            let alertController = UIAlertController(title: "Sorry", message:
                "Wrong Password", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
