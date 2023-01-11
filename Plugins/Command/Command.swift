import PackagePlugin
import Foundation
import OSLog

@main
struct Command: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let myAppTool = try context.tool(named: "swiftgen")
    }
}
