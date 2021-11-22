//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    @IBOutlet weak var txtMatricula: UITextField!
    @IBOutlet weak var txtCarrera: UITextField!
    @IBOutlet weak var txtSemestre: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtPromedio: UITextField!
    @IBOutlet weak var txtBeca: UITextField!
    
    
    var callBackAgregarEstudiante : ((Estudiante) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar estudiante"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let apellido = txtApellido.text!
        let matricula = txtMatricula.text!
        let carrera = txtCarrera.text!
        let semestre = txtSemestre.text!
        let correo = txtCorreo.text!
        let celular = txtCelular.text!
        let direccion = txtDireccion.text!
        let promedio = txtPromedio.text!
        let beca = txtBeca.text!
        
        let estudiante = Estudiante(nombre: nombre, apellido: apellido, matricula: matricula, carrera: carrera, semestre: semestre, correo: correo, celular: celular, direccion: direccion, promedio: promedio, beca: beca)
        
        callBackAgregarEstudiante!(estudiante)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
