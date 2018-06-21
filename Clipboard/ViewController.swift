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
    var userColor:UIColor!
    
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
        print("pushing purple")
        //canvasView.purple()
    }
    
    @IBAction func blue(_ sender: Any) {
        print("pushing blue")
       // canvasView.userColor = UIColor.blue
    }
    
    @IBAction func red(_ sender: Any) {
        print("pushing red")
        userColor = UIColor.red
    }
    
    @IBAction func green(_ sender: Any) {
        print("pushing green")
       // canvasView.userColor = UIColor.green
    }
    
    @IBAction func white(_ sender: Any) {
        print("pushing white")
        //canvasView.userColor = UIColor.white
    }
    
    
}

