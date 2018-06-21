//
//  ViewController.swift
//  Clipboard
//
//  Created by Marco Grier on 6/18/18.
//  Copyright © 2018 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: UIView!
    
    var path = UIBezierPath(), pathTwo = UIBezierPath(), pathThree = UIBezierPath(), pathFour = UIBezierPath(), pathFive = UIBezierPath()
    
    var startPoint = CGPoint()
    var touchPoint = CGPoint()
    var userPickedColor = UIColor.black.cgColor

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvasView.clipsToBounds = true
        canvasView.isMultipleTouchEnabled = false
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let point = touch?.location(in: canvasView) {
            startPoint = point
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let point = touch?.location(in: canvasView) {
            touchPoint = point
        }
        
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        
        pathTwo.move(to: startPoint)
        pathTwo.move(to: startPoint)
        
        startPoint = touchPoint
        
        draw()
    }
    
    func draw() {
        let strokeLayer = CAShapeLayer()
        strokeLayer.fillColor = nil
        strokeLayer.lineWidth = 5
        strokeLayer.strokeColor = userPickedColor
        //strokeLayer.strokeColor = UIColor.black.cgColor
        strokeLayer.path = path.cgPath
        canvasView.layer.addSublayer(strokeLayer)
        canvasView.setNeedsDisplay()
    }
    
    func drawPurple() {
        let strokeLayerTwo = CAShapeLayer()
        strokeLayerTwo.fillColor = nil
        strokeLayerTwo.lineWidth = 5
        strokeLayerTwo.strokeColor = UIColor.purple.cgColor
        //strokeLayer.strokeColor = UIColor.black.cgColor
        //strokeLayer.path = path.cgPath
        canvasView.layer.addSublayer(strokeLayerTwo)
        canvasView.setNeedsDisplay()
    }


    @IBAction func clearButton(_ sender: UIButton) {
        path.removeAllPoints()
        canvasView.layer.sublayers = nil
        canvasView.setNeedsDisplay()
        
    }
    
    @IBAction func colors(_ sender: UIButton) {
        if sender.tag == 1 {
            drawPurple()
        } else if sender.tag == 3 {
            userPickedColor = UIColor.red.cgColor
        } else if sender.tag == 4 {
            userPickedColor = UIColor.green.cgColor
        } else if sender.tag == 5 {
            userPickedColor = UIColor.white.cgColor
        }
    }
    
}

