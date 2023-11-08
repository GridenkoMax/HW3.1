//
//  Animation.swift
//  HW3.1
//
//  Created by maks on 07.11.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let forse: Double
    let duration: Double
    let delay: Double
    
    //    var data: String {
    //    "\(forse),\(duration),\(delay)"
    //    }
}

extension Animation {
    static func getAnimation() -> Animation{
        Animation(preset: DataStore.shared.preset.randomElement() ?? "pop",
                  curve: DataStore.shared.curve.randomElement() ?? "easeIn",
                  forse: Double.random(in: 0.0...3.0),
                  duration:Double.random(in: 0.0...3.0),
                  delay: Double.random(in: 0.0...3.0)
        )
    }
}





 
