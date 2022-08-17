//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Владимир Х. on 11.08.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultTextLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    private func updateResult() {
        
        var frequencyAnimals: [Animal: Int] = [:]
        let animals = answers.map { $0.animals }
        
        for animal in animals {
            if let animalCount = frequencyAnimals[animal] {
                frequencyAnimals.updateValue(animalCount + 1, forKey: animal)
            } else {
                frequencyAnimals[animal] = 1
                }
            }
        
        for animal in animals {
            frequencyAnimals[animal] = (frequencyAnimals[animal] ?? 0) + 1
        }
        
        let sortedFrequencyAnimal = frequencyAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyAnimal.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: Animal?) {
        resultLabel.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        resultTextLabel.text = animal?.definition ?? ""
    }
}
