//
//  ViewController.swift
//  catsGame
//
//  Created by Anna on 30.04.2022.
//
import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var circleButton: UIButton!
    
    //MARK: - lifecycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        creativeCircle()
    }
   
    //MARK: - IBAction
    @IBAction func clickCircle(_ sender: UIButton) {
        circleButton.frame.origin.y = randomY()
        circleButton.frame.origin.x = randomX()
    }
    
    //MARK: - flow funcs

    private func randomX() -> CGFloat{
        return CGFloat.random(in: 0..<(view.frame.maxX - circleButton.frame.size.width))
    }
    
    private func randomY() -> CGFloat{
        return CGFloat.random(in : 0..<(view.frame.maxY - circleButton.frame.size.height))
    }
    
    private func randomColor() -> UIColor {
        let r = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let g = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let b = CGFloat(arc4random()) / CGFloat(UInt32.max)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    private func creativeCircle() {
        circleButton.frame = CGRect(x: randomX(), y: randomY(), width: view.frame.maxY/8, height: view.frame.maxY/8)
        circleButton.backgroundColor = randomColor()
        circleButton.layer.cornerRadius = circleButton.frame.size.width / 2
    }
}

