//
//  SubViewController.swift
//  EmotionDiary
//
//  Created by 김윤우 on 5/18/24.
// 버튼 + 레이블, 버튼만, 컬렉션뷰
// tag를 이용해서


import UIKit

class SubViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    
    @IBOutlet var emotionLabelList: [UILabel]!
    @IBOutlet var leftBarButtonItem: UIBarButtonItem!
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var happyButtonLabel: UILabel!
    
    
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var loveButtonLabel:UILabel!
    
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeButtonLabel: UILabel!
   
    
    @IBOutlet var embarrassmentButton: UIButton!
    @IBOutlet var embarrassmentButtonLabel: UILabel!
    
    @IBOutlet var upSetButton: UIButton!
    @IBOutlet var upSetButtonLabel: UILabel!

    @IBOutlet var depressedButton: UIButton!
    @IBOutlet var depressedButtonLabel: UILabel!
   
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var boredButtonLabel: UILabel!
 
    @IBOutlet var tiredButton: UIButton!
    @IBOutlet var tiredButtonLabel: UILabel!
  
    @IBOutlet var sadButton: UIButton!
    @IBOutlet var sadButtonLabel: UILabel!
    
    @IBOutlet var resetButton: UIButton!
    
    var count = [0, 0, 0, 0, 0 , 0, 0, 0 , 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Button Style이 Plain일 경우 contentmode가 적용되지 않음
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.contentMode = .scaleToFill
        
        leftBarButtonItem.image = UIImage(systemName: "menucard")
        leftBarButtonItem.tintColor = .black
        
        resetButton.setTitle("감정 다시 정하기", for: .normal)
        resetButton.backgroundColor = .white
        resetButton.tintColor = .black
        resetButton.layer.cornerRadius = 10
        
        loadUi()
        print(count, "viewdidload loadui 호출")
        labelUiInitialize()
        buttonUiInitialize()
    }
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            count[sender.tag] += 1
            happyButtonLabel.text = "행복해 \(count[sender.tag])"
//            print(count[sender.tag])
        case 1:
            count[sender.tag] += 1
            loveButtonLabel.text = "사랑해 \(count[sender.tag])"
//            print(count[sender.tag])
        case 2:
            count[sender.tag] += 1
            likeButtonLabel.text =
            "좋아해 \(count[sender.tag])"
        case 3:
            count[sender.tag] += 1
            embarrassmentButtonLabel.text =
            "당황해 \(count[sender.tag])"
        case 4:
            count[sender.tag] += 1
            upSetButtonLabel.text =
            "속상해 \(count[sender.tag])"
        case 5:
            count[sender.tag] += 1
            depressedButtonLabel.text =
            "우울해 \(count[sender.tag])"
        case 6:
            count[sender.tag] += 1
            boredButtonLabel.text =
            "지루해 \(count[sender.tag])"
        case 7:
            count[sender.tag] += 1
            tiredButtonLabel.text =
            "피곤해 \(count[sender.tag])"
        case 8:
            count[sender.tag] += 1
            sadButtonLabel.text =
            "슬퍼 \(count[sender.tag])"
        default:
           return
        }
        print(count, "버튼 눌렀을때 count")
        savedCount()
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        reset()
       
    }
    // label 디자인
    func labelUiDesign(_ labelName: UILabel, _ emtion: String, _ number:Int) {
        labelName.text = "\(emtion) \(count[number])"
        labelName.textAlignment = .center
    }
    // button 디자인
    func buttonUiDesign(_ button:UIButton, _ imageName:String) {
        
        button.setImage(UIImage(named: "\(imageName)"), for: .normal)
        button.contentMode = .scaleToFill
    }
    
    func labelUiInitialize() {
        labelUiDesign(happyButtonLabel, "행복해", count[0])
        labelUiDesign(loveButtonLabel, "사랑해", count[1])
        labelUiDesign(likeButtonLabel, "좋아해", count[2])
        labelUiDesign(embarrassmentButtonLabel,  "당황해", count[3])
        labelUiDesign(upSetButtonLabel, "속상해", count[4])
        labelUiDesign(depressedButtonLabel, "우울해", count[5])
        labelUiDesign(boredButtonLabel, "지루해", count[6])
        labelUiDesign(tiredButtonLabel, "피곤해", count[7])
        labelUiDesign(sadButtonLabel, "슬퍼", count[8])
    }

    func buttonUiInitialize() {
        
        buttonUiDesign(happyButton, "slime1")
        buttonUiDesign(loveButton, "slime2")
        buttonUiDesign(likeButton, "slime3")
        buttonUiDesign(embarrassmentButton, "slime4")
        buttonUiDesign(upSetButton, "slime5")
        buttonUiDesign(depressedButton, "slime6")
        buttonUiDesign(boredButton, "slime7")
        buttonUiDesign(tiredButton, "slime8")
        buttonUiDesign(sadButton, "slime9")
        
    }
    
    
    func reset() {
        count = [0, 0, 0, 0, 0 ,0, 0, 0 ,0 ]
        savedCount()
        labelUiInitialize()
    }
    
    func savedCount() {
        print(count, "저장됨 savedcount실행" )
        UserDefaults.standard.set(count, forKey: "emotionCount")
    }
    
    // any 타입은 런타임 시점에 타입이 결정
    //as?는 타입 캐스팅을 시도하여 성공하면 해당 타입으로 변환하고 실패하면 nil을 반환
    func loadUi() {
        if let savedCounts = UserDefaults.standard.array(forKey: "emotionCount") as? [Int] {
            count = savedCounts
            print(count,"loadUI, UserDefault에서 가져온 count")
        } else {
            count = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        }
        print(count, "라벨이니셜직전 count")
//        labelUiInitialize()
    }
    
    
}
