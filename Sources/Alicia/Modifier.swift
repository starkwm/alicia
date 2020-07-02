import Carbon

public let modifierIdentifiers = [
    "shift",
    "ctrl", "control",
    "alt", "opt", "option",
    "cmd", "command",
    "hyper",
]

public class Modifier {
    public static func flags(for modifiers: [String]) -> UInt32 {
        let mods = modifiers.map { $0.lowercased() }

        var flags = 0

        if mods.contains("shift") {
            flags |= shiftKey
        }

        if mods.contains("ctrl") || mods.contains("control") {
            flags |= controlKey
        }

        if mods.contains("alt") || mods.contains("opt") || mods.contains("option") {
            flags |= optionKey
        }

        if mods.contains("cmd") || mods.contains("command") {
            flags |= cmdKey
        }

        if mods.contains("hyper") {
            flags |= cmdKey | optionKey | shiftKey | controlKey
        }

        return UInt32(flags)
    }
}
