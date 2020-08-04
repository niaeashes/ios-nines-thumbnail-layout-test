//
//  ViewController.swift
//  Nines
//
//  Created by Nia on 2020/08/04.
//  Copyright © 2020 niaeashes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        images.forEach { imageView in
            let gestureRecoginzier = UITapGestureRecognizer(target: self, action: #selector(self.tapImage(_:)))
            imageView.addGestureRecognizer(gestureRecoginzier)
        }
    }
    
    @IBOutlet weak var emptyView: UIView!
    @IBOutlet var images: Array<UIImageView> = []
    
    @objc func tapImage(_ sender: UITapGestureRecognizer) {
        sender.view?.isHidden = true
        emptyView.isHidden = !images.allSatisfy({ $0.isHidden })
    }
    
    @IBAction func tapRefresh() {
        images.forEach { $0.isHidden = false }
        emptyView.isHidden = !images.allSatisfy({ $0.isHidden })
    }
}

