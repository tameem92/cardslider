
import UIKit

class BookmarkView: UIStackView {
    
    
    open var bookmarked: Bool? = false {
        didSet {
            previousBookmarked = oldValue
            update()
        }
    }
    
    private var previousBookmarked: Bool?
    
    
    private func update() {
    }
}
