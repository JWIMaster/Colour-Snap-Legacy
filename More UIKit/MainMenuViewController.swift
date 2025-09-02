import UIKit

let colors: [UIColor] = [.red, .blue, .green, .orange, .purple]

class MainMenuViewController: UIViewController {
    let startButton = UIButton(type: .custom)
    let gameTitle = UILabel()
    var myColourChanger = colourChanger()
    
    var backgroundView = UIView()
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        backgroundView.frame = view.bounds
        
        self.view.backgroundColor = .clear
        
        myColourChanger.backgroundColourChanger()
        myColourChanger.titleColourChanger()
        
        
        
        backgroundView.backgroundColor = UIColor(red: .random(in: 0...0.5), green: .random(in:0...0.5), blue: .random(in:0...0.5))
        
        myColourChanger.onBackgroundColourChange = { newColour in
            self.backgroundView.backgroundColor = newColour
        }
        view.addSubview(backgroundView)
        
        gameTitle.text = "Colour Snap!"
        gameTitle.backgroundColor = .clear
        gameTitle.textColor = UIColor(red: .random(in: 0.5...1), green: .random(in: 0.5...1), blue: .random(in: 0.5...1))
        
        myColourChanger.onTitleColourChange = { newColour in
            self.gameTitle.textColor = newColour
        }
        
        gameTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gameTitle)
        
        
        startButton.setTitle("Play", for: .normal)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.backgroundColor = UIColor.gray.colorWithAlphaComponent(0.4)
        startButton.layer.cornerRadius = (self.view.frame.width * 0.25) / 2
        startButton.layer.shadowRadius = 5
        startButton.layer.shadowColor = UIColor.black.CGColor
        startButton.layer.shadowOpacity = 0.5
        startButton.adjustsImageWhenHighlighted = false
        
        startButton.addAction(for: .TouchUpInside) {
            let gameVC = GameViewController()
            gameVC.modalTransitionStyle = .crossDissolve
            self.presentViewController(gameVC, animated: true, completion: nil)
        }
        
        view.addSubview(startButton)
        view.bringSubviewToFront(startButton)
        view.layoutIfNeeded()
        
        setupConstraints()
        
        fadeFromBlack(view, offset: 0, fadeTime: 1)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        startButton.titleLabel?.font = UIFont.systemFontOfSize(startButton.frame.width*0.25)
        gameTitle.font = UIFont.systemFontOfSize(view.frame.width*0.1)
        
    }
    
    
    
    func setupConstraints() {
        //Start Button Constraints
        view.addConstraint(NSLayoutConstraint(item: startButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: startButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: startButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.25, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: startButton, attribute: .height, relatedBy: .equal, toItem: startButton, attribute: .width, multiplier: 1, constant: 0))
        
        //Game Title Constraints
        view.addConstraint(NSLayoutConstraint(item: gameTitle, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: gameTitle, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: view.frame.height*0.15))
    }
    
    func fadeFromBlack(inputView: UIView, offset: Double, fadeTime: Double) {
        inputView.alpha = 0
        DispatchQueue.main.asyncAfter(deadline: .now() + offset) {
            withAnimation(fadeTime, animation: .CurveEaseInOut) {
                inputView.alpha = 1
            }
        }
    }
}









