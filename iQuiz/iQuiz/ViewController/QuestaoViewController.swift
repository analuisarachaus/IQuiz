//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Ana Luisa Rachaus on 30/03/24.
//

import UIKit

class QuestaoViewController: UIViewController {

    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!

    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {

        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag

        if usuarioAcertouResposta {

            pontuacao += 1
            print("O usuário acertou!")
            sender.backgroundColor = UIColor.corDeFundoVerde

        } else {

            sender.backgroundColor = UIColor.corDeFundoVermelho
        }

        if numeroQuestao < questoes.count - 1 {

            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)

        } else {

            navegaParaTelaDesempenho()
        }

    }

    func navegaParaTelaDesempenho() {

        performSegue(withIdentifier: "irParaATelaDesempenho", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        configurarLayout()
        configurarQuestao()
    }

    func configurarLayout() {

        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center

        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }

    }

    @objc func configurarQuestao() {

        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo

        for botao in botoesRespostas {

            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]

            botao.setTitle(tituloBotao, for: .normal)

            botao.backgroundColor = UIColor(red: 164/255, green: 154/255, blue: 247/255, alpha: 1.0)

        }

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }

        desempenhoVC.pontuacao = pontuacao
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
