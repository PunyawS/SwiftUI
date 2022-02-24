//
//  UIsegmentView.swift
//  gbattle
//
//  Created by Train2 on 24/2/2565 BE.
//

import UIKit

class UIsegmentViewForRankingView: UISegmentedControl {
    
}

extension UIImage{
    class func getSegReact(color: CGColor, andSize size: CGSize)-> UIImage{
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color)
        let rectangle = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        context?.fill(rectangle)
        
        let rectangleImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return rectangleImage!
    }
}

extension UISegmentedControl{
    //remove bottom border when not selected
    
    func removeBorder(){
//        let background = UIImage.getSegReact(color: UIColor(red: 0/225, green: 0/225, blue: 0/225, alpha: 1).cgColor, andSize: self.bounds.size)
        let background = UIImage.getSegReact(color: UIColor(hexString: "FFFFFF", alpha: 1).cgColor, andSize: self.bounds.size)
        self.setBackgroundImage(background, for: .normal, barMetrics: .default)
        self.setBackgroundImage(background, for: .selected, barMetrics: .default)
        self.setBackgroundImage(background, for: .highlighted, barMetrics: .default)
        
        let deviderLine = UIImage.getSegReact(color: UIColor.white.cgColor, andSize: CGSize(width: 1.0, height: 5))
        self.setDividerImage(deviderLine, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
//        self.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 61/255, green: 192/255, blue: 200/255, alpha: 1.0)], for: .selected)
    }
    
    //tab highlight when select
    
    func highlighSelectedSegment(){
        removeBorder()
//        let lineWidth:CGFloat = self.bounds.size.width / CGFloat(self.numberOfSegments)
        let rowSegments = CGFloat(self.numberOfSegments)
        let lineWidth:CGFloat = 280.00 / rowSegments
        let lineHeight:CGFloat = 7.0 // set height of underline height
        let lineXPosition = CGFloat(selectedSegmentIndex * Int(lineWidth))
        let lineYPosition = self.bounds.size.height - 6.0
        let underLineFrame = CGRect(x: lineXPosition, y: lineYPosition, width: lineWidth, height: lineHeight)
        let underLine = UIView(frame: underLineFrame)
        underLine.backgroundColor = UIColor(hexString: "FAE494", alpha: 1.0)
        underLine.tag = 1
        self.addSubview(underLine)
    }
    
    //set the position of botton unberline
    func underlinePosition(){
        guard let underLine = self.viewWithTag(1)else {return}
        let xPosition = (self.bounds.width / CGFloat(self.numberOfSegments)) * CGFloat(selectedSegmentIndex)
        
        // Spring Animation when change tab
        UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: .curveEaseInOut) {
            underLine.frame.origin.x = xPosition
        }
    }
}
