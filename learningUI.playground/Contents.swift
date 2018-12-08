//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .red

        let titleLabel = UILabel()
        titleLabel.frame = CGRect(x: 15, y: 25, width: 272, height: 38)
        titleLabel.text = "Now, this is a fuckin' interface!"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.layer.shadowOpacity = 0.8
        titleLabel.layer.shadowOffset = CGSize(width: 0, height: 1)
        
        
        let captionLabel = UILabel()
        captionLabel.frame = CGRect(x: 15, y: 0, width: 200, height: 200)
        captionLabel.text = "This is a subtitle"
        captionLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)

        
        let cardView = UIView()
        cardView.frame = CGRect(x: 20, y: 255, width: 300, height: 250)
        cardView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        cardView.layer.cornerRadius = 10
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 10
        cardView.layer.borderColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        cardView.layer.borderWidth = 5
        
        let picture = UIImageView()
        picture.frame = CGRect(x: 20, y: 120, width: 100, height: 100)
        picture.image = UIImage(named: "appIcon.png")
        picture.clipsToBounds = true
        picture.layer.cornerRadius = 7
        picture.contentMode = .scaleAspectFit
        
        
        
        view.addSubview(cardView)
        cardView.addSubview(titleLabel)
        cardView.addSubview(picture)
        cardView.addSubview(captionLabel)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
