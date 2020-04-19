//
//  ChattingVC.swift
//  AuyolayoutPractice
//
//  Created by Gunter on 2020/04/19.
//  Copyright © 2020 Gunter. All rights reserved.
//

import UIKit

class ChattingVC: UIViewController {

    @IBOutlet weak var chatTableView: UITableView! {
        didSet {
            chatTableView.delegate = self
            chatTableView.dataSource = self
            chatTableView.separatorStyle = .none
        }
    }
    
    @IBOutlet weak var inputTextView: UITextView! {
        didSet {
            inputTextView.delegate = self
        }
    }
    
    @IBOutlet weak var inputViewBottomMargin: NSLayoutConstraint!
    @IBOutlet weak var inputTextViewHeight: NSLayoutConstraint!
    
    var chatDatas = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.register(
            UINib(nibName: "MyChattingCell", bundle: nil),
            forCellReuseIdentifier: "MyChattingCell"
        )
        
        chatTableView.register(
            UINib(nibName: "YourChattingCell", bundle: nil),
            forCellReuseIdentifier: "YourChattingCell"
        )
        
    
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
        
    }

    @objc func keyboardWillHide(noti: Notification) {
        
        let notiInfo = noti.userInfo!
        
        let animDurationm = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        UIView.animate(withDuration: animDurationm) {
            self.inputViewBottomMargin.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func keyboardWillShow(noti: Notification) {
        let notiInfo = noti.userInfo!
        let keyboardFrame = notiInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let height = keyboardFrame.size.height - self.view.safeAreaInsets.bottom
        
        let animDurationm = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        UIView.animate(withDuration: animDurationm) {
            self.inputViewBottomMargin.constant = height
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func sendString(_ sender: UIButton) {
        chatDatas.append(inputTextView.text)
        inputTextView.text = ""

        let lastIndexPath = IndexPath(row: chatDatas.count - 1, section: 0)
        
        //로우 하나만 갱신 테이블 전체 갱신되는게 비효율 적임
        chatTableView.insertRows(at: [lastIndexPath], with: .automatic)
       
        inputTextViewHeight.constant = 40
        
        chatTableView.scrollToRow(at: lastIndexPath, at: .bottom, animated: true)
    }
    
}

extension ChattingVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row % 2 == 0 {
            let myChatCell = tableView.dequeueReusableCell(
                withIdentifier: "MyChattingCell",
                for: indexPath
            ) as! MyChattingCell
            
            myChatCell.myTextView.text = chatDatas[indexPath.row]
            myChatCell.selectionStyle = .none
            return myChatCell
        } else {
            let yourChatCell = tableView.dequeueReusableCell(
                withIdentifier: "YourChattingCell",
                for: indexPath
            ) as! YourChattingCell
            
            yourChatCell.yourTextView.text = chatDatas[indexPath.row]
            yourChatCell.selectionStyle = .none
            return yourChatCell
        }
    }
    
}

extension ChattingVC: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        
        if textView.contentSize.height <= 40 {
            inputTextViewHeight.constant = 40
        } else if textView.contentSize.height >= 100 {
            inputTextViewHeight.constant = 100
        } else {
            inputTextViewHeight.constant = textView.contentSize.height
        }

    }
    
}
