import SwiftUI
import HybridColor

extension Color {
   /**
    * - Description: These colors should closely align with the descriptions
    *                given, providing a visually appealing and cohesive set of
    *                hues for various design applications.
    */
   public static let defaultColorScheme: AttributedString.Colors = (
      primary: blueColor,
      secondary: greenColor,
      tertiary: redColor
   )
   // let blue: Color = .init(light: Color.blue/*.darker()*/, dark: Color.blue/*.lighter()*/)
   // let red: Color = .init(light: Color.red/*.darker()*/, dark: Color.red/*.lighter()*/)
   // let green: Color = .init(light: Color.green/*.darker()*/, dark: Color.green/*.lighter()*/)
}
/**
 * Default colors
 */
extension Color {
   /**
    * Blue color
    * - Fixme: ⚠️️ Add some more doc
    */
   fileprivate static let blueColor: Color = {
      #if os(iOS)
      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
         light: .init(uiColor: UIColor.systemBlue.darker(amount: 0.1)),
         dark: .init(uiColor: UIColor.systemBlue.lighter(amount: 0.4))
      )
      #elseif os(macOS)
      Color.blue
//      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
//         light: .init(nsColor: NSColor.blue.darker(amount: 0.1)),
//         dark: .init(nsColor: NSColor.blue.lighter(amount: 0.4))
//      )
      #endif
   }()
   /**
    * Green color
    * - Fixme: ⚠️️ Add some more doc
    */
   fileprivate static let greenColor: Color = {
      #if os(iOS)
      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
         light: .init(uiColor: UIColor.systemGreen.darker(amount: 0.1)),
         dark: .init(uiColor: UIColor.systemGreen.lighter(amount: 0.4))
      )
      #elseif os(macOS)
      Color.green
//      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
//         light: .init(nsColor: NSColor.green.darker(amount: 0.1)),
//         dark: .init(nsColor: NSColor.green.lighter(amount: 0.4))
//      )
      #endif
   }()
   /**
    * Red color
    * - Fixme: ⚠️️ Add some more doc
    */
   fileprivate static let redColor: Color = {
      #if os(iOS)
      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
         light: .init(uiColor: UIColor.systemRed.darker(amount: 0.4)),
         dark: .init(uiColor: UIColor.systemRed.lighter(amount: 0.1))
      )
      #elseif os(macOS)
      Color.red
//      .init( // - Fixme: ⚠️️ for some reason Color.blue crashes, so use Color(uiColor: .systemBlue)
//         light: .init(nsColor: NSColor.red.darker(amount: 0.4)),
//         dark: .init(nsColor: NSColor.red.lighter(amount: 0.1))
//      )
      #endif
   }()
}
