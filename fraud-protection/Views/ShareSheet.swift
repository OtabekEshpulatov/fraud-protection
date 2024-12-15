import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
    var items: [Any] // Content to share (e.g., text, image, URL)
    var excludedActivityTypes: [UIActivity.ActivityType]? = nil

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        controller.excludedActivityTypes = excludedActivityTypes
        return controller
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // No updates required
    }
}
