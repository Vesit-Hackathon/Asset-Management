//
//  HodLabRequest.swift
//  Asset Management
//
//  Created by Mohit on 24/09/18.
//  Copyright © 2018 Mohit. All rights reserved.
//

import UIKit

class HodLabRequest: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func AddButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message:
            "Item Added", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)

        
    }
    
    @IBAction func requestButton(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Alert", message:
            "Request Sent", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
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
