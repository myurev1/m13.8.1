//
//  ViewController.swift
//  m13.8
//
//  Created by Максим Юрьев on 10.02.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showAllertMessage(_ sender: Any) {
        let alm = AlertMessage()
        button.addAction(UIAction(handler: { [weak self] _ in
            let alert = alm.createAlert(windowName: .profile)
            self?.present(alert, animated: true, completion: nil)
        }), for: .touchUpInside)
        view.addSubview(button)
    }
}

