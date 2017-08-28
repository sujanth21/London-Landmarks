//
//  DetailViewController.swift
//  London Landmarks
//
//  Created by Sujanth Sebamalaithasan on 28/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var landmarkName: String!
    var landmarkImage: String!
    var landmarkSubtitle: String!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = landmarkName
        imageView.image = UIImage(named: landmarkImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
