//
//  SecondViewController.swift
//  SecondTry
//
//  Created by 张濛西 on 16/2/27.
//  Copyright © 2016年 张濛西. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var firstLine: UILabel!
    @IBOutlet weak var secondLine: UILabel!
    @IBOutlet weak var thirdLine: UILabel!
    @IBOutlet weak var fourthLine: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstLine.hidden = true
        secondLine.hidden = true
        thirdLine.hidden = true
        fourthLine.hidden = true
        textField.hidden = true
        button.hidden = true
        
        
        runAfterDelay(1.5) {
            self.firstLine.hidden = false
            
            self.runAfterDelay(1.5) {
                self.secondLine.hidden = false
                
                self.runAfterDelay(2) {
                    self.thirdLine.hidden = false
                    
                    self.runAfterDelay(3) {
                        self.fourthLine.hidden = false
                        
                        self.runAfterDelay(1.5) {
                            self.textField.hidden = false
                            self.button.hidden = false
                        }
                    }
                }
            }
        }
        
 
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    @IBAction func FinishSceneButton(sender: AnyObject) {
        
        PlayerModel.name = "" + self.textField.text!

        
        
    }
    
    // delay function
    func runAfterDelay(delay: NSTimeInterval, block: dispatch_block_t) {
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue(), block)
    }
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
        
}

