//
//  TestRemoveVC.swift
//  
//
//  Created by huahuahu on 2018/12/30.
//

import UIKit

class TestRemoveVC: UIViewController {

    @IBOutlet weak var removeButton: UIButton!
    let leftView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.accessibilityLabel = "leftview"
        view.accessibilityIdentifier = "leftview"
        return view
    }()

    let rightView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.accessibilityLabel = "rightview"
        view.accessibilityIdentifier = "rightview"
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(leftView)
        view.addSubview(rightView)
        leftView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().labeled("左边对齐")
            make.top.equalTo(removeButton.snp.bottom).offset(200)
            make.height.equalTo(100)
            make.trailing.equalTo(rightView.snp.leading).offset(-30).labeled("间距30")
        }
        rightView.snp.makeConstraints { (make) in
            make.top.height.equalTo(leftView).labeled("垂直和leftView对齐")
            make.trailing.equalToSuperview().labeled("右边对齐")
            make.width.equalTo(100).labeled("宽度100")
        }

    }
    
    @IBAction func onRemove(_ sender: Any) {
        leftView.removeFromSuperview()
//        rightView.removeFromSuperview()

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
