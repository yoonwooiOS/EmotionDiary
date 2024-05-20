//
//  SubViewController.swift
//  EmotionDiary
//
//  Created by 김윤우 on 5/18/24.
// 버튼 + 레이블, 버튼만, 컬렉션뷰

import UIKit

class SubViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    
   
    @IBOutlet var leftBarButtonItem: UIBarButtonItem!
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var happyButtonLabel: UILabel!
    var happyButtonCount = 0
    
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var loveButtonLabel:UILabel!
    var loveButtonCount = 0
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeButtonLabel: UILabel!
    var likeButtonCount = 0
    
    @IBOutlet var embarrassmentButton: UIButton!
    @IBOutlet var embarrassmentButtonLabel: UILabel!
    var embarrassmentButtonCount = 0
    
    @IBOutlet var upSetButton: UIButton!
    @IBOutlet var upSetButtonLabel: UILabel!
    var upSetButtonCount = 0
    
    
    @IBOutlet var depressedButton: UIButton!
    @IBOutlet var depressedButtonLabel: UILabel!
    var depressedButtonCount = 0
    
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var boredButtonLabel: UILabel!
    var boredButtonCount = 0
    
    @IBOutlet var tiredButton: UIButton!
    @IBOutlet var tiredButtonLabel: UILabel!
    var tiredButtonCount = 0
    
    @IBOutlet var sadButton: UIButton!
    @IBOutlet var sadButtonLabel: UILabel!
    var sadButtonCount = 0
    
    
    @IBOutlet var resetButton: UIButton!
    
    
    //Button Style이 Plain일 경우 contentmode가 적용되지 않음
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI 구성
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.contentMode = .scaleToFill
        
        leftBarButtonItem.image = UIImage(systemName: "menucard")
        leftBarButtonItem.tintColor = .black
        
        happyButton.setImage(UIImage(named: "slime1"), for: .normal)
        happyButton.contentMode = .scaleToFill
        happyButtonLabel.text = "행복해 \(happyButtonCount)"
        happyButtonLabel.textAlignment = .center
        
        loveButton.setImage(UIImage(named: "slime2"), for: .normal)
        loveButton.contentMode = .scaleToFill
        loveButtonLabel.text = "사랑해 \(loveButtonCount)"
        loveButtonLabel.textAlignment = .center
        
        likeButton.setImage(UIImage(named: "slime3"), for: .normal)
        likeButton.contentMode = .scaleToFill
        likeButtonLabel.text = "좋아해 \(likeButtonCount)"
        likeButtonLabel.textAlignment = .center
        
        embarrassmentButton.setImage(UIImage(named: "slime4"), for: .normal)
        embarrassmentButton.contentMode = .scaleToFill
        embarrassmentButtonLabel.text = "당황해 \(embarrassmentButtonCount)"
        embarrassmentButtonLabel.textAlignment = .center
        
        upSetButton.setImage(UIImage(named: "slime5"), for: .normal)
        upSetButton.contentMode = .scaleToFill
        upSetButtonLabel.text = "속상해 \(upSetButtonCount)"
        upSetButtonLabel.textAlignment = .center
        
        depressedButton.setImage(UIImage(named: "slime6"), for: .normal)
        depressedButton.contentMode = .scaleToFill
        depressedButtonLabel.text = "우울해 \(depressedButtonCount)"
        depressedButtonLabel.textAlignment = .center
        
        boredButton.setImage(UIImage(named: "slime7"), for: .normal)
        boredButton.contentMode = .scaleToFill
        boredButtonLabel.text = "지루해 \(boredButtonCount)"
        boredButtonLabel.textAlignment = .center
        
        tiredButton.setImage(UIImage(named: "slime8"), for: .normal)
        tiredButton.contentMode = .scaleToFill
        tiredButtonLabel.text = "피곤해 \(tiredButtonCount)"
        tiredButtonLabel.textAlignment = .center
        
        sadButton.setImage(UIImage(named: "slime9"), for: .normal)
        sadButton.contentMode = .scaleToFill
        sadButtonLabel.text = "슬퍼 \(sadButtonCount)"
        sadButtonLabel.textAlignment = .center
        
        resetButton.setTitle("감정 다시 정하기", for: .normal)
        resetButton.backgroundColor = .white
        resetButton.tintColor = .black
        resetButton.layer.cornerRadius = 10
    }
    
    @IBAction func happyButtonTapped(_ sender: UIButton) {
//        happyButtonCount += Int.random(in: 1...10)
        happyButtonCount += 1
        happyButtonLabel.text = "행복해 \(happyButtonCount)"
    }
    
    @IBAction func loveButtonTapped(_ sender: UIButton) {
        loveButtonCount += 1
        loveButtonLabel.text = "사랑해 \(loveButtonCount)"
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        likeButtonCount += 1
        likeButtonLabel.text = "좋아해 \(likeButtonCount)"
    }
    
    @IBAction func embarrassmentButtonTapped(_ sender: UIButton) {
        embarrassmentButtonCount += 1
        embarrassmentButtonLabel.text = "당황해 \(embarrassmentButtonCount)"
    }
    
    @IBAction func upSetButtonTapped(_ sender: UIButton) {
        upSetButtonCount += 1
        upSetButtonLabel.text = "속상해 \(upSetButtonCount)"
    }
    
    @IBAction func depressedButtonTapped(_ sender: UIButton) {
        depressedButtonCount += 1
        depressedButtonLabel.text = "우울해 \(depressedButtonCount)"
    }
    
    @IBAction func boredButtonTapped(_ sender: UIButton) {
        boredButtonCount += 1
        boredButtonLabel.text = "지루해 \(boredButtonCount)"

    }
    
    @IBAction func tiredButtonTapped(_ sender: UIButton) {
        tiredButtonCount += 1
        tiredButtonLabel.text = "피곤해 \(tiredButtonCount)"

    }
    
    @IBAction func sadButtonTapped(_ sender: UIButton) {
        sadButtonCount += 1
        sadButtonLabel.text = "슬퍼 \(sadButtonCount)"

    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        reset()

    }
    func reset() {
        happyButtonCount = 0
        happyButtonLabel.text = "행복해 \(happyButtonCount)"

        loveButtonCount = 0
        loveButtonLabel.text = "사랑해 \(loveButtonCount)"

        likeButtonCount = 0
        likeButtonLabel.text = "좋아해 \(likeButtonCount)"

        embarrassmentButtonCount = 0
        embarrassmentButtonLabel.text = "당황해 \(embarrassmentButtonCount)"

        
        upSetButtonCount = 0
        upSetButtonLabel.text = "속상해 \(upSetButtonCount)"

        depressedButtonCount = 0
        depressedButtonLabel.text = "우울해 \(depressedButtonCount)"

        boredButtonCount = 0
        boredButtonLabel.text = "지루해 \(boredButtonCount)"

        tiredButtonCount = 0
        tiredButtonLabel.text = "피곤해 \(tiredButtonCount)"

        sadButtonCount = 0
        sadButtonLabel.text = "슬퍼 \(sadButtonCount)"
    }
    
    
}
