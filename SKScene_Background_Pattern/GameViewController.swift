//
//  GameViewController.swift
//  SKScene_Background_Pattern
//
//  Created by Martijn Onstwedder on 18/02/16.
//  Copyright (c) 2016 Martijn Onstwedder. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
        addBackgroundPattern()
    }

    func addBackgroundPattern()
    {
        var totW : CGFloat = 0
        var totH : CGFloat = 0
        
        var  i = 0
        var  j = 0
        
        let skView = self.view as! SKView
        

        var tile : SKTexture!
        
        let backgroundImage  = UIImage(named: "paisley.png")
        tile = SKTexture(image: backgroundImage!)
    
        
        while (totH < ((skView.scene?.size.height)! + tile.size().height )) {
            
            if (totW >= (skView.scene?.size.width))
            {
                totW = 0
                i = 0
            }
            
            while ( totW < skView.scene?.size.width)
            {
                let bg = SKSpriteNode(texture: tile)
                
                bg.zPosition = -100;
                bg.position = CGPointMake(
                    (CGFloat(i)*tile.size().width) ,
                    (CGFloat(j)*tile.size().height))
                
                skView.scene?.addChild(bg)
                
                i++
                totW += tile.size().width
            }
            
            
            j++
            totH += tile.size().height
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
}
