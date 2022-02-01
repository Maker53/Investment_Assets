//
//  ViewController.swift
//  Investment_Assets
//
//  Created by Станислав on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {

    private var share: Share!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.shared.fetch(from: Link.api.rawValue) { result in
            switch result {
            case .success(let share):
                self.share = share
            case .failure(let error):
                print(error)
            }
        }
    }
}
