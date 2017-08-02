//
//  CircleGraphVIew.swift
//  SHAD Cup
//
//  Created by Ibrahim Irfan on 2017-07-21.
//  Copyright © 2017 Ibrahim Irfan. All rights reserved.
//

import UIKit

class CircleGraphView: UIView {
    var endArc:CGFloat = 0.1{   // in range of 0.0 to 1.0
        didSet{
            setNeedsDisplay()
        }
    }
    var arcWidth: CGFloat = 15.0
    var arcColor = UIColor(red: 142.0/255.0, green: 198.0/255.0, blue: 63.0/255.0, alpha: 1.0)
    var arcBackgroundColor = UIColor.black
    
    override func draw(_ rect: CGRect) {
        
        //Important constants for circle
        let fullCircle = 2.0 * CGFloat(Double.pi)
        let start:CGFloat = -0.25 * fullCircle
        let end:CGFloat = endArc * fullCircle + start
        
        //find the centerpoint of the rect
        var centerPoint = CGPoint(x: rect.midX, y: rect.midY)
        
        //define the radius by the smallest side of the view
        var radius:CGFloat = 0.0
        if rect.width > rect.height{
            radius = (rect.width - arcWidth) / 2.0
        }else{
            radius = (rect.height - arcWidth) / 2.0
        }
        //starting point for all drawing code is getting the context.
        let context = UIGraphicsGetCurrentContext()
        //set colorspace
        let colorspace = CGColorSpaceCreateDeviceRGB()
        //set line attributes
        context!.setLineWidth(arcWidth)
        context!.setLineCap(CGLineCap.round)
        //make the circle background
        
        context!.setStrokeColor(arcBackgroundColor.cgColor)
        context!.addArc(center: centerPoint, radius: radius, startAngle: 0, endAngle: fullCircle, clockwise: false)
        context!.strokePath()
        
        //draw the arc
        context!.setStrokeColor(arcColor.cgColor)
        context!.setLineWidth(arcWidth * 0.8 )
        //CGContextSetLineWidth(context, arcWidth)
        context!.addArc(center: centerPoint, radius: radius, startAngle: start, endAngle: end, clockwise: false)
        context!.strokePath()
        
    }
    
}
