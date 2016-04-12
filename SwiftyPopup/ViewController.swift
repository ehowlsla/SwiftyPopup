//
//  ViewController.swift
//  SwiftyPopup
//
//  Created by YoonTaesup on 2016. 4. 12..
//  Copyright © 2016년 YoonTaesup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton(type: .Custom)
        btn.setTitle("click", forState: .Normal)
        btn.backgroundColor = UIColor.brownColor()
        btn.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        btn.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        btn.addTarget(self, action: #selector(btnClick), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
           }
    
    
    let popup = ExamplePopup()
    func btnClick() {
        popup.showInView(self.view)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

