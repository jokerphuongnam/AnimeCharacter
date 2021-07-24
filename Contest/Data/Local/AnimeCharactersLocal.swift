import Foundation

protocol AnimeCharactersLocal {
    func getAnimeCharacters(_ result: (Result<[AnimeCharacter]>) -> Void)
    func getAnimeCharacterDetail(animeCharaterId id: String, _ result: (Result<AnimeCharacter>) -> Void)
    
    static func create() -> AnimeCharactersLocal
}

struct DefaultAnimeCharactersLocal : AnimeCharactersLocal {
    private init(){}
    
    private var animeCharacters: [AnimeCharacter] = .fakeData
    
    func getAnimeCharacters(_ result: (Result<[AnimeCharacter]>) -> Void) {
        result(.success(animeCharacters))
    }
    
    func getAnimeCharacterDetail(animeCharaterId id: String, _ result: (Result<AnimeCharacter>) -> Void) {
        for animeCharacter in animeCharacters {
            if animeCharacter.id == id {
                result(.success(animeCharacter))
                return
            }
        }
        result(.error(AppErrors.notFound))
    }
    
    private static var instance: AnimeCharactersLocal? = nil
    
    static func create() -> AnimeCharactersLocal {
        if instance == nil {
            instance = DefaultAnimeCharactersLocal()
        }
        return instance!
    }
}
