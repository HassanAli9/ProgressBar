//
//  ViewController.swift
//  Test Progress Bar
//
//  Created by Hassan on 13/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animatedCountingLabel: UILabel!
  
    
    // MARK: - Properties -
       
       var circularProgressBarView: CircularProgressBarView!
       var circularViewDuration: TimeInterval = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCircularProgressBarView()

    }
    
    func setUpCircularProgressBarView() {
        // set view
        circularProgressBarView = CircularProgressBarView(frame: .zero)
        // align to the center of the screen
        circularProgressBarView.center = view.center
        // call the animation with circularViewDuration
        circularProgressBarView.progressAnimation(duration: circularViewDuration)
        
        var c:Float = Float(truncating: circularProgressBarView.value!)
        animatedCountingLabel.text = String(c * 100) + "" + "%"
        // add this view to the view controller
        view.addSubview(circularProgressBarView)
    }


}

