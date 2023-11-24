package com.example.news_app

import Constants
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.Pigeon


class MainActivity : FlutterActivity() {
    private class MyIKeys : Pigeon.IKeys {
        override fun getApiKey(): String {
            return Constants.apiKey;
        }
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        Pigeon.IKeys.setUp(flutterEngine.dartExecutor.binaryMessenger, MyIKeys());
    }


}
