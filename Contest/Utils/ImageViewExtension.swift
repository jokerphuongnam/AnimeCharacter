import Foundation
import UIKit

extension UIImageView {
    func loadFromUrl(from urlString: String){
        DispatchQueue.global().async {
            guard let url = URL(string: urlString), let data = try? Data(contentsOf: url) else {
                return
            }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
    }
}
