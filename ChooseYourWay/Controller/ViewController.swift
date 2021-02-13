//
//  ViewController.swift
//  ChooseYourWay
//
//  Created by Cem Eke on 8.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        theEnd()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getStoryChoice1(), for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.getStoryChoice2(), for: UIControl.State.normal)
    }
    
    func theEnd(){
        if choice1Button.currentTitle == "The" {
            choice1Button.isUserInteractionEnabled = false
            choice2Button.isUserInteractionEnabled = false
        }
    }
}

