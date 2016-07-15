//
//  LyricsUtil.swift
//  Silly Song
//
//  Created by Diego Malone on 7/14/16.
//  Copyright © 2016 Diego Malone. All rights reserved.
//

import Foundation


func shortNameFromName(fullName: String) -> String {
    let lowercaseName = fullName.lowercaseString
    let vowelSet = NSCharacterSet(charactersInString: "aeiou")
    let nameWithoutDiacritic = lowercaseName.stringByFoldingWithOptions(.DiacriticInsensitiveSearch, locale: nil)
    
    if let firstVowelRange = nameWithoutDiacritic.rangeOfCharacterFromSet(vowelSet) {
        return lowercaseName.substringFromIndex(firstVowelRange.startIndex)
    }
    
    return lowercaseName
}

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joinWithSeparator("\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    var songLyrics = lyricsTemplate
    
    songLyrics = songLyrics.stringByReplacingOccurrencesOfString("<FULL_NAME>", withString: fullName)
    songLyrics = songLyrics.stringByReplacingOccurrencesOfString("<SHORT_NAME>", withString: shortNameFromName(fullName))
    
    return songLyrics;
}
