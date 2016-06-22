//
//  HomeViewController.swift
//  CommonsSwift
//
//  Created by Mauro Olivo on 03/06/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Hello home!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func openCollectionView(sender: AnyObject) {
        self.navigationController?.pushViewController(CollectionViewController(nibName: "CollectionViewController", bundle: nil), animated: true)
    }

}
