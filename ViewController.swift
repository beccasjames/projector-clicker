//
//  ViewController.swift
//  Projector-Clicker
//
//  Created by Becca James on 6/9/17.
//  Projector by Koen Voogd from the Noun Project
//  Copyright © 2017 Becca James. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    //MARK: Properties
    
    var projector : Projector?=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.projector = Projector(baseURL: "http://projector.paultag.house")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Actions
    
    @IBAction func onSelect(_ sender: UIButton) {
        self.projector?.powerOn()
    }
    
    @IBAction func offSelect(_ sender: UIButton) {
        self.projector?.powerOff()
    }
    
    @IBAction func upSelect(_ sender: UIButton) {
        self.projector?.volumeUp()
    }
        
    @IBAction func downSelect(_ sender: UIButton) {
        self.projector?.volumeDown()
    }
    
    @IBAction func muteSelect(_ sender: UIButton) {
        self.projector?.muteOn()
    }
        
    @IBAction func unmuteSelect(_ sender: UIButton) {
        self.projector?.muteOff()
    }
    
    @IBAction func freezeSelect(_ sender: UIButton) {
        self.projector?.freezeOn()
    }
    
    @IBAction func unfreezeSelect(_ sender: UIButton) {
        self.projector?.freezeOff()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
