//
//  SwiftyColor.swift
//  SwiftyPopup
//
//  Created by YoonTaesup on 2016. 4. 12..
//  Copyright © 2016년 YoonTaesup. All rights reserved.
//


import UIKit

class SwiftyPopup: UIView {
    
    var attached = false
    let contentView = UIView()
    
    
    var w = CGFloat(300)
    var h = CGFloat(400)
    
    var target: UIView?
    var corner = CGFloat(3)
    
    func showInView(target: UIView) {
        self.frame = target.frame
        self.target = target
        self.contentView.frame = target.frame
        for subview in self.contentView.subviews {
            subview.alpha = 0
        }
        
        //        self.corner = CGFloat(max(Int(target.frame.width) , Int(target.frame.height)) / min(Int(target.frame.width), Int(target.frame.height)))
        self.alpha = 0
        self.contentView.alpha = 0
        self.contentView.clipsToBounds = true
        self.backgroundColor = UIColor(white: 0.2, alpha: 0.5)
//            0x444444 ~ 50%
        self.contentView.backgroundColor = UIColor.whiteColor()
        self.addSubview(contentView)
        target.addSubview(self)
        
        UIView.animateWithDuration(0.15, animations: {
            self.alpha = 1
            self.contentView.alpha = 1
            self.contentView.frame = CGRectMake((target.frame.width - self.w) / 2, (target.frame.height - self.h) / 2, self.w, self.h)
            
            }, completion: { complete in
                self.contentView.layer.cornerRadius = self.corner
                UIView.animateWithDuration(0.05, animations: {
                    for subview in self.contentView.subviews {
                        subview.alpha = 1
                    }
                })
        })
        
        self.attached = true
    }
    
    func dismiss() {
        self.attached = false
        if let target = self.target {
            UIView.animateWithDuration(0.05, animations: {
                for subview in self.contentView.subviews {
                    subview.alpha = 0
                }
                self.contentView.alpha = 0.5
                }, completion: { complete in
                    UIView.animateWithDuration(0.15, animations: {
                        self.contentView.frame = target.frame
                        self.alpha = 0
                        }, completion: { complete in
                            self.removeFromSuperview()
                    })
            })
            
            
        } else {
            self.removeFromSuperview()
        }
    }
    
    func setWidthHeight(width: CGFloat, _ height: CGFloat) {
        self.w = width
        self.h = height
    }
}
