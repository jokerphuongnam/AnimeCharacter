import Foundation

struct AnimeCharactersViewModel {
    
    var repository: AnimeCharactersRepository
    
    var animeCharacters: [AnimeCharacter] = []
    
    var animeCharactersLiveData: ((Result<[AnimeCharacter]>)->Void)? = nil
    
    mutating func getAnimeCharacters() {
        self.repository.getAnimeCharacters { result in
            switch result {
            case .success(let animeCharacters):
                self.animeCharacters = animeCharacters
            default:
                break
            }
            self.animeCharactersLiveData?(result)
        }
    }
    
    private init(repository: AnimeCharactersRepository){
        self.repository = repository
    }
    
    
    static func create() -> AnimeCharactersViewModel {
        return AnimeCharactersViewModel(
            repository: DefaultAnimeCharactersRepository.create()
        )
    }
}
