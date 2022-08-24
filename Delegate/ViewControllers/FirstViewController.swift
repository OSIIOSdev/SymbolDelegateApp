import UIKit

protocol SecondViewControllerDelegate {
    func setLabelText(for textFieldValue: String)
}

final class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        
        secondVC.smileLabelText = smileLabel.text
        
        secondVC.delegate = self
    }
}

extension FirstViewController: SecondViewControllerDelegate {
    func setLabelText(for textFieldValue: String) {
        smileLabel.text = textFieldValue
    }
}
