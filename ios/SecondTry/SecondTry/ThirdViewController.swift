//
//  File.swift
//  SecondTry
//
//  Created by 张濛西 on 16/2/28.
//  Copyright © 2016年 张濛西. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var firstLine: UILabel!
    @IBOutlet weak var secondLine: UILabel!
    @IBOutlet weak var thirdLine: UILabel!
    @IBOutlet weak var fourthLine: UILabel!
    @IBOutlet weak var fifthLine: UILabel!
    @IBOutlet weak var sixthLine: UILabel!
    @IBOutlet weak var seventhLine: UILabel!
    @IBOutlet weak var eighthLine: UILabel!
    @IBOutlet weak var ninthLine: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstLine.hidden = true
        secondLine.hidden = true
        thirdLine.hidden = true
        fourthLine.hidden = true
        fifthLine.hidden = true
        sixthLine.hidden = true
        seventhLine.hidden = true
        eighthLine.hidden = true
        ninthLine.hidden = true
        
        
        
        
        
        
        runAfterDelay(3) {
            self.secondLine.text = PlayerModel.name
            self.firstLine.hidden = false
            
            self.runAfterDelay(2) {
                self.secondLine.hidden = false
                
                self.runAfterDelay(4) {
                    self.thirdLine.hidden = false
                    
                    self.runAfterDelay(1.5) {
                        self.fourthLine.hidden = false
                        
                        self.runAfterDelay(3) {
                            self.fifthLine.hidden = false
                            
                            self.runAfterDelay(5) {
                                self.sixthLine.hidden = false
                                
                                self.runAfterDelay(1.5) {
                                    self.seventhLine.hidden = false
                                    
                                    self.runAfterDelay(3) {
                                        self.eighthLine.hidden = false
                                        
                                        self.runAfterDelay(2) {
                                            self.ninthLine.hidden = false
                                            
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
    
    
    
    // delay function
    func runAfterDelay(delay: NSTimeInterval, block: dispatch_block_t) {
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue(), block)
    }
    
    @IBAction func finishSceneButton(sender: AnyObject) {
    }
    
    
}

