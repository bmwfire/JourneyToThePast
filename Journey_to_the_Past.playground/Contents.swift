// Journey to the Past:
// An adventure that dives from outer space to a close up view of Steve Jobs vacationing at his favorite Hawaii Resort, Kona Village.
// Come and see what lies ahead . . .

import UIKit
import PlaygroundSupport


//MARK: Zoom Animation Class
class zoomEffect : NSObject {
    
    // Programmatically create 5 buttons
    let button_1 = UIButton.init(type: .system)
    let button_2 = UIButton.init(type: .system)
    let button_3 = UIButton.init(type: .system)
    let button_4 = UIButton.init(type: .system)
    let button_5 = UIButton.init(type: .system)
    
    // Define the label used for Kona Village caption
    let caption = UILabel(frame: CGRect(x: 30, y: 400, width: 600, height: 52))
    
    // Define the image view for animation images
    let transitionView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))
    
    // Define the image view to switch to see Kona Village
    let switchView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))
    
    // Define the image view to get closer to Kona Village
    let closeView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))
    
    // Define the image view to switch to Steve Jobs
    let swapView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))
    
    // Define the image view to get close to iPhone camera
    let zoomView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))
    
    // Define two arrays to hold the images for animations
    var zoomImages_1: [UIImage] = [UIImage(named: "ZoomVideo-0.jpg")!, UIImage(named: "ZoomVideo-1.jpg")!,
                                   UIImage(named: "ZoomVideo-2.jpg")!, UIImage(named: "ZoomVideo-3.jpg")!,
                                   UIImage(named: "ZoomVideo-4.jpg")!, UIImage(named: "ZoomVideo-5.jpg")!,
                                   UIImage(named: "ZoomVideo-6.jpg")!, UIImage(named: "ZoomVideo-7.jpg")!,
                                   UIImage(named: "ZoomVideo-8.jpg")!, UIImage(named: "ZoomVideo-9.jpg")!,
                                   UIImage(named: "ZoomVideo-10.jpg")!, UIImage(named: "ZoomVideo-11.jpg")!,
                                   UIImage(named: "ZoomVideo-12.jpg")!, UIImage(named: "ZoomVideo-13.jpg")!,
                                   UIImage(named: "ZoomVideo-14.jpg")!, UIImage(named: "ZoomVideo-15.jpg")!,
                                   UIImage(named: "ZoomVideo-16.jpg")!, UIImage(named: "ZoomVideo-17.jpg")!,
                                   UIImage(named: "ZoomVideo-18.jpg")!, UIImage(named: "ZoomVideo-19.jpg")!,
                                   UIImage(named: "ZoomVideo-20.jpg")!, UIImage(named: "ZoomVideo-21.jpg")!,
                                   UIImage(named: "ZoomVideo-22.jpg")!, UIImage(named: "ZoomVideo-23.jpg")!,
                                   UIImage(named: "ZoomVideo-24.jpg")!, UIImage(named: "ZoomVideo-25.jpg")!,
                                   UIImage(named: "ZoomVideo-26.jpg")!, UIImage(named: "ZoomVideo-27.jpg")!,
                                   UIImage(named: "ZoomVideo-28.jpg")!, UIImage(named: "ZoomVideo-29.jpg")!,
                                   UIImage(named: "ZoomVideo-30.jpg")!, UIImage(named: "ZoomVideo-31.jpg")!,
                                   UIImage(named: "ZoomVideo-32.jpg")!, UIImage(named: "ZoomVideo-33.jpg")!,
                                   UIImage(named: "ZoomVideo-34.jpg")!, UIImage(named: "ZoomVideo-35.jpg")!,
                                   UIImage(named: "ZoomVideo-36.jpg")!, UIImage(named: "ZoomVideo-37.jpg")!,
                                   UIImage(named: "ZoomVideo-38.jpg")!, UIImage(named: "ZoomVideo-39.jpg")!,
                                   UIImage(named: "ZoomVideo-40.jpg")!, UIImage(named: "ZoomVideo-41.jpg")!,
                                   UIImage(named: "ZoomVideo-42.jpg")!, UIImage(named: "ZoomVideo-43.jpg")!,
                                   UIImage(named: "ZoomVideo-44.jpg")!, UIImage(named: "ZoomVideo-45.jpg")!,
                                   UIImage(named: "ZoomVideo-46.jpg")!, UIImage(named: "ZoomVideo-47.jpg")!,
                                   UIImage(named: "ZoomVideo-48.jpg")!, UIImage(named: "ZoomVideo-49.jpg")!]
    
    var zoomImages_2: [UIImage] = [UIImage(named: "Restaurant_0.5 06.jpg")!, UIImage(named: "Restaurant_0.5 07.jpg")!,
                                   UIImage(named: "Restaurant_0.5 08.jpg")!, UIImage(named: "Restaurant_0.5 09.jpg")!,
                                   UIImage(named: "Restaurant_0.5 10.jpg")!, UIImage(named: "Restaurant_0.5 11.jpg")!,
                                   UIImage(named: "Restaurant_0.5 12.jpg")!, UIImage(named: "Restaurant_0.5 13.jpg")!,
                                   UIImage(named: "Restaurant_0.5 14.jpg")!, UIImage(named: "Restaurant_0.5 15.jpg")!,
                                   UIImage(named: "Restaurant_0.5 16.jpg")!, UIImage(named: "Restaurant_0.5 17.jpg")!,
                                   UIImage(named: "Restaurant_0.5 18.jpg")!, UIImage(named: "Restaurant_0.5 19.jpg")!,
                                   UIImage(named: "Restaurant_0.5 20.jpg")!, UIImage(named: "Restaurant_0.5 21.jpg")!,
                                   UIImage(named: "Restaurant_0.5 22.jpg")!, UIImage(named: "Restaurant_0.5 23.jpg")!,
                                   UIImage(named: "Restaurant_0.5 24.jpg")!, UIImage(named: "Restaurant_0.5 25.jpg")!,
                                   UIImage(named: "Restaurant_0.5 26.jpg")!, UIImage(named: "Restaurant_0.5 27.jpg")!,
                                   UIImage(named: "Restaurant_0.5 28.jpg")!, UIImage(named: "Restaurant_0.5 29.jpg")!,
                                   UIImage(named: "Restaurant_0.5 30.jpg")!, UIImage(named: "Restaurant_0.5 31.jpg")!,
                                   UIImage(named: "Restaurant_0.5 32.jpg")!, UIImage(named: "Restaurant_0.5 33.jpg")!,
                                   UIImage(named: "Restaurant_0.5 34.jpg")!, UIImage(named: "Restaurant_0.5 35.jpg")!,
                                   UIImage(named: "Restaurant_0.5 36.jpg")!, UIImage(named: "Restaurant_0.5 37.jpg")!,
                                   UIImage(named: "Restaurant_0.5 38.jpg")!, UIImage(named: "Restaurant_0.5 39.jpg")!,
                                   UIImage(named: "Restaurant_0.5 40.jpg")!, UIImage(named: "Restaurant_0.5 41.jpg")!,
                                   UIImage(named: "Restaurant_0.5 42.jpg")!, UIImage(named: "Restaurant_0.5 43.jpg")!,
                                   UIImage(named: "Restaurant_0.5 44.jpg")!, UIImage(named: "Restaurant_0.5 45.jpg")!,
                                   
                                   UIImage(named: "BMW 001.jpg")!, UIImage(named: "BMW 002.jpg")!,
                                   UIImage(named: "BMW 003.jpg")!, UIImage(named: "BMW 004.jpg")!,
                                   UIImage(named: "BMW 005.jpg")!, UIImage(named: "BMW 006.jpg")!,
                                   UIImage(named: "BMW 007.jpg")!, UIImage(named: "BMW 008.jpg")!,
                                   UIImage(named: "BMW 009.jpg")!, UIImage(named: "BMW 010.jpg")!,
                                   UIImage(named: "BMW 011.jpg")!, UIImage(named: "BMW 012.jpg")!,
                                   UIImage(named: "BMW 013.jpg")!, UIImage(named: "BMW 014.jpg")!,
                                   UIImage(named: "BMW 015.jpg")!, UIImage(named: "BMW 016.jpg")!,
                                   UIImage(named: "BMW 017.jpg")!, UIImage(named: "BMW 018.jpg")!,
                                   UIImage(named: "BMW 019.jpg")!, UIImage(named: "BMW 020.jpg")!,
                                   UIImage(named: "BMW 021.jpg")!, UIImage(named: "BMW 022.jpg")!,
                                   UIImage(named: "BMW 023.jpg")!, UIImage(named: "BMW 024.jpg")!,
                                   UIImage(named: "BMW 025.jpg")!, UIImage(named: "BMW 026.jpg")!,
                                   UIImage(named: "BMW 027.jpg")!, UIImage(named: "BMW 028.jpg")!,
                                   UIImage(named: "BMW 029.jpg")!, UIImage(named: "BMW 030.jpg")!,
                                   UIImage(named: "BMW 031.jpg")!, UIImage(named: "BMW 032.jpg")!,
                                   UIImage(named: "BMW 033.jpg")!, UIImage(named: "BMW 034.jpg")!,
                                   UIImage(named: "BMW 035.jpg")!, UIImage(named: "BMW 036.jpg")!,
                                   UIImage(named: "BMW 037.jpg")!, UIImage(named: "BMW 038.jpg")!,
                                   UIImage(named: "BMW 039.jpg")!, UIImage(named: "BMW 040.jpg")!,
                                   UIImage(named: "BMW 041.jpg")!, UIImage(named: "BMW 042.jpg")!,
                                   UIImage(named: "BMW 043.jpg")!, UIImage(named: "BMW 044.jpg")!,
                                   UIImage(named: "BMW 045.jpg")!, UIImage(named: "BMW 046.jpg")!,
                                   UIImage(named: "BMW 047.jpg")!, UIImage(named: "BMW 048.jpg")!,
                                   UIImage(named: "BMW 049.jpg")!, UIImage(named: "BMW 050.jpg")!,
                                   UIImage(named: "BMW 051.jpg")!, UIImage(named: "BMW 052.jpg")!,
                                   UIImage(named: "BMW 053.jpg")!, UIImage(named: "BMW 054.jpg")!,
                                   UIImage(named: "BMW 055.jpg")!, UIImage(named: "BMW 056.jpg")!,
                                   UIImage(named: "BMW 057.jpg")!, UIImage(named: "BMW 058.jpg")!,
                                   UIImage(named: "BMW 059.jpg")!, UIImage(named: "BMW 060.jpg")!,
                                   UIImage(named: "BMW 061.jpg")!, UIImage(named: "BMW 062.jpg")!,
                                   UIImage(named: "BMW 063.jpg")!, UIImage(named: "BMW 064.jpg")!,
                                   UIImage(named: "BMW 065.jpg")!, UIImage(named: "BMW 066.jpg")!,
                                   UIImage(named: "BMW 067.jpg")!, UIImage(named: "BMW 068.jpg")!,
                                   UIImage(named: "BMW 069.jpg")!, UIImage(named: "BMW 070.jpg")!,
                                   UIImage(named: "BMW 071.jpg")!, UIImage(named: "BMW 072.jpg")!,
                                   UIImage(named: "BMW 073.jpg")!, UIImage(named: "BMW 074.jpg")!,
                                   UIImage(named: "BMW 075.jpg")!, UIImage(named: "BMW 076.jpg")!,
                                   UIImage(named: "BMW 077.jpg")!, UIImage(named: "BMW 078.jpg")!,
                                   UIImage(named: "BMW 079.jpg")!, UIImage(named: "BMW 080.jpg")!,
                                   UIImage(named: "BMW 081.jpg")!, UIImage(named: "BMW 082.jpg")!,
                                   UIImage(named: "BMW 083.jpg")!, UIImage(named: "BMW 084.jpg")!,
                                   UIImage(named: "BMW 085.jpg")!, UIImage(named: "BMW 086.jpg")!,
                                   UIImage(named: "BMW 087.jpg")!, UIImage(named: "BMW 088.jpg")!,
                                   UIImage(named: "BMW 089.jpg")!, UIImage(named: "BMW 090.jpg")!,
                                   UIImage(named: "BMW 091.jpg")!, UIImage(named: "BMW 092.jpg")!,
                                   UIImage(named: "BMW 093.jpg")!, UIImage(named: "BMW 094.jpg")!,
                                   UIImage(named: "BMW 095.jpg")!, UIImage(named: "BMW 096.jpg")!,
                                   UIImage(named: "BMW 097.jpg")!, UIImage(named: "BMW 098.jpg")!,
                                   UIImage(named: "BMW 099.jpg")!, UIImage(named: "BMW 100.jpg")!]
    
    // Method to get the button variable
    func get_button_1() -> UIButton {
        return button_1
    }
    
    func get_button_2() -> UIButton {
        return button_2
    }
    
    func get_button_3() -> UIButton {
        return button_3
    }
    
    func get_button_4() -> UIButton {
        return button_4
    }
    
    func get_button_5() -> UIButton {
        return button_5
    }
    
    // Method to get the caption label
    func get_caption() -> UILabel {
        return caption
    }
    
    // Method to get the image views
    func get_transitionView() -> UIImageView {
        return transitionView
    }
    
    func get_switchView() -> UIImageView {
        return switchView
    }
    
    func get_closeView() -> UIImageView {
        return closeView
    }
    
    func get_swapView() -> UIImageView {
        return swapView
    }
    
    func get_zoomView() -> UIImageView {
        return zoomView
    }
    
    // Helper functions that do the transitions
    func animate_1(imageView: UIImageView, images: [UIImage]) {
        
        //Show the last image in the array
        imageView.image = UIImage(named: "ZoomVideo-49.jpg")
        
        //Begin animation
        imageView.animationImages = images
        imageView.animationDuration = 9.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    func animate_2(imageView: UIImageView, images: [UIImage]) {
        
        //Show the last image in the array
        imageView.image = UIImage(named: "BMW 100.jpg")
        
        //Begin animation
        imageView.animationImages = images
        imageView.animationDuration = 20.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    // Function doing the globe zoom
    @objc func buttonClicked_1() {
        
        // Call animate function
        animate_1(imageView: transitionView, images: zoomImages_1)
        
        // Remove the button
        button_1.removeFromSuperview()
        
        // Build new button
        button_2.frame = CGRect(x: 30, y: 430, width: 200, height: 52)
        button_2.setTitle("click to continue", for: .normal)
        button_2.backgroundColor = UIColor.white
        button_2.tintColor = UIColor.darkGray
        button_2.layer.cornerRadius = 15.0
        button_2.addTarget(self, action: #selector(buttonClicked_2), for: .touchUpInside)
    }
    
    // Function switching to Kona Village
    @objc func buttonClicked_2() {
        
        // Switch to view of Kona Village
        let image = UIImage(named: "kona_village1.jpg")
        
        // Add a nice transition
        UIView.transition(with: self.switchView, duration: 2, options: .transitionCrossDissolve, animations: {
            self.switchView.image = image
        }, completion: nil)
        
        // Add caption to Kona Village
        UILabel.transition(with: caption, duration: 2, options: .transitionCrossDissolve, animations: {
            self.caption.text = "Kona Village Resort, Steve Jobs' Favorite Vacation Spot"
        }, completion: nil)
        
        caption.center = CGPoint(x: 280, y: 50)
        caption.textAlignment = .center
        caption.font = UIFont(name: "HelveticaNeue", size: 20.0)
        caption.textColor = UIColor.black
        caption.backgroundColor = UIColor.white
        
        // Safety Feature: Remove the button
        button_2.removeFromSuperview()
        
        // Build new button
        button_3.frame = CGRect(x: 30, y: 430, width: 200, height: 52)
        button_3.setTitle("click to continue", for: .normal)
        button_3.backgroundColor = UIColor.white
        button_3.tintColor = UIColor.darkGray
        button_3.layer.cornerRadius = 15.0
        button_3.addTarget(self, action: #selector(buttonClicked_3), for: .touchUpInside)
    }
    
    // Function allowing a closer view of Kona Village
    @objc func buttonClicked_3() {
        
        // Switch to closer view of Kona Village
        let image = UIImage(named: "kona_village2.jpg")
        
        // Add a nice transition
        UIView.transition(with: self.closeView, duration: 2, options: .transitionCrossDissolve, animations: {
            self.closeView.image = image
        }, completion: nil)
        
        // Safety Feature: Remove the button
        button_3.removeFromSuperview()
        
        // Build new button
        button_4.frame = CGRect(x: 30, y: 430, width: 200, height: 52)
        button_4.setTitle("click to continue", for: .normal)
        button_4.backgroundColor = UIColor.white
        button_4.tintColor = UIColor.darkGray
        button_4.layer.cornerRadius = 15.0
        button_4.addTarget(self, action: #selector(buttonClicked_4), for: .touchUpInside)
    }
    
    // Function switching to Steve Jobs at a restaurant
    @objc func buttonClicked_4() {
        
        // Switch to Steve Jobs' photo
        let image = UIImage(named: "Restaurant_0.5 06.jpg")
        
        // Add a nice transition
        UIView.transition(with: self.swapView, duration: 2, options: .transitionCrossDissolve, animations: {
            self.swapView.image = image
        }, completion: nil)
        
        // Safety Feature: Remove the button
        button_4.removeFromSuperview()
        
        // Build new button
        button_5.frame = CGRect(x: 30, y: 430, width: 200, height: 52)
        button_5.setTitle("click to continue", for: .normal)
        button_5.backgroundColor = UIColor.white
        button_5.tintColor = UIColor.darkGray
        button_5.layer.cornerRadius = 15.0
        button_5.addTarget(self, action: #selector(buttonClicked_5), for: .touchUpInside)
    }
    
    // Function doing the final scene
    @objc func buttonClicked_5() {
        
        // Call animate function
        animate_2(imageView: zoomView, images: zoomImages_2)
        
        // Remove the button
        button_5.removeFromSuperview()
    }
}


//MARK: Initial Setup
print("Disclaimer: Please note that there will be slight delays for some buttons due to a huge amount of images used for smooth frame by frame animation... Enjoy a Journey to the Past!")

// Create an empty view
let view = UIView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))

// Create zoomEffect object
let zoom = zoomEffect()

// Create an image view to hold the image
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 680, height: 500))

// Define the initial image
let image = UIImage(named: "ZoomVideo-0.jpg")

// Set the image to the imageView
imageView.image = image

// Set the imageView to the view
view.addSubview(imageView)

// Set the transition view to main view
view.addSubview(zoom.get_transitionView())

// Add features to button
var tempButton = zoom.get_button_1()
tempButton.frame = CGRect(x: 30, y: 430, width: 200, height: 52)
tempButton.setTitle("click to start", for: .normal)
tempButton.backgroundColor = UIColor.white
tempButton.tintColor = UIColor.darkGray
tempButton.layer.cornerRadius = 15.0
tempButton.addTarget(zoom, action: #selector(zoom.buttonClicked_1), for: .touchUpInside)
view.addSubview(tempButton)


//MARK: View of Kona Village

// Create new button
view.addSubview(zoom.get_button_2())

// Show Kona Village
view.addSubview(zoom.get_switchView())

// Add caption to Kona Village image
view.addSubview(zoom.get_caption())


//MARK: Closer view of Kona Village

// Create new button
view.addSubview(zoom.get_button_3())

// Show close up of Kona Village
view.addSubview(zoom.get_closeView())


//MARK: Steve Jobs with waitress

// Create new button
view.addSubview(zoom.get_button_4())

// Show Steve Jobs restaurant photo
view.addSubview(zoom.get_swapView())


//MARK: Significance of Steve Jobs' iPhone 4S

// Create new button
view.addSubview(zoom.get_button_5())

// Show Steve Jobs restaurant photo
view.addSubview(zoom.get_zoomView())


// Present the view in Playground
PlaygroundPage.current.liveView = view
