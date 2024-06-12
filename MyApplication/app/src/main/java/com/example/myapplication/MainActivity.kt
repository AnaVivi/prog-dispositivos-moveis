package com.example.myapplication

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.activity_main)

        val meuBotao = findViewById<Button>(R.id.meuBotao) //O mesmo se aplica as caixas de formulário

        meuBotao.setOnClickListener {
            val intent = Intent(this, Tela2::class.java)
            startActivity(intent)
        }
    }
}