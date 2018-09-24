//
//  LabHodMenu.swift
//  Asset Management
//
//  Created by Mohit on 24/09/18.
//  Copyright © 2018 Mohit. All rights reserved.
//

import UIKit

class LabHodMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        let alertController = UIAlertController(title: "Alert", message:
            "You have new request from student", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
//        var timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(update), userInfo: nil, repeats: false)
        // Dispose of any resources that can be recreated.
    }
    
//    @objc func update(){
//        let alertController = UIAlertController(title: "Alert", message:
//            "You have new request from student", preferredStyle: UIAlertControllerStyle.alert)
//        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
//
//        self.present(alertController, animated: true, completion: nil)
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
