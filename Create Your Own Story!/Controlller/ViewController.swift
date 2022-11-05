//
//  ViewController.swift
//  Create Your Own Story!
//
//  Created by Mahmut Şenbek on 4.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyTextLabel: UILabel!
    
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        storyTextLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    

}
