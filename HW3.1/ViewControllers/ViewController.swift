//
//  ViewController.swift
//  HW3.1
//
//  Created by maks on 07.11.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController  {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var buttonNextAnimation: UIButton!
    
    @IBAction func startSpringAnimation(_ sender: UIButton) {
        
        let animation = Animation.getAnimation()
        let animationPreset = animation.preset
        buttonNextAnimation.setTitle(animationPreset, for: .normal)
        
        springAnimationView.animation = animationPreset
        presetLabel.text = springAnimationView.animation
        
        springAnimationView.curve = animation.curve
        curveLabel.text = springAnimationView.curve
        
        springAnimationView.force = animation.forse
        forceLabel.text = String(format: "%.3f", animation.forse)
        
        springAnimationView.duration = animation.duration
        durationLabel.text = String(format: "%.3f", animation.duration)
        
        springAnimationView.delay = animation.delay
        delayLabel.text = String(format: "%.3f", animation.delay)
        
        springAnimationView.animate()
    }
}
