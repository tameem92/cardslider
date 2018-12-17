
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
        let newBookmarkValue = bookmarked ?? false
        print("Updating bookmark with new value: \(newBookmarkValue)")
        guard let bookmarkButton = arrangedSubviews.filter({ $0 is UIButton }) as? [UIButton] else { return }
        
        print("Found button \(bookmarkButton)")
        if bookmarkButton.count > 0 {
            bookmarkButton[0].isSelected = newBookmarkValue
        }
    }
}
