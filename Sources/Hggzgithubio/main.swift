import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Hggzgithubio: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://hggz.github.io")!
    var name = "Silverpoint"
    var description = "A journal written in <i>Swift</i> by Hugo A.G"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Hggzgithubio().publish(withTheme: .hggz)
