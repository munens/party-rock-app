//
//  PartyRockModel.swift
//  party-rock-app
//
//  Created by Munene Kaumbutho on 2017-05-01.
//  Copyright © 2017 Munene Kaumbutho. All rights reserved.
//

import Foundation

class PartyRockModel {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    // set a getter and setter for each variable:
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String){
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
