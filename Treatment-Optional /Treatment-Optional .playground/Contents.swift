import UIKit

// MARK: - Model
struct Pokemon {
    var name: String
    var type: String
    var damage: Int?
}

// MARK: - Vars
var pokemons: [Pokemon] = []
var sumDamage: Int = 0
var count: Int = 0

// MARK: - Append values in array
pokemons.append(Pokemon(name: "Charizard", type: "Fire", damage: 17))
pokemons.append(Pokemon(name: "Bulbasaur", type: "Grass", damage: nil))
pokemons.append(Pokemon(name: "Squirtle", type: "Water", damage: 15))

/// Use to guard values different nil and verify data
for pokemon in pokemons {
    guard let averageDamage = pokemon.damage else {
        continue
    }
    count += 1
    sumDamage += averageDamage
}

print("Guard let sum: \(sumDamage / count)")

/// Use if let values to acess block
for pokemon in pokemons {
    if let averageDamage = pokemon.damage {
        count += 1
        sumDamage += averageDamage
    }
}

print("If let sum: \(sumDamage / count)")
