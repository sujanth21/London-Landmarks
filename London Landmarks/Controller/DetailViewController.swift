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
    var landmarkLatitude: Double!
    var landmarkLongitude: Double!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = landmarkName
        imageView.image = UIImage(named: landmarkImage)
        detailViewTitle.text = landmarkName
        detailViewSubtitle.text = landmarkSubtitle
        detailViewDescription.text = landmarkDescription
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(landmarkLatitude, landmarkLongitude), span: span)
        detailMapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(landmarkLatitude, landmarkLongitude)
        let pinAnnotation = MKPointAnnotation()
        pinAnnotation.coordinate = pinLocation
        pinAnnotation.title = detailViewTitle.text
        pinAnnotation.subtitle = detailViewSubtitle.text
        detailMapView.addAnnotation(pinAnnotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func directionBtnPressed(_ sender: UIButton) {
    }
    
}
