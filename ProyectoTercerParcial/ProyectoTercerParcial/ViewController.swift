//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var estudiantes : [Estudiante] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvEstudiantes: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return estudiantes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = estudiantes[indexPath.row].nombre
        celda.lblApellido.text = estudiantes[indexPath.row].apellido
        celda.lblCarrera.text = estudiantes[indexPath.row].carrera
        celda.lblSemestre.text = "\("Semestre: ") \(estudiantes[indexPath.row].semestre)"
        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let estudianteSeleccionado = estudiantes[tvEstudiantes.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.estudiante = estudianteSeleccionado
            destino.indice = tvEstudiantes.indexPathForSelectedRow!.row
            destino.callbackActualizarTVEstudiantes = actualizarTVEstudiantes
            destino.callbackEliminarEstudiante = eliminarEstudiante
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarEstudiante = agregarEstudiante
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Estudiantes"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        estudiantes.append(Estudiante(nombre: "Maria", apellido: "Perez", matricula: "182312", carrera: "Ing. Software", semestre: "7°", correo: "maria@correo.com", celular: "66666666", direccion: "Casa Grande #123", promedio: "9.3", beca: "Tipo B"))
        estudiantes.append(Estudiante(nombre: "Guadalupe", apellido: "Gomez", matricula: "192222", carrera: "Lic. Derecho", semestre: "5°", correo: "glp@correo.com", celular: "22222222", direccion: "Colonia Segunda #222", promedio: "9.2", beca: "Ninguna"))
        estudiantes.append(Estudiante(nombre: "Rodrigo", apellido: "Hernandez", matricula: "202399", carrera: "Ing. Mecatronica", semestre: "3°", correo: "rodri@correo.com", celular: "11111111", direccion: "Cualquier Barrio #13", promedio: "8.6", beca: "Tipo A"))
        estudiantes.append(Estudiante(nombre: "Enrique", apellido: "Enriquez", matricula: "172095", carrera: "Ing. Industrial", semestre: "9°", correo: "enrique@correo.com", celular: "88888888", direccion: "Quijote #32", promedio: "10.0", beca: "Excelencia"))
        estudiantes.append(Estudiante(nombre: "Noel", apellido: "Vazquez", matricula: "182090", carrera: "Ing. Software", semestre: "7°", correo: "noel@correo.com", celular: "33333333", direccion: "Fracc. Bonito #66", promedio: "9.1", beca: "Tipo C"))
        estudiantes.append(Estudiante(nombre: "Sarah", apellido: "Montes", matricula: "212232", carrera: "Lic. Comercio", semestre: "1°", correo: "sarita@correo.com", celular: "00000000", direccion: "Estacion Norte #353", promedio: "9.0", beca: "Tipo C"))
        estudiantes.append(Estudiante(nombre: "Pedro", apellido: "Lopez", matricula: "192311", carrera: "Ing. Manufactura", semestre: "5°", correo: "pedro@correo.com", celular: "99999999", direccion: "Colonia Segunda #223", promedio: "8.2", beca: "Ninguna"))
        estudiantes.append(Estudiante(nombre: "Fabiola", apellido: "Gonzalez", matricula: "172280", carrera: "Ing. Mecatronica", semestre: "9°", correo: "fabi@correo.com", celular: "55555555", direccion: "Los Pinos #69", promedio: "9.9", beca: "Excelencia"))
        estudiantes.append(Estudiante(nombre: "Jesus", apellido: "Jimenez", matricula: "212329", carrera: "Lic. Derecho", semestre: "1°", correo: "jjimenez@correo.com", celular: "44444444", direccion: "Tetanchopo #6", promedio: "8.9", beca: "Tipo C"))
        estudiantes.append(Estudiante(nombre: "Marta", apellido: "Ramirez", matricula: "191111", carrera: "Arquitectura", semestre: "5°", correo: "marta@correo.com", celular: "77777777", direccion: "Pueblo Nuevo #88", promedio: "10.0", beca: "Excelencia"))
    }
    
    func actualizarTVEstudiantes() {
        tvEstudiantes.reloadData()
    }
    
    func eliminarEstudiante(indice : Int) {
        estudiantes.remove(at: indice)
        actualizarTVEstudiantes()
    }
    
    func agregarEstudiante(estudiante: Estudiante) {
        estudiantes.append(estudiante)
        actualizarTVEstudiantes()
    }
}

