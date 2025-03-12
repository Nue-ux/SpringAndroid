package com.example.springfour.controller

import com.example.springfour.model.Usuario
import com.example.springfour.repository.UsuarioRepository
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/api")
class UsuarioController(private val usuarioRepository: UsuarioRepository) {

    @PostMapping("/usuarios")
    fun createUsuario(@RequestBody usuario: Usuario): ResponseEntity<Usuario> {
        val nuevoUsuario = usuarioRepository.save(usuario)
        return ResponseEntity.status(HttpStatus.CREATED).body(nuevoUsuario)
    }

    @PutMapping("/usuarios/{id}/score")
    fun updateScore(@PathVariable id: Int): ResponseEntity<Usuario> {
        val usuarioOpt = usuarioRepository.findById(id)
        return if (usuarioOpt.isPresent) {
            val usuario = usuarioOpt.get()
            usuario.puntaje += 1
            val updatedUsuario = usuarioRepository.save(usuario)
            ResponseEntity.ok(updatedUsuario)
        } else {
            ResponseEntity.notFound().build()
        }
    }
    
    @GetMapping("/usuarios/scoreboard")
    fun getScoreboard(): List<Usuario> {
        return usuarioRepository.findAll().sortedByDescending { it.puntaje }
    }
}