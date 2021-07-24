import Foundation

struct AnimeCharacterDetailViewModel {
    var repository: AnimeCharactersRepository
    
    var animeCharacter: AnimeCharacter?
    
    var animeCharacterLiveData: ((Result<AnimeCharacter>) -> Void)?
    
    private let id: String
    
    mutating func getAnimeCharacterDetail() {
        animeCharacterLiveData?(.begin)
        self.repository.getAnimeCharacterDetail(animeCharaterId: self.id) { result in
            switch result {
            case .success(let animeCharacter):
                self.animeCharacter = animeCharacter
            default:
                break
            }
            self.animeCharacterLiveData?(result)
        }
    }
    
    private init(repository: AnimeCharactersRepository, animeCharacterId id: String) {
        self.repository = repository
        self.animeCharacter = nil
        self.id = id
    }
    
    private static var instance: AnimeCharacterDetailViewModel? = nil
    
    static func create(animeCharacterId id: String) -> AnimeCharacterDetailViewModel {
        return AnimeCharacterDetailViewModel(
            repository: DefaultAnimeCharactersRepository.create(),
            animeCharacterId: id
        )
    }
}
