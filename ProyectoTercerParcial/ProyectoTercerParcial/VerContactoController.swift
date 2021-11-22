//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var estudiante : Estudiante?
    var callbackActualizarTVEstudiantes : (() -> Void)?
    var callbackEliminarEstudiante : ((Int) -> Void)?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblApellido: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    @IBOutlet weak var lblSemestre: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
    @IBOutlet weak var lblCelular: UILabel!
    @IBOutlet weak var lblDireccion: UILabel!
    @IBOutlet weak var lblPromedio: UILabel!
    @IBOutlet weak var lblBeca: UILabel!
    
    @IBOutlet weak var lblNombreEditar: UILabel!
    @IBOutlet weak var lblApellidoEditar: UILabel!
    @IBOutlet weak var lblMatriculaEditar: UILabel!
    @IBOutlet weak var lblCarreraEditar: UILabel!
    @IBOutlet weak var lblSemestreEditar: UILabel!
    @IBOutlet weak var lblCorreoEditar: UILabel!
    @IBOutlet weak var lblCelularEditar: UILabel!
    @IBOutlet weak var lblDireccionEditar: UILabel!
    @IBOutlet weak var lblPromedioEditar: UILabel!
    @IBOutlet weak var lblBecaEditar: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Estudiante"
        
        lblNombre.text = estudiante!.nombre
        lblApellido.text = estudiante!.apellido
        lblMatricula.text = estudiante!.matricula
        lblCarrera.text = estudiante!.carrera
        lblSemestre.text = "\("Semestre: ") \(estudiante!.semestre)"
        lblCorreo.text = estudiante!.correo
        lblCelular.text = estudiante!.celular
        lblDireccion.text = estudiante!.direccion
        lblPromedio.text = "\("Promedio: ") \(estudiante!.promedio)"
        lblBeca.text = "\("Tipo de Beca: ") \(estudiante!.beca)"
        
        
        txtNombre.text = estudiante!.nombre
        txtApellido.text = estudiante!.apellido
        txtMatricula.text = estudiante!.matricula
        txtCarrera.text = estudiante!.direccion
        txtSemestre.text = estudiante!.celular
        txtCorreo.text = estudiante!.correo
        txtCelular.text = estudiante!.celular
        txtDireccion.text = estudiante!.direccion
        txtPromedio.text = estudiante!.promedio
        txtBeca.text = estudiante!.beca
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarEstudiante!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Estudiante"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblNombre.isHidden = true
        lblApellido.isHidden = true
        lblMatricula.isHidden = true
        lblCarrera.isHidden = true
        lblSemestre.isHidden = true
        lblCorreo.isHidden = true
        lblCelular.isHidden = true
        lblDireccion.isHidden = true
        lblPromedio.isHidden = true
        lblBeca.isHidden = true
        
        lblNombreEditar.isHidden = false
        lblApellidoEditar.isHidden = false
        lblMatriculaEditar.isHidden = false
        lblCarreraEditar.isHidden = false
        lblSemestreEditar.isHidden = false
        lblCorreoEditar.isHidden = false
        lblCelularEditar.isHidden = false
        lblDireccionEditar.isHidden = false
        lblPromedioEditar.isHidden = false
        lblBecaEditar.isHidden = false
        
        txtNombre.isEnabled = true
        txtNombre.isHidden = false
        txtApellido.isEnabled = true
        txtApellido.isHidden = false
        txtMatricula.isEnabled = true
        txtMatricula.isHidden = false
        txtCarrera.isEnabled = true
        txtCarrera.isHidden = false
        txtSemestre.isEnabled = true
        txtSemestre.isHidden = false
        txtCorreo.isEnabled = true
        txtCorreo.isHidden = false
        txtCelular.isEnabled = true
        txtCelular.isHidden = false
        txtDireccion.isEnabled = true
        txtDireccion.isHidden = false
        txtPromedio.isEnabled = true
        txtPromedio.isHidden = false
        txtBeca.isEnabled = true
        txtBeca.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Estudiante"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblApellido.isHidden = false
        lblMatricula.isHidden = false
        lblCarrera.isHidden = false
        lblSemestre.isHidden = false
        lblCorreo.isHidden = false
        lblCelular.isHidden = false
        lblDireccion.isHidden = false
        lblPromedio.isHidden = false
        lblBeca.isHidden = false
        
        lblNombreEditar.isHidden = true
        lblApellidoEditar.isHidden = true
        lblMatriculaEditar.isHidden = true
        lblCarreraEditar.isHidden = true
        lblSemestreEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblDireccionEditar.isHidden = true
        lblPromedioEditar.isHidden = true
        lblBecaEditar.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtApellido.isEnabled = false
        txtApellido.isHidden = true
        txtMatricula.isEnabled = false
        txtMatricula.isHidden = true
        txtCarrera.isEnabled = false
        txtCarrera.isHidden = true
        txtSemestre.isEnabled = false
        txtSemestre.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtDireccion.isEnabled = false
        txtDireccion.isHidden = true
        txtPromedio.isEnabled = false
        txtPromedio.isHidden = true
        txtBeca.isEnabled = false
        txtBeca.isHidden = true
        
        estudiante!.nombre = txtNombre.text!
        estudiante!.apellido = txtApellido.text!
        estudiante!.matricula = txtMatricula.text!
        estudiante!.carrera = txtCarrera.text!
        estudiante!.semestre = txtSemestre.text!
        estudiante!.correo = txtCorreo.text!
        estudiante!.celular = txtCelular.text!
        estudiante!.direccion = txtDireccion.text!
        estudiante!.promedio = txtPromedio.text!
        estudiante!.beca = txtBeca.text!
        
        lblNombre.text = txtNombre.text!
        lblApellido.text = txtApellido.text!
        lblMatricula.text = txtMatricula.text!
        lblCarrera.text = txtCarrera.text!
        lblSemestre.text = txtSemestre.text!
        lblCorreo.text = txtCorreo.text!
        lblCelular.text = txtCelular.text!
        lblDireccion.text = txtDireccion.text!
        lblPromedio.text = txtPromedio.text!
        lblBeca.text = txtBeca.text!
        
        callbackActualizarTVEstudiantes!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Estudiante"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblNombre.isHidden = false
        lblApellido.isHidden = false
        lblMatricula.isHidden = false
        lblCarrera.isHidden = false
        lblSemestre.isHidden = false
        lblCorreo.isHidden = false
        lblCelular.isHidden = false
        lblDireccion.isHidden = false
        lblPromedio.isHidden = false
        lblBeca.isHidden = false
        
        lblNombreEditar.isHidden = true
        lblApellidoEditar.isHidden = true
        lblMatriculaEditar.isHidden = true
        lblCarreraEditar.isHidden = true
        lblSemestreEditar.isHidden = true
        lblCorreoEditar.isHidden = true
        lblCelularEditar.isHidden = true
        lblDireccionEditar.isHidden = true
        lblPromedioEditar.isHidden = true
        lblBecaEditar.isHidden = true
        
        txtNombre.isEnabled = false
        txtNombre.isHidden = true
        txtApellido.isEnabled = false
        txtApellido.isHidden = true
        txtMatricula.isEnabled = false
        txtMatricula.isHidden = true
        txtCarrera.isEnabled = false
        txtCarrera.isHidden = true
        txtSemestre.isEnabled = false
        txtSemestre.isHidden = true
        txtCorreo.isEnabled = false
        txtCorreo.isHidden = true
        txtCelular.isEnabled = false
        txtCelular.isHidden = true
        txtDireccion.isEnabled = false
        txtDireccion.isHidden = true
        txtPromedio.isEnabled = false
        txtPromedio.isHidden = true
        txtBeca.isEnabled = false
        txtBeca.isHidden = true
        
        txtNombre.text = estudiante!.nombre
        txtApellido.text = estudiante!.apellido
        txtMatricula.text = estudiante!.matricula
        txtCarrera.text = estudiante!.direccion
        txtSemestre.text = estudiante!.celular
        txtCorreo.text = estudiante!.correo
        txtCelular.text = estudiante!.celular
        txtDireccion.text = estudiante!.direccion
        txtPromedio.text = estudiante!.promedio
        txtBeca.text = estudiante!.beca
    }
    
    
}
