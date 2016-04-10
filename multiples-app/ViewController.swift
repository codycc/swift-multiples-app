//
//  ViewController.swift
//  multiples-app
//
//  Created by Cody Condon on 2016-04-10.
//  Copyright © 2016 Cody Condon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties 
    var maxAmount = 300
    var currentAmount = 0
    var multipleToAddBy = 0
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var multiplesInput: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var multiplesOutput: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onAddTapped(sender: UIButton!) {
        currentAmount += multipleToAddBy
        multiplesOutput.text = "\(currentAmount) + \(multipleToAddBy) = \(currentAmount + multipleToAddBy)"
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onGameStart(sender: UIButton!) {
        if multiplesInput.text != nil && multiplesInput.text != "" {
            logoImg.hidden = true
            multiplesInput.hidden = true
            playBtn.hidden = true
            
            multiplesOutput.hidden = false
            addBtn.hidden = false
            multipleToAddBy =  Int(multiplesInput.text!)!
            currentAmount  = 0
            
            multiplesOutput.text = "\(currentAmount)"
        }
        
    }
    
    func restartGame() {
        logoImg.hidden = false
        multiplesInput.hidden = false
        playBtn.hidden = false
        
        multiplesOutput.hidden = true
        addBtn.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentAmount >= maxAmount {
            return true
        } else {
            return false
        }
    }


}

