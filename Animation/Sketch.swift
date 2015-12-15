//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x = 0
    var s = 1

    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 650)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
    }

    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
                
        // Horizontal position of circle
        x = x + s
        
        // Bounce when hitting wall
        if (x > canvas.width || x < 0) {
            s *= -1
        }
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 0)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        //Larger Trapezoid
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 50, saturation: 80, brightness: 90, alpha: 100)
        canvas.drawLine(fromX: 25, fromY: 25, toX: canvas.width-25, toY: 25)
        canvas.drawLine(fromX: 25, fromY: 25, toX: 100, toY: canvas.height - 25)
        canvas.drawLine(fromX: canvas.width - 25, fromY: 25, toX: canvas.width-100, toY: canvas.height - 25)
        canvas.drawLine(fromX: canvas.width-100, fromY: canvas.height - 25, toX: 100, toY: canvas.height - 25)
        
        //Smaller Trapezoid
        canvas.drawShapesWithBorders = false
        canvas.drawLine(fromX: 50, fromY: 50, toX: canvas.width-50, toY: 50)
        canvas.drawLine(fromX: 50, fromY: 50, toX: 125, toY: canvas.height - 50)
        canvas.drawLine(fromX: canvas.width - 50, fromY: 50, toX: canvas.width-125, toY: canvas.height - 50)
        canvas.drawLine(fromX: canvas.width-125, fromY: canvas.height - 50, toX: 125  , toY: canvas.height - 50)
        
        //Filled Trapezoid
        canvas.drawShapesWithBorders = false
        canvas.drawLine(fromX: 50, fromY: 50, toX: canvas.width-50, toY: 50)
        canvas.drawLine(fromX: 50, fromY: 50, toX: 75, toY: 208)
        canvas.drawLine(fromX: canvas.width - 50, fromY: 50, toX: canvas.width-75, toY: 208)
        canvas.drawLine(fromX: canvas.width - 75, fromY: 208, toX: 75  , toY: 208)
        
    }
    
}