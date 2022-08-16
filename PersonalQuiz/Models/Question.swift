//
//  Question.swift
//  PersonalQuiz
//
//  Created by Владимир Х. on 04.08.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animals: .dog),
                    Answer(title: "Рыба", animals: .cat),
                    Answer(title: "Морков", animals: .rabbit),
                    Answer(title: "Кукуруза", animals: .turtle)
                    ]
                
            ),
            Question(
                title: "Что вам нравится больше?",
                     type: .multiply,
                     answers: [
                        Answer(title: "Плавать", animals: .dog),
                        Answer(title: "Спать", animals: .cat),
                        Answer(title: "Обнимать", animals: .rabbit),
                        Answer(title: "Есть", animals: .turtle)
                     ]
            ),
            Question(
                title: "Любите ли вы поездки на машине?",
                     type: .ranged,
                     answers: [
                        Answer(title: "Ненавижу", animals: .cat),
                        Answer(title: "Нервничаю", animals: .rabbit),
                        Answer(title: "Не замечаю", animals: .turtle),
                        Answer(title: "Обожаю", animals: .dog)
                     ]
            )
        ]
    }
}
    
struct Answer {
    let title: String
    let animals: Animal
}

enum ResponseType {
    case single
    case multiply
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
