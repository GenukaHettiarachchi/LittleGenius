import UIKit

class BackgroundShapesView: UIView {

    private var shapeLayers: [CALayer] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        isUserInteractionEnabled = false
        backgroundColor = .clear

        for _ in 0..<10 {
            let shape = UIView()
            let size: CGFloat = CGFloat.random(in: 60...140)
            shape.frame = CGRect(x: CGFloat.random(in: 0...800),
                                 y: CGFloat.random(in: 0...600),
                                 width: size,
                                 height: size)
            shape.layer.cornerRadius = size / 2
            shape.backgroundColor = randomSoftColor().withAlphaComponent(0.22)
            shape.transform = CGAffineTransform(scaleX: CGFloat.random(in: 0.6...1.2),
                                                y: CGFloat.random(in: 0.6...1.2))
            addSubview(shape)

            animate(shape: shape)
        }
    }

    private func randomSoftColor() -> UIColor {
        let colors: [UIColor] = [
            UIColor(red: 59/255, green: 130/255, blue: 246/255, alpha: 1),
            UIColor(red: 168/255, green: 85/255, blue: 247/255, alpha: 1),
            UIColor(red: 250/255, green: 204/255, blue: 21/255, alpha: 1),
            UIColor(red: 249/255, green: 115/255, blue: 129/255, alpha: 1)
        ]
        return colors.randomElement() ?? .white
    }

    private func animate(shape: UIView) {
        let duration = Double.random(in: 10...18)
        let dx = CGFloat.random(in: -120...120)
        let dy = CGFloat.random(in: -80...80)

        UIView.animate(withDuration: duration,
                       delay: 0,
                       options: [.autoreverse, .repeat, .allowUserInteraction],
                       animations: {
            shape.center = CGPoint(x: shape.center.x + dx,
                                   y: shape.center.y + dy)
            shape.alpha = 0.35
        }, completion: nil)
    }
}
