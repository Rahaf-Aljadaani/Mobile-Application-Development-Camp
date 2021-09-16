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

   // @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    public void print(View view) {
    String text = input.getText().toString();
        Encoder(text);
    }

    public void Encoder(String x){
       x=  x.toLowerCase();
        char leters[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        char xx [] = new char [x.length()];
        for (int i = 0; i<x.length();i++){
            xx[i]=x.charAt(i);
        }
        int j=0;
        for (int i = 0; i<xx.length;i++) {
            System.out.println("ddddddddddd");
            if(xx[i]==' ')
                continue;
            for(j= 0; j<leters.length;j++){
                if(xx[i]==leters[j])
                    break;}
            int index = j - 13;
            if(index<0)
                index = index+ leters.length;

            xx[i]=leters[index];
        }

        String y ="";
        for (int i = 0; i<xx.length;i++){
            y+=xx[i];
        }
        System.out.println(y);
        output.setText(y);
    }
}