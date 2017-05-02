//
//  VideoVC.swift
//  party-rock-app
//
//  Created by Munene Kaumbutho on 2017-04-29.
//  Copyright © 2017 Munene Kaumbutho. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _partyRock: PartyRockModel!
    
    @IBOutlet weak var videoTitle: UILabel!
    var partyRock: PartyRockModel {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        videoTitle.text = _partyRock.videoTitle
        webView.loadHTMLString(_partyRock.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
