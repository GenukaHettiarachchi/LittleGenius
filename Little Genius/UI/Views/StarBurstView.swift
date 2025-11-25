import UIKit

class StarBurstView: UIView {

    private var starLayers: [UILabel] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        isUserInteractionEnabled = false
        backgroundColor = .clear

        for _ in 0..<10 {
            let label = UILabel()
            label.text = "⭐️"
            label.font = UIFont.systemFont(ofSize: 40)
            label.alpha = 0
            addSubview(label)
            starLayers.append(label)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        for label in starLayers {
            let x = CGFloat.random(in: bounds.midX - 40...bounds.midX + 40)
            let y = CGFloat.random(in: bounds.midY - 40...bounds.midY + 40)
            label.center = CGPoint(x: x, y: y)
        }
    }

    func animate() {
        layoutIfNeeded()
        for (i, label) in starLayers.enumerated() {
            let delay = Double(i) * 0.08
            let dx = CGFloat.random(in: -140...140)
            let dy = CGFloat.random(in: -120...120)
            UIView.animate(withDuration: 1.2,
                           delay: delay,
                           options: [.curveEaseOut],
                           animations: {
                label.alpha = 1
                label.center = CGPoint(x: label.center.x + dx,
                                       y: label.center.y + dy)
                label.transform = CGAffineTransform(scaleX: 1.8, y: 1.8)
                label.alpha = 0
            }, completion: nil)
        }
    }
}
