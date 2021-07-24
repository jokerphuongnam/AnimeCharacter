import Foundation

protocol AnimeCharactersRepository {
    var local: AnimeCharactersLocal? { get }
    var network: AnimeCharactersNetwork? { get }
    
    func getAnimeCharacters(_ result: (Result<[AnimeCharacter]>) -> Void)
    func getAnimeCharacterDetail(animeCharaterId id: String, _ result: (Result<AnimeCharacter>) -> Void)
    
    static func create() -> AnimeCharactersRepository
}

class DefaultAnimeCharactersRepository : AnimeCharactersRepository {
    var local: AnimeCharactersLocal?
    
    var network: AnimeCharactersNetwork?
    
    func getAnimeCharacters(_ result: (Result<[AnimeCharacter]>) -> Void) {
        local?.getAnimeCharacters(result)
    }
    
    func getAnimeCharacterDetail(animeCharaterId id: String, _ result: (Result<AnimeCharacter>) -> Void) {
        local?.getAnimeCharacterDetail(animeCharaterId: id, result)
    }
    
    private init(local: AnimeCharactersLocal?, network: AnimeCharactersNetwork?) {
        self.local = local
        self.network = network
    }
    
    private static var instance: AnimeCharactersRepository? = nil
    
    static func create() -> AnimeCharactersRepository {
        if instance == nil {
            instance = DefaultAnimeCharactersRepository(
                local: DefaultAnimeCharactersLocal.create(),
                network: nil
            )
        }
        return instance!
    }
}
