import Foundation

struct AnimeCharacter {
    var id: String
    var title: String
    var description: String
    var avatar: String
    
    init(id: String, title: String, description: String, avatar: String) {
        self.id = id
        self.title = title
        self.description = description
        self.avatar = avatar
    }
}
