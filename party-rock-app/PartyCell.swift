//
//  PartyCell.swift
//  party-rock-app
//
//  Created by Munene Kaumbutho on 2017-05-01.
//  Copyright © 2017 Munene Kaumbutho. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    /*
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/
    
    func updateUI(model: PartyRockModel){
        cellLabel.text = model.videoTitle
        //Set Image View url below: - this requires to download the imaage from the internet that requries a background or asynchronous thread: 
        let url = URL(string: model.imageURL)
        
        // DispatchQeue gives us a block in which a thread can be performed - in this case asynchronous thread. 
        //  .async {} is a closure.
        DispatchQueue.global().async {
            
            // a do- catch; a do will try and fetch the image. If ther e is an error at any point hrough this then the code in the catch blockk will be executed:
            do {
                let data = try Data(contentsOf: url!)
                // run some code on the main thread - that is done synchronously, to give the cellImageView the downloaded image
                DispatchQueue.global().sync {
                    self.cellImageView.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
        
    }

}
