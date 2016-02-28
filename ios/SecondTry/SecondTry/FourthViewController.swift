//
//  FourthViewController.swift
//  SecondTry
//
//  Created by 张濛西 on 16/2/28.
//  Copyright © 2016年 张濛西. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var topLine: UILabel!
    @IBOutlet weak var botLine: UILabel!
    @IBOutlet weak var stringLine: UILabel!
    @IBOutlet weak var printLine: UILabel!
    @IBOutlet weak var valueTextField: UITextView!
    @IBOutlet weak var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLine.hidden = true
        stringLine.hidden = true
        printLine.hidden = true
        valueTextField.hidden = true
        button.hidden = true
        
        runAfterDelay(5) {
            self.topLine.hidden = false
            
            self.runAfterDelay(2) {
                self.botLine.text = "Hello World!"
                
                self.runAfterDelay(3) {
                    self.topLine.text = "To make such a string, we use:"
                    
                    self.runAfterDelay(3) {
                        self.botLine.text = "string = \"Hellow World!\""
                        
                        self.runAfterDelay(5) {
                            self.topLine.text = "Try it"
                            self.botLine.hidden = true
                            
                            self.runAfterDelay(0.5) {
                                self.stringLine.hidden = false
                                
                                self.runAfterDelay(0.5) {
                                    self.valueTextField.hidden = false
                                    
                                    self.runAfterDelay(0.5) {
                                        self.printLine.hidden = false
                                        
                                        self.runAfterDelay(0.5) {
                                            self.button.hidden = false
                                            
                                            
                                        }
                                    }
                                }
                            }
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
    
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    // delay function
    func runAfterDelay(delay: NSTimeInterval, block: dispatch_block_t) {
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue(), block)
    }
    
    
    @IBAction func toNextScene(sender: AnyObject) {
        PlayerModel.string = "" + self.valueTextField.text!
        
    }
    
}

