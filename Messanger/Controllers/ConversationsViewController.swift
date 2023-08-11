//
//  ViewController.swift
//  Messanger
//
//  Created by Valentin on 9.08.23.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLogged = UserDefaults.standard.bool(forKey: "loggedIn ")
        
        if !isLogged {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen 
            nav.navigationBar.backgroundColor = .lightGray.withAlphaComponent(0.1)
            present(nav, animated: false)
        }
    }
    
    
}

