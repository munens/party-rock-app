//
//  ViewController.swift
//  party-rock-app
//
//  Created by Munene Kaumbutho on 2017-04-29.
//  Copyright © 2017 Munene Kaumbutho. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var partyRocks = [PartyRockModel]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let p1 = PartyRockModel(imageURL: "https://i.ytimg.com/vi/Wq0N2jFFyac/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Wq0N2jFFyac\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mariana")
        
        let p2 = PartyRockModel(imageURL: "https://i.ytimg.com/vi/Xz0yImPiCXY/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Xz0yImPiCXY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Twende Twende")
        
        let p3 = PartyRockModel(imageURL: "https://i.ytimg.com/vi/2OcsL2qeiBE/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2OcsL2qeiBE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Ukweli")
        
        let p4 = PartyRockModel(imageURL: "http://www.lovenairobi.com/lnwp/wp-content/uploads/2013/09/rain-eric-wainaina.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ybpowfZeKGk\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Rain on you")
        
        let p5 = PartyRockModel(imageURL: "https://i.ytimg.com/vi/4SqLbekVO00/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4SqLbekVO00\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Dunia ina Mambo")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the relevant cell that we use as they are continuously loaded:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if the cell does not readilly exist, then - create one as a reusable cell:
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            // this cell is found by giveing the function an identifier hich is the name of the class we have for a party rock cel in our view:
            
            // give this cell a correct index:
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(model: partyRock)
            
            return cell
        } else {
            return UITableViewCell()
        }
  
    }
    
    // gives the number of rows that will be in our table view:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // use the index of the partyRocks array to find the actual one that was clicked on:
        let partyRock = partyRocks[indexPath.row]
        
        // performSegue to the next controller: - here we can give it the partyRock object that was clieked on.
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            
            if let party = sender as? PartyRockModel {
                destination.partyRock = party
            }
        }
    }

}

