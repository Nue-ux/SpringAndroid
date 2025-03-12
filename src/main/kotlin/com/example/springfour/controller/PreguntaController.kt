package com.example.springfour.controller

import com.example.springfour.repository.PreguntaRepository
import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import com.fasterxml.jackson.module.kotlin.readValue
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class PreguntaController(private val preguntaRepository: PreguntaRepository) {

    private val mapper = jacksonObjectMapper()

    @GetMapping("/preguntas")
    fun getPreguntas(): List<Map<String, Any>> {
        return preguntaRepository.findAll().shuffled().map { pregunta ->
            val opcionesList: List<String> = try {
                mapper.readValue(pregunta.opciones)
            } catch (ex: Exception) {
                emptyList()
            }
            mapOf(
                "id" to pregunta.id,
                "pregunta" to pregunta.pregunta,
                "opciones" to opcionesList.shuffled(),
                "correcta" to pregunta.correcta
            )
        }
    }
}