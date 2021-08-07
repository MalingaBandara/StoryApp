//
//  ViewController.swift
//  Story
//
//  Created by Malinga on 2021-08-07.
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
        
        storyBrain.ChangaToNextStory(userAnswer: sender.currentTitle!)// get user answer for change story
        updateUI()// for "updateUI()"
    }
    
    func updateUI(){
       storyLabel.text = storyBrain.getStoryTitle()
       choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
       choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
   }
}

