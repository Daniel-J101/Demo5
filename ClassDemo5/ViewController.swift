//
//  ViewController.swift
//  ClassDemo5
//
//  Created by Joe Miller on 7/20/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView:UIScrollView!
    var imageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView = UIImageView(image: UIImage(named: "Screen Shot 2022-07-20 at 9.47.14 AM"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = .black
        scrollView.contentSize = imageView.bounds.size
        scrollView.contentOffset = CGPoint(x:1000, y:450)
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1 //how small can i get
        scrollView.maximumZoomScale = 4.0 //how big can i get
        scrollView.zoomScale = 1.0        //whats the initial zoom
        
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }


}

