---
date: 2020-01-07 14:10
description: Pretty printing dates with foundation.
tags: extension, date, foundation
---
# What is time?

This wouldn't be a swift blog (or atleast a blog written in swift) without mention of some of the extensions I've come across / made use of in my travels.

I've decided that I want this to be the first post of many that introduces an extension that I've leveraged. Some of these will be trivial, some will be more complex. Whichever the case, take what you like and leave the rest.

*Note: I'm always open for a good debate on proper stylistic conventions and use cases. I don't pretend to know everything and value learning above all. For now, feel free to [email](mailto:hagonzalez94@gmail.com) me directly with any opinions and perhaps I'll feature you on a post.*

## Goal 

Part of writing a blog entirely in swift is coming to terms with the fact that not everything will be provided for you. Inlcuding (as of this post) an out of the box way for the site generator to automatically display timestamps on my posts.

That being said, this simple extension provides a helper function to return a nicer looking string from any given <code class="inline">Date</code> object in the format of <code class="inline">Month, day, year</code>. The extension automatically formats the date using this format but can accept other ISO 8601 compliant formats.

*Note: For a more complete reference, feel free check [this](https://nsdateformatter.com) out*

The extension makes use of the <code class="inline">DateFormatter</code> class from the <code class="inline">Foundation</code> library and assumes that the inputted date isn't <code class="inline">nil</code>. There you go, quick and simple.

## Extension

```
import Foundation

extension Date {
    func prettyPrintDate(withFormat format: String = "MMM dd, yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
```
