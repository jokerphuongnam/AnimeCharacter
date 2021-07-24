import Foundation

protocol AnimeCharactersNetwork {
    func getAnimeCharacters(_ result: (Result<[AnimeCharacter]>) -> Void)
    func getAnimeCharacterDetail(animeCharaterId id: String, _ result: (Result<AnimeCharacter>) -> Void)
    
    static func create() -> AnimeCharactersNetwork
}
