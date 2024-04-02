//
//  Questao.swift
//  iQuiz
//
//  Created by Ana Luisa Rachaus on 31/03/24.
//

import Foundation

struct Questao {

    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
    
}

let questoes: [Questao] = [
    Questao(titulo: "Qual o sanatório mais mal assombrado do mundo ?", respostas: ["Tranquille", "Nocton Hall", "Waverly Hills"], respostaCorreta: 2),

    Questao(titulo: "Quando lançou Invocação do mal 1 no Brasil ?", respostas: ["2013", "2016", "2019"], respostaCorreta: 0),

    Questao(titulo: "Qual é a lenda japonesa mais assustadora ?", respostas: ["Shui Gui", "Kuchisake-Onna", "Bloody Mary"], respostaCorreta: 1),

    Questao(titulo: "Em Resident Evil 7 quem é a senhora debilitada ?", respostas: ["Eveline", "Zoe", "Marguerite"], respostaCorreta: 0),

    Questao(titulo: "Qual é o nome da mãe de Jason em Sexta-feira 13 ?", respostas: ["Jasmine", "Pamela", "Paula"], respostaCorreta: 1),

    Questao(titulo: "Qual é o nome do demônio em O Exorcista ?", respostas: ["Valak", "Lúcifer", "Pazuzu"], respostaCorreta: 2),

    Questao(titulo: "Em Resident evil 4 quem é o protagonista ?", respostas: ["Leon", "Krauser", "Wesker"], respostaCorreta: 0),

    Questao(titulo: "O Sanatório Waverly Hills foi construído para abrigar pacientes com ?", respostas: ["Peste negra", "Caxumba", "tuberculose"], respostaCorreta: 2),

    Questao(titulo: "Qual o nome da boneca mais mal assombrada do Museu Warren ?", respostas: ["Annabelle", "Brahms", "M3GAN"], respostaCorreta: 0),

    Questao(titulo: "Quem foi o criador do it A Coisa?", respostas: ["Mary Shelley", "Stephen King", "Scott Smith"], respostaCorreta: 1),
]


