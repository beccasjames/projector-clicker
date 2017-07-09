//
//  ProjectorAPI.swift
//  Projector-Clicker
//
//  Created by Becca James on 7/9/17.
//  Copyright © 2017 Becca James. All rights reserved.
//

import Foundation

class Projector: NSObject {
    var baseURL: String
    
    init(baseURL: String) {
        self.baseURL = baseURL
    }
    
    func _getPath(path: String) {
        let path = self.baseURL + path
        var request = URLRequest(url: URL(string: path)!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request).resume()
    }
    
    func powerOn() {
        self._getPath(path: "/power/on")
    }
    
    func powerOff() {
        self._getPath(path: "/power/off")
    }
    
    func volumeDown() {
        self._getPath(path: "/volume/decrease")
    }
    
    func volumeUp() {
        self._getPath(path: "/volume/increase")
    }
    
    func muteOn() {
        self._getPath(path: "/mute/on")
    }
    
    func muteOff() {
        self._getPath(path: "/mute/off")
   }
    
    func freezeOn() {
        self._getPath(path: "/freeze/on")
    }
    
    func freezeOff() {
        self._getPath(path: "/freeze/off")
    }

}
