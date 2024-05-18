# Certification_SwiftUI

This is demo project that I have created while learning SwiftUI as below. 
 
SwiftUI
- Reactive pattern
- Universal compatibility
- All about stack views
- Supports previews
- Less coding
- Faster development
- based on strcuts & one required property body which returns a view

- In previews 
    - Live view to edit from code
    - Selection View to edit from the preview
- Chapter 2 : Views
    - StackView : 
        - HStack
        - VStack
        - ZStack
        - alignment, spacing parameter
        - Needs Spacer()
    - Texts :
        - Less control over alignment, so needs Spacer() with Stack
        - format parameter 
        - Core of the app UI to display any kind of texts
    - ImageViews :
        - Can be added using 2 ways :
            - 1. SFSymbols 
                - Add images as icons, 
                - Can use SF Symbol Mac app, provided by Apple
                - Image(SystemName: “<name of image>”)
            - 2. Assets 
                - To add images / bigger ones which won’t be available as icons
                - Image(“<name of image>”)
            - 3. UIImage
                - It returns optional image if don’t have the image in assets
                - if let img = UiImage(named: “<name>) { Image(uiIMage: img) } else { Image(“name from assets”) }
        - Can use font modifier to resize images
    - Iteration with forEach
        - ForEach(range, id: ./self) { … }
        - Foreach have parameter id to identify each items
        - Should use ScrollView { … } to see all items when the list grows
    - Code folding ribbon helps better while writing or wrapping code
    - Labels :
        - To combine images with texts
        - For buttons
        - 2 Variations : 
            - 1. Text + Image assets / sf symbol - Label(“Cart”, systemImage: “cart”)
            - 2. Closures of Text & icon - Label { Text(“cart” } icon: { Image( … ) 

    - Add Views
        1. SwiftUI template File -> New -> SwiftUI
        2. Balnk swift file File -> New -> Swift -> Add import SwiftUI then type view -> Allows to add basic code for view & refactor view file name
        - make more views to make the code manageable, smaller, modular, and reusable

    - Extract Subviews - IMp is to add view from where it is coming from & pass the data as parameters (vars)
        1. By right click & select the option 
        2. Simply copy paste to the relevant View

    - Subviews with parameters


Referances: 

- https://www.linkedin.com/learning/swiftui-essential-training-18764703/challenge-ratings-view?autoSkip=true&contextUrn=urn%3Ali%3AlearningCollection%3A7196859367734857728&resume=false
- https://developer.apple.com/sf-symbols/

