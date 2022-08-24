import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var smileLabel: UILabel!
    
    var smileLabelText: String!
    
    var delegate: SecondViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smileLabel.text = smileLabelText
    }

    @IBAction func goBackButtonPressed() {
        let textFieldValue = textField.text
        delegate.setLabelText(for: textFieldValue!)
        
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        textField.endEditing(true)
    }
}

