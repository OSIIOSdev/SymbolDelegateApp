//
//  ViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

protocol SecondViewControllerDelegate {
    func setLabelText(for textFieldValue: String)
}

final class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
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

//Необходимо, передать внесенное пользователем значение из текстового поля в лейбл на экране SecondVC и передать его при помощи делегирования в лейбл на первом экране. При этом при переходе на второй экран мы лейбл с первого экрана передаем в лейбл второго экрана уже при помощи prepare for

