import UIKit

var greeting = "Hello, playground"

// MARK: - Creating an Enum

enum CreateLightSwitchState {
    case on, off
}

// MARK: - Settings Values to Enum

enum LightSwitchState: String {
    case on = "ON"
    case off = "OFF"
}

// MARK: - Raw Values

print(LightSwitchState.on.rawValue) // ON
print(LightSwitchState.off.rawValue) // OFF

enum LightSwitchStateNumber: Int {
    case on, off
}

print(LightSwitchStateNumber.on.rawValue) // 0
print(LightSwitchStateNumber.off.rawValue) // 1

// MARK: - Value Matching

func lightSwitchPressed(_ lightSwitchState: LightSwitchState) -> String {
    if lightSwitchState == .on {
        return "Turn lights off"
    }
    else if lightSwitchState == .off {
        return "Turn lights on"
    }
    return "Light switch is neither on nor off"
}

lightSwitchPressed(.on)

func lightSwitchPressedSwitchStatement(_ lightSwitchState: LightSwitchState) -> String {
    
    switch lightSwitchState {
    case .on:
        return "Turn lights off"
    case .off:
        return "Turn lights on"
    }
}

lightSwitchPressedSwitchStatement(.on)

// MARK: - Associated Values

enum Plant {
    case succulent(String)
    case pothos(String)
    
}

var selectedPlant = Plant.succulent("Agave")

switch selectedPlant {
case .succulent(let type):
    print("Succulent Type Selected: \(type)")
case .pothos(let type):
    print("Pothos Type Selected: \(type)")
}

selectedPlant = Plant.pothos("Marble Queen")

switch selectedPlant {
case .succulent(let type):
    print("Succulent Type Selected: \(type)")
case .pothos(let type):
    print("Pothos Type Selected: \(type)")
}

// MARK: - CaseIterable

enum PlantFamily: CaseIterable {
    case succulent
    case pothos
    case bonsai
    case cactus
}

let allPlantFamiles = PlantFamily.allCases
allPlantFamiles.count
