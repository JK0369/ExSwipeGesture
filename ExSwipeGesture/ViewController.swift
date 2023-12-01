//
//  ViewController.swift
//  ExSwipeGesture
//
//  Created by 김종권 on 2023/12/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeRightGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeRight(_:)))
        swipeRightGestureRecognizer.direction = .right
        view.addGestureRecognizer(swipeRightGestureRecognizer)
    }
    
    // 오른쪽으로 스와이프할 때 호출되는 메서드
    @objc func handleSwipeRight(_ gestureRecognizer: UISwipeGestureRecognizer) {
        switch gestureRecognizer.state {
        case .possible:
            print("possible")
        case .began:
            print("began")
        case .changed:
            print("changed")
        case .ended:
            print("ended")
        case .cancelled:
            print("cancelled")
        case .failed:
            print("failed")
        case .recognized:
            print("recognized")
        @unknown default:
            fatalError()
        }
    }
}
