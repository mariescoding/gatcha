//
//  ResultViewController.swift
//  Gacha
//
//  Created by Marie Muramatsu on 8/5/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var number: Int!
    
    @IBOutlet var backgroundImage : UIImageView!  
    @IBOutlet var characterImage : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
         
        if number == 9 {
            characterImage.image = UIImage(named: "france")
            backgroundImage.image = UIImage(named: "bgBlue")
            
        }else if number >= 7{
            characterImage.image = UIImage(named: "brazil")
            backgroundImage.image = UIImage(named: "bgGreen")
            
        }else{
            characterImage.image = UIImage(named: "china")
            backgroundImage.image = UIImage(named: "bgRed")
            
        }
        

        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImage.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options:[.curveEaseIn, .autoreverse , .repeat] ,animations: {self.characterImage.center.y += 10.0} )
        { _ in
            self.characterImage.center.y -= 10.0
            
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated:true, completion:nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
