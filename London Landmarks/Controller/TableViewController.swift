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
            }
        }
    }
    

}
