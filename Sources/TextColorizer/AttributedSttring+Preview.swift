import SwiftUI
import HybridColor
/**
 * Preview
 * Maybe color the char types in password view
 * This will make the design more interesting
 * Using Attributes to do it
 * - Description: This is a preview of how to apply different colors to specific parts of the text using attributed strings. It creates a text string with letters, numbers, and symbols and assigns different colors to each type of character.
 */
#Preview(traits: .fixedLayout(width: 400, height: 240)) { // adds frame size restriction for ipad mac etc
   /**
    * Usage example
    * apply different colors to specific parts of the text using attributed strings
    */
   struct ContentView: View {
      let text = "abc123#$@" // "Hello 123 @#$" + "123abc@#"// "123abc@#" //  // "Hello 123 @#$" //  we first create a  text string with letters, numbers, and symbols.
      var body: some View {
         let colors: AttributedString.Colors = Color.defaultColorScheme // Color.colorScheme3 // (Color.palePurple, Color.hazyMint2, Color.suntanOrange2)/*2*/ // subdued colors. pale-purple, hazy-mint, suntan-orange
         let attrStr: AttributedString = .attributedString(text: text, colors: colors) //         var attributedString = AttributedString(String(text), attributes: .init([.foregroundColor: Color.red]))
         return Text(attrStr)
            .frame(maxWidth: 120) // limit width to show multiline vertical text
      }
   }
   let content = ContentView()
      .padding(16)
      .background(Color.blackOrWhite)
      #if os(macOS)
      .padding(.horizontal)
      #endif
   return ZStack {
      Rectangle() // A rectangle to fill the background
         .fill(Color.secondaryBackground) // Fills the rectangle with a secondary background color
         .ignoresSafeArea(.all) // Ignores the safe area on all sides
      VStack(spacing: .zero) { // A vertical stack with no spacing
         content // The content view
            .environment(\.colorScheme, .light) // Sets the environment to light mode
         content // The content view again
            .environment(\.colorScheme, .dark) // Sets the environment to dark mode
      }
   }
   .environment(\.colorScheme, .dark) // adds darkmode
}
