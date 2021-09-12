//
//  EmojiModel.swift
//  EmojiModel
//
//  Created by Evgeniy Goncharov on 01.09.2021.
//

struct EmojiModel {
    var symbol: String
    var name: String
    var description: String
    var usege: String
    
    init (symbol: String = "", name: String = "", description: String = "", usege: String = "") {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usege = usege
    }
}


extension EmojiModel {
    static var all: [EmojiModel] {
        return [
            EmojiModel(symbol: "👀", name: "Глаза", description: "Большие глаза", usege: "Использовть когда необходимо показать взгляд"),
            EmojiModel(symbol: "🐰", name: "Заяц", description: "Изображение зайца", usege: "Трусливый заяц"),
            EmojiModel(symbol: "🥳", name: "Глаза", description: "Веселый смайлик", usege: "Использовть когда необходимо показать чувство праздника"),
            EmojiModel(symbol: "👍", name: "Глаза", description: "Поставить лайк", usege: "Использовть когда необходимо поставить лайк"),
            EmojiModel(symbol: "😀", name: "Глаза", description: "Веселая мордочка", usege: "Использовть когда необходимо показать радость"),
            EmojiModel(symbol: "⭐️", name: "Звезда", description: "Пятиконечная звезда", usege: "Использовть когда необходимо показать звезду"),
            
        ]
    }
    
    static func loadAll() -> [EmojiModel]? {
        return nil
    }
    
    
    static func loadDefaults() -> [EmojiModel] {
        return EmojiModel.all
    }
}
