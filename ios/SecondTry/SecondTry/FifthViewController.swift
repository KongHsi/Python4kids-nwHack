//
//  FifthViewController.swift
//  SecondTry
//
//  Created by 张濛西 on 16/2/28.
//  Copyright © 2016年 张濛西. All rights reserved.
//
import UIKit

class FifthViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var firstLine: UILabel!
    @IBOutlet weak var secondLine: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var botButton: UIButton!
    @IBOutlet weak var textField: UITextView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstLine.hidden = true
        secondLine.hidden = true
        topButton.hidden = true
        botButton.hidden = true
        textField.hidden = true
        
        
        
        // Assign value to text field
        // And show different components in order
        var lastChar:Character = "a"
        runAfterDelay(2) {
            lastChar = PlayerModel.string.characters.last!
        
            self.runAfterDelay(4.5) {
                if (PlayerModel.string[0].unicodeScalarCodePoint() != 34 ||
                    lastChar.unicodeScalarCodePoint() != 34){
                
                    self.textField.text = "Please wrap the string with \"\" (double qutation marks)"
        
            
                }else{
                    self.textField.text = PlayerModel.string
                }
            }
        
        
         
            self.runAfterDelay(0.5) {
                self.firstLine.hidden = false
                
         
                self.runAfterDelay(2) {
                    self.firstLine.text = "This is Pi and " + PlayerModel.name
                    
                    self.runAfterDelay(1.5) {
                        self.secondLine.hidden = false
                        
                        self.runAfterDelay(3) {
                            self.firstLine.text = "From console:"
                            self.secondLine.hidden = true
                            
                            self.runAfterDelay(1.5) {
                                self.topButton.hidden = false
                                self.botButton.hidden = false
                                self.textField.hidden = false
                                
                            
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
    
    
    // extension for string
    
    
    
    
}

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start: start, end: end)]
    }
}

extension Character
{
    func unicodeScalarCodePoint() -> UInt32
    {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex].value
    }
}


