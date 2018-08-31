//
//  GameListViewController.swift
//  GameFinder
//
//  Created by Trevor Burbidge on 8/29/18.
//  Copyright © 2018 tkburbidge. All rights reserved.
//

import UIKit

class GameListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Games"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    init() {
        super.init(nibName: "GameListViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Events
    @IBAction func addGameButtonTapped() {
        let gameViewController = GameViewController.init()
        
        let navigationController = UINavigationController.init()
        navigationController.pushViewController(gameViewController, animated: false)
        
        self.present(navigationController, animated: true, completion: nil)
    }

}
