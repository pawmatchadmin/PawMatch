import Foundation

final class PremiumManager {
    static let shared = PremiumManager()

    private let premiumKey = "isPremiumUser"

    private init() {
        // Load saved premium state on launch
        isPremium = UserDefaults.standard.bool(forKey: premiumKey)
    }

    private(set) var isPremium: Bool = false

    func enablePremium() {
        isPremium = true
        UserDefaults.standard.set(true, forKey: premiumKey)
    }

    func disablePremium() {
        isPremium = false
        UserDefaults.standard.set(false, forKey: premiumKey)
    }

    func restorePremium() {
        // This will later be replaced by StoreKit restore logic
        let savedValue = UserDefaults.standard.bool(forKey: premiumKey)
        isPremium = savedValue
    }
}