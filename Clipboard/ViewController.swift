//
//  ViewController.swift
//  Clipboard
//
//  Created by Marco Grier on 6/18/18.
//  Copyright © 2018 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearCanvas(_ sender: Any) {
        canvasView.clearCanvas()
    }
    
    @IBAction func purple(_ sender: Any) {
        canvasView.purple()
    }
    
    @IBAction func blue(_ sender: Any) {
        canvasView.userColor = UIColor.blue
    }
    
    @IBAction func red(_ sender: Any) {
        canvasView.userColor = UIColor.red
    }
    
    @IBAction func green(_ sender: Any) {
        canvasView.userColor = UIColor.green
    }
    
    @IBAction func white(_ sender: Any) {
        canvasView.userColor = UIColor.white
    }
    
    
}

