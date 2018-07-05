import UIKit


class ViewController: UIViewController {

    var diceIndexOne = 0
    var diceIndexTwo = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func rollButtonAction(_ sender: UIButton) {
    updateDiceImages()
    }
    
    func updateDiceImages(){
        diceIndexOne = Int(arc4random_uniform(6))
        diceIndexTwo = Int(arc4random_uniform(6))
        diceImageViewOne.image = UIImage(named: diceArray[diceIndexOne])
        diceImageViewTwo.image = UIImage(named: diceArray[diceIndexTwo])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

