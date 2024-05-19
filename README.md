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
            - 2. Closures of Text & icon - Label { Text(“cart” } icon: { Image( … ) }

    - Add Views
        1. SwiftUI template File -> New -> SwiftUI
        2. Balnk swift file File -> New -> Swift -> Add import SwiftUI then type view -> Allows to add basic code for view & refactor view file name
        - make more views to make the code manageable, smaller, modular, and reusable

    - Extract Subviews - IMp is to add view from where it is coming from & pass the data as parameters (vars)
        1. By right click & select the option 
        2. Simply copy paste to the relevant View

   - Subviews with parameters
        - Add var while extracting subview to get real-time data and pass it while calling the view and also in previews

- Chapter 3 :
    - Presenting Views :
        - SwiftUI views reacting to any var changes

    - Space modifiers :
        1. Padding: Widely used, be sure while using it else might give unpredictable results, 
            - .padding(5)
            - .padding(.bottom, 5)
            - .padding([.leading, .trailing], 5)
            - -ve padding possible, mostly used with shape modifier .padding(.trailing, -20)

        2. Shape : 
            - clipShape()
            - Circle()
            - Rounded Rectangle()

        3. Text: Typography
            - .font(…)
            - embed within containers/stack for large content
            - fontWeight(…) 
            - .bold()
            - .font(custom: “<font name>”, fixedSize: 18)
            - .font(custom: “<font name>”, size: 18, relativeTo: .body ) -> for suporting dynamic font

        4. Color : Forground
            - forgroundColor(<system color>) —> .foregroundColor(.white)
            - forgroundColor(<custom color>) —> .foregroundColor(Color(red: 0.38, green: 0.28, blue: 0.67))
            - using Color assets set —> .foregroundColor(Color(“<color asset name>”))

        5. Background : 
            - Sequence matters when used with padding() modifier
            - .backgroundColor(…)
            - can use gradient as parameter
                1. Angular
                2. Circular
                3. Linear
                .background(.linearGradient(colors: [.cyan, Color("Sky"), Color("Surf"), .white], startPoint: .topLeading, endPoint: .bottom))
            - Many ways to put shape or colors as background

        6. Material & Shadows :
            - Needed to handle different color schemes - light / dark
            - .background(<material style> …)
            - foregroundStyle(
            -  .shadow(radius: 5)
            -  .shadow(color: .teal, radius: 15, x: 8, y: 8)

Referances: 

- https://www.linkedin.com/learning/swiftui-essential-training-18764703/challenge-ratings-view?autoSkip=true&contextUrn=urn%3Ali%3AlearningCollection%3A7196859367734857728&resume=false
- https://developer.apple.com/sf-symbols/

