//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Estudiante{
    var nombre : String
    var apellido : String
    var matricula : String
    var carrera : String
    var semestre : String
    var correo : String
    var celular : String
    var direccion : String
    var promedio : String
    var beca : String

    init(nombre: String, apellido: String, matricula: String, carrera: String, semestre: String, correo: String, celular: String, direccion: String, promedio: String, beca: String){
        self.nombre = nombre
        self.apellido = apellido
        self.matricula = matricula
        self.carrera = carrera
        self.semestre = semestre
        self.correo = correo
        self.celular = celular
        self.direccion = direccion
        self.promedio = promedio
        self.beca = beca
    }
}
