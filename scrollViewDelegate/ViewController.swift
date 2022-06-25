//
//  ViewController.swift
//  scrollViewDelegate
//
//  Created by Hsiao-Han Chi on 2022/6/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet var contentImageView: [UIImageView]!
    //顯示的照片統一儲存在Array中
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.backgroundStyle = .prominent
        // Do any additional setup after loading the view.
    }

    @IBAction func changePage(_ sender: UIPageControl) {
        //用Scroll View的寬乘以當前頁數，得到Scroll View應該捲動到的x座標
        let newPoint = CGPoint(x: scrollView.bounds.width * CGFloat(sender.currentPage), y: 0)
        //設定Scroll View應該捲動到的的新座標為剛剛算出來newPoint
        scrollView.setContentOffset(newPoint, animated: true)
        
    }
    
}

