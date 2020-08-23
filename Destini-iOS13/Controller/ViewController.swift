import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
  
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateStory()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice : sender.currentTitle!)
        updateStory()
    }
    
    func updateStory() {
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoiceOne(), for: [])
        choice2Button.setTitle(storyBrain.getChoiceTwo(), for: [])
    }
    
}

