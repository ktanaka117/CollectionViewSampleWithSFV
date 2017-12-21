//
//  ViewController.swift
//  ScrollingCollectionFollowView
//
//  Created by tanaka.kenji on 2017/12/21.
//  Copyright © 2017年 tanaka.kenji. All rights reserved.
//

import UIKit
import ScrollingFollowView

class ViewController: UIViewController {

    @IBOutlet weak var searchScrollingFollowView: ScrollingFollowView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var sellScrollingFollowView: ScrollingFollowView!
    
    // SFV means Scrolling Follow View.
    @IBOutlet weak var searchSFVTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var sellSFVBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchSFVHeight = searchScrollingFollowView.frame.size.height
        let statusBarHeight = UIApplication.shared.statusBarFrame.size.height
        searchScrollingFollowView.setup(
            constraint: searchSFVTopConstraint,
            maxFollowPoint: searchSFVHeight + statusBarHeight,
            minFollowPoint: 0)
        
        let sellSFVHeight = sellScrollingFollowView.frame.size.height
        sellScrollingFollowView.setup(
            constraint: sellSFVBottomConstraint,
            maxFollowPoint: sellSFVHeight,
            minFollowPoint: 0)
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        searchScrollingFollowView.didScroll(scrollView)
        sellScrollingFollowView.didScroll(scrollView)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.width/2 - 20, height: 190)
    }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        return cell
    }
}

