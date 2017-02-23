//
//  ViewTwo.swift
//  TapTest
//
//  Created by Don Mini on 2/22/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import Foundation
import UIKit
import MapKit
import Contacts


class ViewTwo: UIViewController {
	
	@IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
		
		print("tap!")
		
		let imageView = sender.view as! UIImageView
		let newImageView = UIImageView(image: imageView.image)
		newImageView.frame = self.view.frame
		newImageView.backgroundColor = .black
		newImageView.contentMode = .scaleAspectFit
		newImageView.isUserInteractionEnabled = true
		let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
		newImageView.addGestureRecognizer(tap)
		self.view.addSubview(newImageView)
	}
	
	func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
		sender.view?.removeFromSuperview()
	}
	
	@IBOutlet weak var art_image: UIImageView!
	
	
	@IBOutlet weak var map_button: UIButton!
	
	@IBOutlet weak var art_desc: UITextView!
	
	@IBOutlet weak var art_title: UILabel!
//	var artworkPin: Artwork!
	
	@IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
		
		self.view.backgroundColor = UIColor.yellow
		
	}
	
	@IBAction func right(_ sender: UISwipeGestureRecognizer) {
		
		self.view.backgroundColor = UIColor.blue
	}
	
	
	@IBAction func map_button(_ sender: AnyObject) {
//		let addressDict = [CNPostalAddressStreetKey:artworkPin.title!]
//		let coord = artworkPin.coordinate
//		let placemark = MKPlacemark(coordinate: coord, addressDictionary: addressDict)
//		let mapItem = MKMapItem(placemark:placemark)
//		let options = [MKLaunchOptionsDirectionsModeKey:
//			MKLaunchOptionsDirectionsModeDriving]
//		mapItem.openInMaps(launchOptions: options)
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
//		art_title.text = artworkPin.title
//		art_desc.text = artworkPin.discipline
		art_image.image = UIImage(named:"hamburger")
	}
	
}
