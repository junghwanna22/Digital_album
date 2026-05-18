package com.digitalalbum

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val tv = TextView(this)
        tv.text = "Digital Album APK bootstrap is ready."
        tv.textSize = 20f
        setContentView(tv)
    }
}
