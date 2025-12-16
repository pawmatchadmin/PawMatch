import Foundation

final class PremiumManager {
    static let shared = PremiumManager()

    private init() {}

    private(set) var isPremium: Bool = false

    func enablePremium() {
        isPremium = true
    }

    func disablePremium() {
        isPremium = false
    }

    func restorePremium() {
        // to be implemented with StoreKit restore
        isPremium = false
    }
}