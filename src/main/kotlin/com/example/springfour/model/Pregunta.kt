package com.example.springfour.model

import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.persistence.Table

@Entity
@Table(name = "preguntas")
data class Pregunta(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Int = 0,

    @Column(name = "pregunta", nullable = false, length = 1000)
    val pregunta: String,

    @Column(name = "opciones", nullable = false, columnDefinition = "json")
    val opciones: String,

    @Column(name = "correcta", nullable = false)
    val correcta: String
)
