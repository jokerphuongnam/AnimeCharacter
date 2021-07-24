import Foundation

enum Result<Data> {
    case begin
    case success(Data)
    case error(Error)
}
