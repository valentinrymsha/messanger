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
        view.backgroundColor = .white
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLogged = UserDefaults.standard.bool(forKey: "loggedIn ")
        
        if !isLogged {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen 
            nav.navigationBar.backgroundColor = .white
            present(nav, animated: false)
        }
    }
    
    
}

