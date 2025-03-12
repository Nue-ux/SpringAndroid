package com.example.springfour.repository

import com.example.springfour.model.Pregunta
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface PreguntaRepository : JpaRepository<Pregunta, Int>