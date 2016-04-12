# SwiftyPopup

SwiftyPopup is popup view for use dynamic.



![demo1](https://github.com/ehowlsla/SwiftyPopup/blob/master/ezgif.com-video-to-gif-2.gif)


![demo2](https://github.com/ehowlsla/SwiftyPopup/blob/master/ezgif.com-video-to-gif.gif)


## Example Extension
'''javascript
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
'''

## Example Use
'''javascript
  let popup = ExamplePopup()
  popup.showInView(self.view) //show
  popup.dismiss() //hide
'''

## License

SwiftyPopup is under MIT license. See the LICENSE file for more info.
