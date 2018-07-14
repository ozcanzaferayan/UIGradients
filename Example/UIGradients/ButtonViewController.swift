//
//  ButtonViewController.swift
//  UIGradients_Example
//
//  Created by Özcan Zafer Ayan on 14.07.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import UIGradients
class ButtonViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let gradient = GradientType.facebook_messenger.gradientLayerFor(view: btn)
        btn.layer.insertSublayer(gradient, at: 0)
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
