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

        7. Scale :
            - to scale views
            - .resizable() - Needs to be called first than below scale modifiers, put directly after Image( … )
            - .scaleToFill(), .ignoreSAfeArea(), .scaleToFit()
            - Makes simpler to redeisgn as per devices

        8. Size :
            - similar to frame method of UI KIt
            - .frame(width: 300)
            - .frame(width: 300, height: 150)
            - .frame(minWidth: 150, maxWidth: 1000, maxHeight: 200)
            - .rotationEffect(.zero)

    - SOME MODIFIERS TO NOT WORK TOGETHER, SO ALWAYS NEED TO RELOOK & CLEAN UP THE CODE.
    
- Chapter 4 :
    - MVC v/s MVVM : 
        - Everything is struct here so value type. So passing values can be done in many ways 
        - In view heirarchy, to pass value in downword views can be easily done using var
        - To pass value in up word direction on changes of var, is tricky. Need to use wrappers.
            1. @State 
                - tracks changes in variables, 
                - triggers redraw of view, 
                - local to the struct so good practice to use private, 
                - can pass value from superview to subview
                - buttons are only one way to change states
            2. @Binding - similar to @State but passes value from subview to superview as well, two way, uses $ while getting value from subview to update.
            3. @ObservedObject - tracks changes in model & updates the view if any change occurs in model
    
    - Identifiable :
        - to identify items in models or array
        - specifies unique identity value
        - Modtly Int or UInt type
        - If a model var is Identifiable than directly can be used in ForEach loop without mentioning id parameter
        - $ goes always to higher level when Binding var is used in ForEach loop
        - id is the required property here (default: \.self or to use \.id or can rmeove it if Identifiable is extended))
    
    - List : 
        - Alternative of ForEach loops with Scrollview
        - Widely needed
        - Adds some seprators, sections with rows inside, UI enhancements & some more features than above way
        
        @BINDING IS A LINK, @STATE IS WHERE WE START I.E CONTENTVIEW OR ROOT VIEW OF PROJECT
        @BINDING TRANSFERS VALUE UP AND DONW THE HEIRARCHY , @STATE SINGLE SOURCE OF TRUTH
        
- Chapter 5 :
    - Observable objects in Models
        - This is needed to avoid overhead happens with @State / @Binding as not all data changes triggers view updates to redraw
        
        - ObservableObject protocol
            - Adopt ObservableObject protocol in model class that used for model
            - Uses class here to model to work efficiently 
        
        - @Published
            - Mention any at least one var with @Published wrapper to notify about any changes & redraw
            - Can have one or many @Published vars
            - Allows to track some model property but not all
        
        - @StateObject
            - single source of truth
            - starts view heirachy
        
        - @ObservedObject
            - similato binding
                
        - @EnvironmentObject
            - can show up anywhere in view or subview
            - will use @StateObject to find their initial value
            - need to put the environment object to preview
            - declare @StateObject in main view as environment var, use .environment(orders), env var will be available in any subview then
            - declare @EnvirnmentObject wrapper to access it in any view, use @EnvironmentObject var orders: OrderModel
            - must declare env object in previews to avoid crash using  .environmentObject(OrderModel()) modifier
            - while using this parameter won't be required
            
            - variations on this are called EnvironmentValeus -> system values
                    - .environment(\.colorScheme, .light) like .environment(<key name>, <value>) as modifier
                    - @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass? as var
                    - In an app with a lot of views and only a few scattered places in the hierarchy need this model
                
- Chapter 6 :
    - Controls :
        - uses binding vars
        
        - Toggle : switch
        
        - Stepper
        
        - Picker : multiselection, various types, 
            - 2 ways for passing data between pickers : both have pros & cons
            - 1.  Dependancy injection method
            - 2. 
        
        - Text : 
            - TextField
            - TextEditor
        
        - Lazy grids : Cell
        
        - Tap gestures
            - .onTapGesture { ... }
            - .onTapGesture(count: 2) { ... }
            -  .onLongPressGesture { ... }
            - Sequence matters here , more taps comes first
        
        - Animation : animation modifier
            - .animation(.easeOut, value: favourites)
            - withAnimation(.easeInOut) { ... }
            - .animation(.easeOut(duration: 0.7), value: favourites)
        
        - Matched Geometry
            - For moving one view to another view
            - Rules :
                1. Should have atleast one animation
                2. Should have unique views, so only have the view at one place
            - Use @NameSpace wrapper
            
- Navigation :
    1. Presenting a view
    2. Alerts - Presenting view requires binding vars
    3. 
            
            
    
    
    
    
Referances: 

- https://www.linkedin.com/learning/swiftui-essential-training-18764703/challenge-ratings-view?autoSkip=true&contextUrn=urn%3Ali%3AlearningCollection%3A7196859367734857728&resume=false
- https://developer.apple.com/sf-symbols/

