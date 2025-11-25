import UIKit

enum AnimationHelper {

    static func fadeIn(view: UIView, duration: TimeInterval) {
        view.alpha = 0
        UIView.animate(withDuration: duration) {
            view.alpha = 1
        }
    }

    static func buttonBounce(_ button: UIView, completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.12,
                       animations: {
            button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }, completion: { _ in
            UIView.animate(withDuration: 0.18,
                           animations: {
                button.transform = CGAffineTransform.identity
            }, completion: { _ in
                completion?()
            })
        })
    }

    static func correctBounce(_ view: UIView) {
        UIView.animate(withDuration: 0.15,
                       animations: {
            view.backgroundColor = UIColor(red: 34/255, green: 197/255, blue: 94/255, alpha: 1.0)
            view.transform = CGAffineTransform(scaleX: 1.08, y: 1.08)
        }, completion: { _ in
            UIView.animate(withDuration: 0.2) {
                view.transform = .identity
            }
        })
    }

    static func wrongShake(_ view: UIView) {
        let originalTransform = view.transform
        UIView.animateKeyframes(withDuration: 0.4, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                view.transform = originalTransform.translatedBy(x: -16, y: 0)
                view.backgroundColor = UIColor(red: 239/255, green: 68/255, blue: 68/255, alpha: 1.0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                view.transform = originalTransform.translatedBy(x: 16, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                view.transform = originalTransform.translatedBy(x: -10, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                view.transform = originalTransform
            }
        }, completion: nil)
    }

    static func highlightCorrect(_ button: UIButton) {
        UIView.animate(withDuration: 0.2) {
            button.backgroundColor = UIColor(red: 34/255, green: 197/255, blue: 94/255, alpha: 1.0)
        }
    }

    static func focusGain(on button: UIButton) {
        UIView.animate(withDuration: 0.22) {
            button.transform = CGAffineTransform(scaleX: 1.09, y: 1.09)
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.4
            button.layer.shadowRadius = 14
            button.layer.shadowOffset = CGSize(width: 0, height: 10)
        }
    }

    static func focusLose(on button: UIButton) {
        UIView.animate(withDuration: 0.18) {
            button.transform = .identity
            button.layer.shadowOpacity = 0
        }
    }
}
