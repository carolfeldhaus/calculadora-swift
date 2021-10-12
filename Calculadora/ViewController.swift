//
//  ViewController.swift
//  Calculadora
//
//  Created by Caroline Feldhaus de Souza on 08/10/21.
//

import UIKit

class ViewController: UIViewController {

//outlets
    
    @IBOutlet weak var Display: UILabel!
    @IBOutlet weak var Result: UILabel!
    
    @IBOutlet weak var btac: UIButton!
    @IBOutlet weak var btMaisMenos: UIButton!
    @IBOutlet weak var btPorcentagem: UIButton!
    @IBOutlet weak var btDivisao: UIButton!
    @IBOutlet weak var btMultiplicacao: UIButton!
    @IBOutlet weak var btMenos: UIButton!
    @IBOutlet weak var btMais: UIButton!
    @IBOutlet weak var btIgual: UIButton!
    @IBOutlet weak var btVirgula: UIButton!
    
    
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt4: UIButton!
    @IBOutlet weak var bt5: UIButton!
    @IBOutlet weak var bt6: UIButton!
    @IBOutlet weak var bt7: UIButton!
    @IBOutlet weak var bt8: UIButton!
    @IBOutlet weak var bt9: UIButton!
    @IBOutlet weak var bt0: UIButton!
    
//variaveis
     
    var calculadora:String = ""
    var n1: Double = 0.0
    var n2: Double = 0.0
    var resultado: Double = 0.0
    
//view did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        limpartudo()
        // Do any additional setup after loading the view.
    }
    
//config do display
    
    func limpartudo(){
        calculadora = ""
        Display.text = ""
        Result.text = ""
    }
        
    
//funcoes calculadora
    
    func addOperacoes(value: String){
        calculadora = calculadora + value
        Display.text = calculadora
    }
    
    
//config dos botoes
    
    
    @IBAction func fbtAc(_ sender: UIButton) {
        limpartudo()
    }
    
    @IBAction func fbtMaisMenos(_ sender: UIButton) {
    }
    
    @IBAction func fbtPorcentagem(_ sender: UIButton) {
        addOperacoes(value: "%")
    }
    
    @IBAction func fbtDivisao(_ sender: UIButton) {
        addOperacoes(value: "/")
    }
    
    @IBAction func fbtMultiplicacao(_ sender: UIButton) {
        addOperacoes(value: "*")

    }
    
    @IBAction func fbtMenos(_ sender: UIButton) {
        addOperacoes(value: "-")
    }
    
    @IBAction func fbtMais(_ sender: UIButton) {
        addOperacoes(value: "+")
    }
  
    
    func formatResult(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func fbtIgual(_ sender: UIButton) {
        if(validarinput()) {
            
            let percentual = calculadora.replacingOccurrences(of: "%", with: "*0.01")
            let expressao = NSExpression(format: percentual)
            let resultado = expressao.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: resultado)
            Result.text = resultString
        }
        else {
            let alert = UIAlertController(title: "Entrada inválida", message: "Nao foi possível calcular", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func validarinput() -> Bool {
        var count = 0
        var funCharIndexes = [Int] ()
        
        for char in calculadora {
            if(caracteresEspeciais(char: char)) {
                funCharIndexes.append(count)
            }
        count += 1
        }
        
        var previous: Int = -1
        
        for index in funCharIndexes {
            if(index == 0){
                return false
                }
            if(index == calculadora.count - 1){
                return false
                }
            if(previous != -1) {
                if (index - previous == 1){
                    return false
                }
            }
            previous = index
        }
        
        return true
    }
    
    func caracteresEspeciais(char: Character) -> Bool {
        if(char == "*") {
            return true
        }
        if(char == "/") {
            return true
        }
        if(char == "+") {
            return true
        }
            return false
    }
    
    
    @IBAction func fbtVirgula(_ sender: UIButton) {
        addOperacoes(value: ".")
    }
    
    
    @IBAction func fbt1(_ sender: UIButton) {
        addOperacoes(value: "1")
    }
    
    @IBAction func fbt2(_ sender: UIButton) {
        addOperacoes(value: "2")
    }
    
    @IBAction func fbt3(_ sender: UIButton) {
        addOperacoes(value: "3")
    }
    
    @IBAction func fbt4(_ sender: UIButton) {
        addOperacoes(value: "4")
    }
    
    @IBAction func fbt5(_ sender: UIButton) {
        addOperacoes(value: "5")
    }
    
    @IBAction func fbt6(_ sender: UIButton) {
        addOperacoes(value: "6")
    }
    
    @IBAction func fbt7(_ sender: UIButton) {
        addOperacoes(value: "7")
    }
    
    @IBAction func fbt8(_ sender: UIButton) {
        addOperacoes(value: "8")
    }
    
    @IBAction func fbt9(_ sender: UIButton) {
        addOperacoes(value: "9")
    }
    
    @IBAction func fbt0(_ sender: UIButton) {
        addOperacoes(value: "0")
    }
    
}
