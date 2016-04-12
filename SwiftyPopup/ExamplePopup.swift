//
//  ExamplePopup.swift
//  SwiftyPopup
//
//  Created by YoonTaesup on 2016. 4. 12..
//  Copyright © 2016년 YoonTaesup. All rights reserved.
//

import UIKit

class ExamplePopup: SwiftyPopup {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let close = UIButton(type: .Custom)
        close.setTitle("close", forState: .Normal)
        close.setTitleColor(UIColor.blueColor(), forState: .Normal)
        close.frame = CGRectMake(0, 185, 300, 30)
        close.addTarget(self, action: #selector(btnClose), forControlEvents: .TouchUpInside)
        contentView.addSubview(close)

      
        print(contentView.frame)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func btnClose() {
        dismiss()
    }
}
