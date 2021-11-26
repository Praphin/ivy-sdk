//
//  hapticFile.swift
//  ivy-sdk
//
//  Created by Praphin SP on 09/11/21.
//

import Foundation
import UIKit


public class hapticFile {
  
    public static func playEffect() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }

}
