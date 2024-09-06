//
//  ViewController.swift
//  kiemtra
//
//  Created by apple on 2024/09/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ketqua_UILable: UILabel!
    @IBOutlet weak var you_UIImage: UIImageView!
    @IBOutlet weak var Computer_UIImage: UIImageView!
    
    @IBOutlet weak var banchon_Lable: UILabel!
    @IBOutlet weak var maychon_Lable: UILabel!
    
    var manghinh:[UIImage]!
    var ban:Int!
    var computer:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        manghinh = [
        UIImage(named: "3gach")!,
        UIImage(named: "doll")!,
        UIImage(named: "hh")!
        ]
        you_UIImage.layer.cornerRadius = 50
        Computer_UIImage.layer.cornerRadius = 50
    }


    @IBAction func bua_tager(_ sender: UITapGestureRecognizer ) {
        you_UIImage.image = UIImage(named: "3gach")
        ban = 1
        banchon_Lable.text = "Bua"
        randrom(you: ban)
    }
    
    @IBAction func keo_taget(_ sender: UITapGestureRecognizer) {
        you_UIImage.image = UIImage(named: "doll")
        ban = 2
        banchon_Lable.text = "Keo"
        randrom(you: ban)
    }
    
    @IBAction func bao_taget(_ sender: UITapGestureRecognizer) {
        you_UIImage.image = UIImage(named: "hh")
        ban = 3
        banchon_Lable.text = "Bao"
        randrom(you: ban)
    }
    
    func randrom(you:Int){
        computer = Int.random(in: 1...3)
        if computer == 1
        {
            Computer_UIImage.image = UIImage(named: "3gach")
            maychon_Lable.text = "Bua"
            if computer == you
            {
                ketqua_UILable.text = "Hoa nhau"
            }
            else
            {
                if you == 2
                {
                    ketqua_UILable.text = "Computer Thang"
                }
                else
                {
                    ketqua_UILable.text = "Ban Thang"
                }
            }
            
        }
        else if computer == 2
        {
            Computer_UIImage.image = UIImage(named: "doll")
            maychon_Lable.text = "Keo"
            if computer == you
            {
                ketqua_UILable.text = "Hoa nhau"
            }
            else
            {
                if you == 1
                {
                    ketqua_UILable.text = "Ban Thang"
                }
                else
                {
                    ketqua_UILable.text = "Computer Thang"
                }
            }
        }
        else
        {
            Computer_UIImage.image = UIImage(named: "hh")
            maychon_Lable.text = "Bao"
            if computer == you
            {
                ketqua_UILable.text = "Hoa nhau"
            }
            else
            {
                if you == 1
                {
                    ketqua_UILable.text = "Computer Thang"
                }
                else
                {
                    ketqua_UILable.text = "Ban thang"
                }
            }
        }
    }
}

