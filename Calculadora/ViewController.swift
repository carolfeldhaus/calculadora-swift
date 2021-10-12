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
     
    var n1: Double = 0.0
    var n2: Double = 0.0
    var operacao: String = ""
    var resultado: String = ""
    
//view did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//config do display
    func contaDisplay(_texto: String){
        
        guard let textoUsuario = Display.text else{
            return
        }
        Display.text = textoUsuario + _texto
    }
    
    func limpar(){
        n1 = 0
        n2 = 0
        operacao = ""
        Display.text = ""
        
    }
    
//config dos botoes
    
    
    @IBAction func fbtAc(_ sender: UIButton) {
        limpar()
    }
    
    @IBAction func fbtMaisMenos(_ sender: UIButton) {
    }
    
    @IBAction func fbtPorcentagem(_ sender: UIButton) {
        
    }
    
    @IBAction func fbtDivisao(_ sender: UIButton) {
        contaDisplay(_texto: ("/"))
    }
    
    @IBAction func fbtMultiplicacao(_ sender: UIButton) {
        contaDisplay(_texto: ("x"))
    }
    
    @IBAction func fbtMenos(_ sender: UIButton) {
        contaDisplay(_texto: ("-"))
    }
    
    @IBAction func fbtMais(_ sender: UIButton) {
        contaDisplay(_texto: ("+"))
    }
    
    @IBAction func fbtIgual(_ sender: UIButton) {
        
    }
    
    @IBAction func fbtVirgula(_ sender: UIButton) {
        contaDisplay(_texto: (","))
    }
    
    
    
    
    @IBAction func fbt1(_ sender: UIButton) {
        contaDisplay(_texto: ("1"))
    }
    
    @IBAction func fbt2(_ sender: UIButton) {
        contaDisplay(_texto: ("2"))
    }
    
    @IBAction func fbt3(_ sender: UIButton) {
        contaDisplay(_texto: ("3"))
    }
    
    @IBAction func fbt4(_ sender: UIButton) {
        contaDisplay(_texto: ("4"))
    }
    
    @IBAction func fbt5(_ sender: UIButton) {
        contaDisplay(_texto: ("5"))
    }
    
    @IBAction func fbt6(_ sender: UIButton) {
        contaDisplay(_texto: ("6"))
    }
    
    @IBAction func fbt7(_ sender: UIButton) {
        contaDisplay(_texto: ("7"))
    }
    
    @IBAction func fbt8(_ sender: UIButton) {
        contaDisplay(_texto: ("8"))
    }
    
    @IBAction func fbt9(_ sender: UIButton) {
        contaDisplay(_texto: ("9"))
    }
    
    @IBAction func fbt0(_ sender: UIButton) {
        contaDisplay(_texto: ("0"))
    }
    
    
}

