//
//  ViewController.swift
//  RetainCycleARC
//
//  Created by Whoami on 16.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var sean: Person?
    var matilda: MacBook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createObjects()
        
    }
    
    func createObjects() {
        sean = Person(name: "Sean", macbook: nil)
        matilda = MacBook(name: "Matilda", owner: nil)
    }
    
    func assignProperties() {
        sean?.macbook = matilda
        matilda?.owner = sean
        
        sean = nil
        matilda = nil
    }
}

