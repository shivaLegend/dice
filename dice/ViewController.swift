//
//  ViewController.swift
//  dice
//
//  Created by Nguyen Duc Tai on 11/22/17.
//  Copyright © 2017 Nguyen Duc Tai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh1: UIImageView!
    @IBOutlet weak var imgHinh2: UIImageView!
    var array: Array<String> = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var diem1:Int = -5
    var diem2:Int = -5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ngauNhien()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btn_Roll(_ sender: Any) {
        ngauNhien()
    }
    func ngauNhien() {
        diem1 = Int(arc4random_uniform(6))
        diem2 = Int(arc4random_uniform(6))
        imgHinh1.image = UIImage(named: array[diem1])
        imgHinh2.image = UIImage(named: array[diem2])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ngauNhien()
    }

}

