//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Angelos Staboulis on 16/05/16.
//  Copyright © 2016 Angelos Staboulis. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var CmdDiv: NSButton!
    @IBOutlet weak var CmdMultiply: NSButton!
    @IBOutlet weak var CmdMinus: NSButton!
    @IBOutlet weak var CmdPlus: NSButton!
    @IBOutlet weak var CmdResult: NSButton!
    @IBOutlet weak var CmdDecimal: NSButton!
    @IBOutlet weak var Cmd0: NSButton!
    @IBOutlet weak var Cmd1: NSButton!
    @IBOutlet weak var Cmd2: NSButton!
    @IBOutlet weak var Cmd3: NSButton!
    @IBOutlet weak var Cmd6: NSButton!
    @IBOutlet weak var Cmd5: NSButton!
    @IBOutlet weak var Cmd4: NSButton!
    @IBOutlet weak var Cmd9: NSButton!
    @IBOutlet weak var Cmd8: NSButton!
    @IBOutlet weak var Cmd7: NSButton!
    @IBOutlet weak var CmdClear: NSButton!
    @IBOutlet weak var CmdTan: NSButton!
    @IBOutlet weak var CmdCos: NSButton!
    @IBOutlet weak var CmdSin: NSButton!
    @IBOutlet weak var lblReadout: NSTextField!
    
    @IBAction func CmdCLEAR(sender: AnyObject) {
        lblReadout.stringValue=""
    }
    @IBAction func CmdTAN(sender: AnyObject) {
        lblReadout.stringValue=String(tan(Double(lblReadout.stringValue)!))
    }
    @IBAction func CmdCOS(sender: AnyObject) {
         lblReadout.stringValue=String(cos(Double(lblReadout.stringValue)!))
    }
    @IBAction func CmdSIN(sender: AnyObject) {
         lblReadout.stringValue=String(sin(Double(lblReadout.stringValue)!))
    }
    
    @IBAction func Cmd7(sender: AnyObject) {
        lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd7.title)
    }
    
    @IBAction func Cmd8(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd8.title)
    }
    @IBAction func Cmd9(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd9.title)
    }
    
    @IBAction func Cmd4(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd4.title)
    }
    @IBAction func Cmd5(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd5.title)
    }
    
    @IBAction func Cmd6(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd6.title)
    }
    @IBAction func Cmd3(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd3.title)
    }
    @IBAction func Cmd2(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd2.title)
    }
    @IBAction func Cmd1(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd1.title)
    }
    @IBAction func Cmd0(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(Cmd0.title)
    }
    @IBAction func CmdDecimal(sender: AnyObject) {
         lblReadout.stringValue=String(lblReadout.stringValue)+String(CmdDecimal.title)
    }
    @IBAction func CmdResult(sender: AnyObject) {
        
        let exp: NSExpression = NSExpression(format: lblReadout.stringValue)
        let result: Double = exp.expressionValueWithObject(nil, context: nil) as! Double
        lblReadout.stringValue=String(result)
        
    }
    @IBAction func CmdPlus(sender: AnyObject) {
        lblReadout.stringValue=String(lblReadout.stringValue)+String(CmdPlus.title)
        
    }
    @IBAction func CmdMinus(sender: AnyObject) {
        lblReadout.stringValue=String(lblReadout.stringValue)+String(CmdMinus.title)
        
    }
   
    @IBAction func CmdMultiply(sender: AnyObject) {
        lblReadout.stringValue=String(lblReadout.stringValue)+String(CmdMultiply.title)
        
    }
    @IBAction func CmdDiv(sender: AnyObject) {
        lblReadout.stringValue=String(lblReadout.stringValue)+String(CmdDiv.title)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

