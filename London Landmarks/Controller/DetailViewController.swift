//
//  DetailViewController.swift
//  London Landmarks
//
//  Created by Sujanth Sebamalaithasan on 28/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailViewTitle: UILabel!
    @IBOutlet weak var detailViewSubtitle: UILabel!
    @IBOutlet weak var detailViewDescription: UITextView!
    @IBOutlet weak var detailMapView: MKMapView!
    @IBOutlet weak var directionBtn: UIButton!
    
    
    
    var landmarkName: String!
    var landmarkImage: String!
    var landmarkSubtitle: String!
    var landmarkDescription: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = landmarkName
        imageView.image = UIImage(named: landmarkImage)
        detailViewTitle.text = landmarkName
        detailViewSubtitle.text = landmarkSubtitle
        detailViewDescription.text = landmarkDescription
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func directionBtnPressed(_ sender: UIButton) {
    }
    
}
