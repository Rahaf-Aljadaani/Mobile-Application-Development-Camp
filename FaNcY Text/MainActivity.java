package com.example.textapp;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText input;
    Button botton;
    TextView output;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
         input = findViewById(R.id.ed1);
         botton = findViewById(R.id.b1);
         output = findViewById(R.id.te1);
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public void print(View view) {
    String text = input.getText().toString();
        text.toLowerCase();

        char xx [] = new char [text.length()];

        for (int i = 0; i<text.length();i++){
            xx[i]=text.charAt(i);
        }

        int x =0;
    for (int i = 0; i<xx.length;i++){
     if (xx[i]==' '|| xx[i]==','){
         x++;
         continue;
     }

        else if( x%2==0 ){
                xx[i] = Character.toUpperCase(xx[i]);
                x++;
        }
     else {
         x++;
     }
    }
        String y ="";
        for (int i = 0; i<xx.length;i++){
          y+=xx[i];
        }
        output.setText(y);

    }
}