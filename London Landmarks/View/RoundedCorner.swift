//
//  RoundedCorner.swift
//  London Landmarks
//
//  Created by Sujanth Sebamalaithasan on 29/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCorner: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
