//
//  ViewController.swift
//  Destiny-App
//
//  Created by Tatiana Zudina on 20.04.2023.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var storyLabel: UILabel!
	@IBOutlet weak var firstBtn: UIButton!
	@IBOutlet weak var secondBtn: UIButton!
	
	var stories = StoryBrain()
	
	var numberOfStory = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		updateUI()
	}
	
	@IBAction func choiceMade(_ sender: UIButton) {
		
		stories.nextStory(userChoice: sender.currentTitle!)
		
		updateUI()
	}
	
	func updateUI() {
		storyLabel.text = stories.getStoryTitle()
		firstBtn.setTitle(stories.getChoice1(), for: .normal)
		secondBtn.setTitle(stories.getChoice2(), for: .normal)	}
	
}

