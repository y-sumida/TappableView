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

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    public override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    private func commonInit() {
        super.setTitle(nil, for: .normal)
        super.setTitle(nil, for: .highlighted)
    }

    override func setTitle(_ title: String?, for state: UIControl.State) {
        // 無効化する
    }
}
