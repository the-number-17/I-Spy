//
//  ViewController.swift
//  I Spy
//
//  Created by Batch - 1 on 29/11/24.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var imageViewOutlet: UIImageView!
    @IBOutlet var scrollViewOutlet: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollViewOutlet.delegate = self
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlet
    }
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width
        let heightScale = size.height
        let scale = min(widthScale, heightScale)
        scrollViewOutlet.minimumZoomScale = scale
        scrollViewOutlet.zoomScale = scale
        
    }
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: imageViewOutlet.bounds.size)
    }

}

