//
//  MainViewController.swift
//  EmotionDiary
//
//  Created by 김윤우 on 5/17/24.
//
// Button 이미지와 title, subtitle을 이용해서 구현 해보자
// 시뮬레이터에서 UserDefaults 오류가 나서 UI가 이상하게 보임
// 시뮬레이터이터 + 실기기로 꼭 확인하자
import UIKit

class MainViewController: UIViewController {
    //view
    @IBOutlet var backgroundImageView: UIImageView!
    //barButtonItem
    @IBOutlet var leftBarButtonItem: UIBarButtonItem!
    
    //Button
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var embarrassmentButton: UIButton!
    @IBOutlet var upSetButton: UIButton!
    @IBOutlet var depressedButton: UIButton!
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var tiredButton: UIButton!
    @IBOutlet var sadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sfsymbols 사용시 􀻒 말고 이름으로 사용
        leftBarButtonItem.image = UIImage(systemName: "menucard")
        leftBarButtonItem.tintColor = .black
        
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.contentMode = .scaleToFill
    
        happyButton.setImage(UIImage(named: "slime1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        happyButton.setTitle("행복해", for: .normal)
        happyButton.tintColor = .black
        happyButton.configuration?.imagePlacement = .top
        happyButton.contentMode = .scaleAspectFit
        
        
        
    }
    

    

}
