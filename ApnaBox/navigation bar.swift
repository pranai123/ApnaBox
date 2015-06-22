//
//  navigation bar.swift
//  
//
//  Created by Pranai Basani on 22/06/15.
//
//

import UIKit

class navigation_bar: UINavigationBar {

    
    
   
        
        override func sizeThatFits(size: CGSize) -> CGSize {
            var newSize:CGSize = CGSizeMake(self.frame.size.width,70)
            return newSize
        
    }

}