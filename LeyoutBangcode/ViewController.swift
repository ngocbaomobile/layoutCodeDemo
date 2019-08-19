//
//  ViewController.swift
//  LeyoutBangcode
//
//  Created by Ngoc on 8/17/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//


/*
 
 Autolayout bang code:
 
 -NslayoutContraint
 -AnchorX,Y,width height
 -Visual format
 
 
 Vertical: Theo chi doc
 Horizontal: Theo chieu ngang
 */
import UIKit

class ViewController: UIViewController {

    var viewDO: UIView = {
        let v: UIView = UIView()
        v.backgroundColor = UIColor.purple
//        v.layer.cornerRadius = 10
//        v.layer.borderWidth = 5
//        v.layer.shadowColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
//        v.layer.shadowOffset = CGSize(width: 30, height: 30)
//        v.layer.shadowRadius = 20
//        v.layer.shadowOpacity = 20
//        v.layer.masksToBounds = true
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var viewDo: UIView = UIView()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visualFormatconstraint()
    }
    
    fileprivate func nsLayoutConstraint() {
        let canX = NSLayoutConstraint(item: viewDO, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let canY = NSLayoutConstraint(item: viewDO, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0)
        
        let rong = NSLayoutConstraint(item: viewDO, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
        
        
        let cao = NSLayoutConstraint(item: viewDO, attribute: .height, relatedBy: .equal, toItem: viewDO, attribute: .width, multiplier: 1, constant: 0)
        
        view.addSubview(viewDO)
        view.addConstraints([canX,canY,rong,cao])
    }
    
    fileprivate func anChorLayout() {
        view.addSubview(viewDo)
        viewDo.translatesAutoresizingMaskIntoConstraints = false
        viewDo.backgroundColor = UIColor.black
        viewDo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewDo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewDo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 3/4, constant: 0).isActive = true
        viewDo.heightAnchor.constraint(equalTo: viewDo.widthAnchor, multiplier: 1, constant: 0).isActive = true
    }
    
    
    fileprivate func visualFormatconstraint() {
        //vertical: theo chieu doc
        //horizontal: theo chieu ngang
        view.addSubview(viewDO)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[v0]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": viewDO]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-100-[h0]-100-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["h0": viewDO]))
    }
    
// for more information about advance autolayout search visual foramt ios

}

