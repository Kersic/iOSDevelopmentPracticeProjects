//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Tadeja Keršič on 19/10/2020.
//

import Foundation

struct Emoji {
    var character = ""
    var description = ""
}

func getEmojis() -> [Emoji] {
    let emojiCharacters =  ["😃", "🤪", "🤬", "🧐", "😱", "😎", "🙃", "🤩", "🤯", "😇", "😍", "🥺", "🤗", "🥶", "😬", "😵", "🤠", "🤐", "🤥", "😷", "🤒", "🥳", "😉", "😝", "😴"]
    var emojis: [Emoji] = []
    for emoji in emojiCharacters {
        emojis.append(Emoji(character: emoji, description: emoji.unicodeScalars.first!.properties.name!.capitalized))
    }
    return emojis
}
