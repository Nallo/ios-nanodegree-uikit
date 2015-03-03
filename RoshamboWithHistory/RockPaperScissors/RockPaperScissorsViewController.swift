//
//  RockPaperScissorsViewController.swift
//  RockPaperScissors
//
//  Created by Gabrielle Miller-Messner on 10/30/14.
//  Copyright (c) 2014 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class RockPaperScissorsViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    var history = [RPSMatch]()

    @IBAction func makeYourMove(sender: UIButton) {
        
        switch (sender) {
        case self.rockButton:
            throwDown(RPS.Rock)
            
        case self.paperButton:
            throwDown(RPS.Paper)

        case self.scissorsButton:
            throwDown(RPS.Scissors)
        
        default:
            assert(false, "An unknown button is invoking makeYourMove()")
        }
    }
    
    func throwDown(playersMove: RPS)
    {
        let computersMove = RPS()
        let match = RPSMatch(p1: playersMove, p2: computersMove)
        
        // Add it to the history
        history.append(match)
        
        // Get the storyboard and ResultViewController
        var storyboard = UIStoryboard (name: "Main", bundle: nil)
        var resultVC = storyboard.instantiateViewControllerWithIdentifier("ResultViewController") as ResultViewController
        
        // Communicate the match
        resultVC.match = match
        
        self.presentViewController(resultVC, animated: true, completion: nil)
    }
    @IBAction func showHistory(sender: AnyObject) {
        
        let storyboard = self.storyboard
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("HistoryViewController") as HistoryViewController
        
        controller.history = self.history
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
}