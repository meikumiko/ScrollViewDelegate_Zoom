//
//  extension.swift
//  scrollViewDelegate
//
//  Created by Hsiao-Han Chi on 2022/6/20.
//

import Foundation
import UIKit

extension ViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //contentOffset.x是ScrollView捲動的值，除以ScrollView的寬就可以得到現在應該是捲動到第幾頁
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        pageControl.currentPage = Int(page)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        //以Page Control的所在頁數判斷現在是哪一張圖片要進行縮放動作
        return contentImageView[pageControl.currentPage]
    }
}
