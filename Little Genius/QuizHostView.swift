import SwiftUI
import UIKit

struct QuizHostView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> QuizRootViewController {
        return QuizRootViewController()
    }

    func updateUIViewController(_ uiViewController: QuizRootViewController, context: Context) {
        // No-op for now
    }
}
