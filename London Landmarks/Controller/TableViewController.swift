//
//  TableViewController.swift
//  London Landmarks
//
//  Created by Sujanth Sebamalaithasan on 27/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var imageList = ["BigBen", "BuckinghamPalace", "LondonEye", "St-Pauls", "TowerBridge", "WestminsterAbbey"]
    var titleList = ["Big Ben", "Buckingham Palace", "London Eye", "St-Pauls Cathedral", "Tower Bridge", "Westminster Abbey"]
    var subtitle = ["London SW1A 0AA, UK", "London SW1A 1AA, UK", "London SE1 7PB, UK", "London EC4M 8AD, UK", "London Borough of Southwark", "London SW1P 3PA, UK"]
    
    var landmarkDescription = [
        "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower as well.",
        "Buckingham Palace is the London residence and administrative headquarters of the reigning monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
        "The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. As of January 2015, it has been advertised as the Coca-Cola London Eye. The structure is 443 feet tall and the wheel has a diameter of 394 feet.",
        "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade 1 listed building.",
        "Tower Bridge is a combined bascule and suspension bridge in London built between 1886 and 1894. The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London",
        "Westminster Abbey, formally titled the Collegiate Church of St Peter at Westminster, is a large, mainly Gothic abbey church in the City of Westminster, London, just to the west of the Palace of Westminster."
    ]
    
    var latitude = [51.50072919999999, 51.49916839999999, 51.50090949999999, 51.513191, 51.5041673, 51.4994174]
    
    var longitude = [-0.12462540000001354, -0.1431572999999844, -0.11953229999994619, -0.09759899999994559, -0.07627130000003035, -0.1275705000000471]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.cellImage.image = UIImage(named: "\(imageList[indexPath.row])")
        cell.cellTitle.text = "\(titleList[indexPath.row])"
        cell.cellSubtitle.text = "\(subtitle[indexPath.row])"
        
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "DetailView") {
            let detailViewController = segue.destination as! DetailViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                detailViewController.landmarkName = titleList[indexPath.row] as String
                detailViewController.landmarkImage = imageList[indexPath.row] as String
                detailViewController.landmarkSubtitle = subtitle[indexPath.row] as String
                detailViewController.landmarkDescription = landmarkDescription[indexPath.row] as String
                detailViewController.landmarkLatitude = latitude[indexPath.row] as Double
                detailViewController.landmarkLongitude = longitude[indexPath.row] as Double
            }
        }
    }
    

}
