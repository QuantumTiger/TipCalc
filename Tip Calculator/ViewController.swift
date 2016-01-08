//
//  ViewController.swift
//  Tip Calculator
//
//  Created by WGonzalez on 9/30/15.
//  Copyright © 2015 Quantum Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var billTotalAmountText: UITextField!
@IBOutlet weak var taxedLabel: UILabel!
@IBOutlet weak var labelPeople: UILabel!
@IBOutlet weak var tipAmountText: UILabel!
@IBOutlet weak var totalAmountText: UILabel!
@IBOutlet weak var splitTipText: UILabel!
@IBOutlet weak var splitTotalText: UILabel!
var people = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Image1")!)
    }

@IBAction func calculateFifteen(sender: AnyObject)
{
    let people = (labelPeople.text! as NSString).doubleValue
    let billTotal = (billTotalAmountText.text! as NSString).doubleValue
    var billWithTax : Double = 0
    var billWithPeople : Double = 0
    let taxFifteen : Double = 1.15
    var tipAmount : Double = 0
    var splitTip : Double = 0
    
    billWithTax = billTotal * taxFifteen
    billWithPeople = (billWithTax / (people + 1))
    tipAmount = billWithTax - billTotal
    splitTip = (tipAmount / (people + 1))
    
    taxedLabel.text = String(format: "$ %.2f", billWithPeople)
    tipAmountText.text = String(format:"$ %.2f", tipAmount)
    totalAmountText.text = String(format: "$ %.2f", billTotal)
    splitTotalText.text = String(format: "$ %.2f", billWithPeople)
    splitTipText.text = String(format: "$ %.2f", splitTip)
}
    
@IBAction func calculateTen(sender: AnyObject)
{
    let people = (labelPeople.text! as NSString).doubleValue
    let billTotal = (billTotalAmountText.text! as NSString).doubleValue
    var billWithTax : Double = 0
    var billWithPeople : Double = 0
    let taxTen : Double = 1.10
    var tipAmount : Double = 0
    var splitTip : Double = 0
    
    billWithTax = billTotal * taxTen
    billWithPeople = (billWithTax / (people + 1))
    tipAmount = billWithTax - billTotal
    splitTip = (tipAmount / (people + 1))
    
    taxedLabel.text = String(format: "$ %.2f", billWithPeople)
    tipAmountText.text = String(format:" $ %.2f", tipAmount)
    totalAmountText.text = String(format: "$ %.2f", billTotal)
    splitTotalText.text = String(format: "$ %.2f", billWithPeople)
    splitTipText.text = String(format: "$ %.2f", splitTip)
}

@IBAction func calculateTwenty(sender: AnyObject)
{
    let people = (labelPeople.text! as NSString).doubleValue
    let billTotal = (billTotalAmountText.text! as NSString).doubleValue
    var billWithTax : Double = 0
    var billWithPeople : Double = 0
    let taxTwenty : Double = 1.20
    var tipAmount : Double = 0
    var splitTip : Double = 0
    
    billWithTax = billTotal * taxTwenty
    billWithPeople = (billWithTax / (people + 1))
    tipAmount = billWithTax - billTotal
    splitTip = (tipAmount / (people + 1))
    
    taxedLabel.text = String(format: "$ %.2f", billWithPeople)
    tipAmountText.text = String(format:"$ %.2f", tipAmount)
    totalAmountText.text = String(format: "$ %.2f", billTotal)
    splitTotalText.text = String(format: "$ %.2f", billWithPeople)
    splitTipText.text = String(format: "$ %.2f", splitTip)
}
    
@IBAction func calculateTwentyFive(sender: AnyObject)
{
    let people = (labelPeople.text! as NSString).doubleValue
    let billTotal = (billTotalAmountText.text! as NSString).doubleValue
    var billWithTax : Double = 0
    var billWithPeople : Double = 0
    let taxTwentyFive : Double = 1.25
    var tipAmount : Double = 0
    var splitTip : Double = 0
    
    billWithTax = billTotal * taxTwentyFive
    billWithPeople = (billWithTax / (people + 1))
    tipAmount = billWithTax - billTotal
    splitTip = (tipAmount / (people + 1))
    
    taxedLabel.text = String(format: "$ %.2f", billWithPeople)
    tipAmountText.text = String(format:"$ %.2f", tipAmount)
    totalAmountText.text = String(format: "$ %.2f", billTotal)
    splitTotalText.text = String(format: "$ %.2f", billWithPeople)
    splitTipText.text = String(format: "$ %.2f", splitTip)
}

@IBAction func upValueButton(sender: AnyObject)
{
    people++
    labelPeople.text = "\(people)"
}
    
@IBAction func downValueButton(sender: AnyObject)
{
    people--
    labelPeople.text = "\(people)"
}
}