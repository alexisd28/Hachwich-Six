//
//  secondViewController.swift
//  Hachwich Six
//
//  Created by Yuki Decker on 10/10/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var myPlacesToGoArray = ["Germany", "Japan", "Alaska"]
    var myPlaceCityArray = ["Nordlingen", "Tokyo", "Anchorage"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlacesToGoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = myPlacesToGoArray[indexPath.row]
        cell.detailTextLabel?.text = myPlaceCityArray[indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
