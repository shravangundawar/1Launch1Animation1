//
//  LaunchScreenViewController.swift
//  LaunchAnimation
//
//  Created by Nanostuffs Technologoies Pvt. Ltd. on 20/09/17.
//  Copyright © 2017 Nanostuffs Technologoies Pvt. Ltd. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    var timer = Timer()

    @IBOutlet weak var launchImgVw: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        launchImgVw.loadGif(name: "LaunchImage")

        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.goToMainScreen), userInfo: nil, repeats: true)
    }
    
    func goToMainScreen() {
        
        timer.invalidate()
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")

        
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
