import UIKit

class InvisibleButton: UIButton {
    private var hilightedColor: UIColor {
        return self.tintColor.withAlphaComponent(0.1)
    }

    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? hilightedColor : UIColor.clear
        }
    }
}
