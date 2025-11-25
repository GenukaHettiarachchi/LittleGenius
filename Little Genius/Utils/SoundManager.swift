import Foundation
import AVFoundation

class SoundManager {

    static let shared = SoundManager()

    private var correctPlayer: AVAudioPlayer?
    private var wrongPlayer: AVAudioPlayer?
    private var tapPlayer: AVAudioPlayer?

    private init() {
        correctPlayer = loadSound(named: "correct", type: "wav")
        wrongPlayer = loadSound(named: "wrong", type: "wav")
        tapPlayer = loadSound(named: "tap", type: "wav")
    }

    private func loadSound(named: String, type: String) -> AVAudioPlayer? {
        guard let url = Bundle.main.url(forResource: named, withExtension: type) else {
            print("Sound file not found: \(named).\(type)")
            return nil
        }
        do {
            let player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            return player
        } catch {
            print("Error loading sound: \(error)")
            return nil
        }
    }

    func playCorrect() {
        correctPlayer?.stop()
        correctPlayer?.currentTime = 0
        correctPlayer?.play()
    }

    func playWrong() {
        wrongPlayer?.stop()
        wrongPlayer?.currentTime = 0
        wrongPlayer?.play()
    }

    func playTap() {
        tapPlayer?.stop()
        tapPlayer?.currentTime = 0
        tapPlayer?.play()
    }
}
