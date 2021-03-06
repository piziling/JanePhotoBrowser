//
//  PhotoBrowserDelegate.swift
//  PhotoBrowser
//
//  Created by Gordon Tucker on 8/1/19.
//  Copyright © 2019 Jane. All rights reserved.
//

import UIKit

public protocol PhotoBrowserDelegate: class {
    func photoBrowser(_ photoBrowser: PhotoBrowserView, photoTappedAtIndex index: Int, mode: PhotoBrowserMode)
    func photoBrowser(_ photoBrowser: PhotoBrowserView, photoViewedAtIndex index: Int, mode: PhotoBrowserMode)
    func photoBrowser(_ photoBrowser: PhotoBrowserView, thumbnailTappedAtIndex index: Int, mode: PhotoBrowserMode)
    func photoBrowser(_ photoBrowser: PhotoBrowserView, thumbnailViewedAtIndex index: Int, mode: PhotoBrowserMode)
    func photoBrowserFullscreenWasDismissed()
}

public extension PhotoBrowserDelegate {
    func photoBrowser(_ photoBrowser: PhotoBrowserView, photoViewedAtIndex index: Int, mode: PhotoBrowserMode) { }
    func photoBrowser(_ photoBrowser: PhotoBrowserView, thumbnailTappedAtIndex index: Int, mode: PhotoBrowserMode) { }
    func photoBrowser(_ photoBrowser: PhotoBrowserView, thumbnailViewedAtIndex index: Int, mode: PhotoBrowserMode) { }
    func photoBrowserFullscreenWasDismissed() { }
}

//Provide default implementation for UIViewController delegates
public extension PhotoBrowserDelegate where Self: UIViewController {
    func photoBrowser(_ photoBrowser: PhotoBrowserView, photoTappedAtIndex index: Int, mode: PhotoBrowserMode) {
        if mode == .inline {
            photoBrowser.presentFullscreen(from: self)
        }
    }
}
