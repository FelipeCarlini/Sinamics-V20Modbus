#include <EEPROM.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <ModbusMaster.h>
#define MAX485_DE      16
#define MAX485_RE_NEG  16

ModbusMaster node;

void preTransmission()
{
  digitalWrite(MAX485_RE_NEG, 1);
  digitalWrite(MAX485_DE, 1);
  delay(10);
}

void postTransmission()
{
  digitalWrite(MAX485_RE_NEG, 0);
  digitalWrite(MAX485_DE, 0);
  delay(10);
}

byte flecha_arriba[] = {
  B00100,
  B01110,
  B10101,
  B00100,
  B00100,
  B00100,
  B00100,
  B00000
};
byte flecha_abajo[] = {
  B00100,
  B00100,
  B00100,
  B00100,
  B10101,
  B01110,
  B00100,
  B00000
};

//Crear el objeto lcd  dirección  0x3F y 16 columnas x 2 filas
LiquidCrystal_I2C lcd(0x27, 20, 4); //
int v1 = 0, v2 = 0, v3 = 0, v4 = 0, t1 = 0, t2 = 0, t3 = 0, t4 = 0;
long unsigned int tiempo_transc = 0, millis_arranque = 0, millis_enviar = 0;
long unsigned int previousMillis = 0, previousMillis2 = 0;
int menu;
int tiempo_elegido = 0, tiempo_deseado = 500;
int velocidad_elegida = 0, velocidad_deseada = 9;
int cont = 0;
int tiempo_arranque;
bool seis = false, ocho = false;
bool tres = false, cuatro = false;
bool left = false, up = false;
bool uno = false, right = false, cambiar = false;
bool siete = false, dos = false, down = false, cinco = false;
bool tiempos_velocidades = false;
bool editar_velocidad = false, editar_tiempo = false;
int  cont_velocidad = 1, cont_tiempo = 1;
int cambiar_vel_variable = 0, cambiar_tiempo_variable = 0;
int acomodador_v = 0, acomodador_t = 0;
bool cambiar_vel_var_bool = false, cambiar_tiempo_var_bool = false, arranque = false, horario = true;
bool state = true;
int velocidad = 0;

int acomodar_velocidad() {
  if (acomodador_v < 10) {
    lcd.print("0");
    lcd.print(acomodador_v);
    lcd.print("%");
  } else {
    lcd.print(acomodador_v);
    lcd.print("%");
  }
}
int acomodar_velocidad2() {
  if (acomodador_v < 10) {
    lcd.print("00");
    lcd.print(acomodador_v);
    lcd.print("%");
  } else if (acomodador_v < 100) {
    lcd.print("0");
    lcd.print(acomodador_v);
    lcd.print("%");
  } else {
    lcd.print(acomodador_v);
    lcd.print("%");
  }
}
int acomodar_tiempo() {
  int minutos = acomodador_t / 60;
  int segundos = acomodador_t - minutos * 60;
  if (minutos < 10) {
    lcd.print("0");
  }
  lcd.print(minutos);
  lcd.print("m");
  if (segundos < 10) {
    lcd.print("0");
  }
  lcd.print(segundos);
  lcd.print("s");

}
int read_LCD_buttons()
{
  int enviar = 0;

  for (cont = 0; cont <= 8; cont++) {
    if (cont == 0) {
      digitalWrite(15, LOW);
      digitalWrite(14, HIGH);
      digitalWrite(13, HIGH);
      digitalWrite(12, HIGH);
      if (digitalRead(2) == LOW and ocho == false) { //8
        ocho = true;
        enviar = 12;
      } else if (
        digitalRead(2) == HIGH and ocho == true) {
        ocho = false;
      }
      if (digitalRead(0) == LOW and seis == false) { //6
        seis = true;
        enviar = 10;
      } else if (
        digitalRead(0) == HIGH and seis == true) {
        seis = false;
      }
    }
    if (cont == 1) {
      digitalWrite(15, HIGH);
      digitalWrite(14, LOW);
      digitalWrite(13, LOW);
      digitalWrite(12, LOW);
      if (analogRead(A0) > 1000 and siete == false) { //7
        siete = true;
        enviar = 11;
      } else if (
        analogRead(A0) < 1000 and siete == true) {
        siete = false;
      }
    }


    if (cont == 2) {
      digitalWrite(15, HIGH);
      digitalWrite(14, LOW);
      digitalWrite(13, HIGH);
      digitalWrite(12, HIGH);
      if (digitalRead(2) == LOW and cuatro == false) { //4
        cuatro = true;
        enviar = 8;
      } else if (digitalRead(2) == HIGH and cuatro == true) {
        cuatro = false;
      }
      if (digitalRead(0) == LOW and tres == false) { //3
        enviar = 7;
        tres = true;
      } else if (digitalRead(0) == HIGH and tres == true) {
        tres = false;
      }
    }

    if (cont == 3) {
      digitalWrite(15, LOW);
      digitalWrite(14, HIGH);
      digitalWrite(13, LOW);
      digitalWrite(12, LOW);
      if (analogRead(A0) > 1000 and dos == false) { //2
        dos = true;
        enviar = 6;
      } else if (analogRead(A0) < 1000 and dos == true) {
        dos = false;
      }
    }


    if (cont == 4) {
      digitalWrite(15, HIGH);
      digitalWrite(14, HIGH);
      digitalWrite(13, LOW);
      digitalWrite(12, HIGH);
      if (digitalRead(2) == LOW and up == false) { //up 1
        up = true;
        enviar = 1;//up
      } else if (digitalRead(2) == HIGH and up == true) {
        up = false;
      }
      if (digitalRead(0) == LOW and left == false) { //left 3
        enviar = 3;
        left = true;
      } else if (digitalRead(0) == HIGH and left == true) {
        left = false;
      }
    }
    if (cont == 5) {
      digitalWrite(15, LOW);
      digitalWrite(14, LOW);
      digitalWrite(13, HIGH);
      digitalWrite(12, LOW);
      if (analogRead(A0) > 1000 and cinco == false) { //5
        enviar = 13;
        cinco = true;
      } else if (analogRead(A0) < 1000 and cinco == true) {
        cinco = false;
      }
    }


    if (cont == 6) {
      digitalWrite(15, HIGH);
      digitalWrite(14, HIGH);
      digitalWrite(13, HIGH);
      digitalWrite(12, LOW);
      if (digitalRead(2) == LOW and uno == false) { //1
        uno = true;
        enviar = 5;
      } else if (digitalRead(2) == HIGH and uno == true) {
        uno = false;
      }
      if (digitalRead(0) == LOW and right == false) { //R 4
        enviar = 4;
        right = true;
      } else if (digitalRead(0) == HIGH and right == true) {
        right = false;
      }

    }
    if (cont == 7) {
      digitalWrite(15, LOW);
      digitalWrite(14, LOW);
      digitalWrite(13, LOW);
      digitalWrite(12, HIGH);
      if (analogRead(A0) > 1000 and down == false) { //D
        down = true;
        enviar = 2;
      } else if (analogRead(A0) < 1000 and down == true) {
        down = false;
      }
    }
  }
  if (enviar != 0 && enviar != 9 && enviar != -9) {
    lcd.clear();
    return enviar;
  }
}

void setup() {
  pinMode(MAX485_RE_NEG, OUTPUT);
  pinMode(MAX485_DE, OUTPUT);
  digitalWrite(MAX485_RE_NEG, 0);
  digitalWrite(MAX485_DE, 0);

  Serial.begin(9600, SERIAL_8E1);
  node.begin(1, Serial);
  node.preTransmission(preTransmission);
  node.postTransmission(postTransmission);
  EEPROM.begin(20);
  lcd.init();

  EEPROM.write(0, 0);
  lcd.createChar(0, flecha_arriba);
  lcd.createChar(1, flecha_abajo);

  //Encender la luz de fondo.
  lcd.backlight();
  pinMode(15, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(2, INPUT_PULLUP);
  pinMode(0, INPUT_PULLUP);





}

void loop() {
  uint8_t result;
  if (arranque == false) {
    //parada
    //node.writeSingleRegister(0x0063,0x047E);
  }
  if (menu == 0 && arranque == false) {
    lcd.setCursor(0, 3);
    lcd.print("Parado              ");
  }

  if (millis() - previousMillis2 >= 300) {
    previousMillis2 = millis();

    t1 = EEPROM.read(1) * 256 + EEPROM.read(2);
    t2 = EEPROM.read(3) * 256 + EEPROM.read(4);
    t3 = EEPROM.read(5) * 256 + EEPROM.read(6);
    t4 = EEPROM.read(7) * 256 + EEPROM.read(8);
    v1 = EEPROM.read(9);
    v2 = EEPROM.read(10);
    v3 = EEPROM.read(11);
    v4 = EEPROM.read(12);
  }


  if (arranque == true) {
    if (millis() - millis_arranque >= tiempo_arranque * 500) {
      horario = false;
    } else {
      horario = true;
    }
    if (millis() - millis_arranque >= tiempo_arranque * 1000) {
      arranque = false;
    }
  }
  if (millis() - millis_enviar >= 300) {
    millis_enviar = millis();
    if (arranque == true) {
      if (horario == true) {
        result = node.writeSingleRegister(0x0063, 0x47F); //Escribir palabra de mando STW 1050 parado, 1051 en marcha C7F inverso y 47F normal
      } else if (horario == false) {
        result = node.writeSingleRegister(0x0063, 0xC7F); //Escribir palabra de mando STW 1050 parado, 1051 en marcha C7F inverso y 47F normal
      }
      result = node.writeSingleRegister(0x0064, velocidad); //Escribir palabra de mando HSW consigna 3FFF
    } else if(arranque==false) {
      result = node.writeSingleRegister(0x0064, 0);
      result = node.writeSingleRegister(0x0063, 0x047E);//parado
    }
  }




  if (millis() - previousMillis >= 2) {
    if (menu == 0 && editar_velocidad == false && editar_tiempo == false) {
      previousMillis = millis();
      lcd.setCursor(0, 0);
      lcd.print("Tiempo     ");
      lcd.print(tiempo_elegido);
      lcd.print("  ");
      acomodador_t = EEPROM.read(tiempo_elegido * 2 - 1) * 256 + EEPROM.read(tiempo_elegido * 2);
      acomodar_tiempo();
      lcd.setCursor(0, 1);
      lcd.print("Velocidad  ");
      lcd.print(velocidad_elegida);
      lcd.print("    ");
      acomodador_v = EEPROM.read(8 + velocidad_elegida);
      acomodar_velocidad2();
      if (arranque == true) {
        velocidad = EEPROM.read(8 + velocidad_elegida);
        velocidad = map(velocidad, 0, 100, 0, 16383);
        lcd.setCursor(0, 3);
        lcd.print("En marcha ");
        acomodador_t = (millis() - millis_arranque) / 1000;
        acomodar_tiempo();
        lcd.print(" ");
        if (horario == true) {
          lcd.print("H");
          lcd.write(0);
          lcd.write(1);
        } else {
          lcd.print("A");
          lcd.write(1);
          lcd.write(0);
        }
      }

    } else if (menu == 1 && editar_velocidad == false && editar_tiempo == false) {
      lcd.setCursor(0, 0);
      lcd.print("T1=");
      acomodador_t = t1;
      acomodar_tiempo();
      lcd.setCursor(0, 1);
      lcd.print("T2=");
      acomodador_t = t2;
      acomodar_tiempo();
      lcd.setCursor(0, 2);
      lcd.print("T3=");
      acomodador_t = t3;
      acomodar_tiempo();
      lcd.setCursor(0, 3);
      lcd.print("T4=");
      acomodador_t = t4;
      acomodar_tiempo();
    } else if (menu == 2 && editar_velocidad == false && editar_tiempo == false) {
      lcd.setCursor(0, 0);
      lcd.print("V1=");
      acomodador_v = v1;
      acomodar_velocidad2();
      lcd.setCursor(0, 1);
      lcd.print("V2=");
      acomodador_v = v2;
      acomodar_velocidad2();
      lcd.setCursor(0, 2);
      lcd.print("V3=");
      acomodador_v = v3;
      acomodar_velocidad2();
      lcd.setCursor(0, 3);
      lcd.print("V4=");
      acomodador_v = v4;
      acomodar_velocidad2();
    } else if (editar_velocidad == true) {
      lcd.setCursor(0, 0);
      lcd.print("Cambiar ");
      lcd.setCursor(0, 1);
      lcd.print("Velocidad ");
      lcd.print(cont_velocidad);
      lcd.setCursor(0, 2);
      lcd.print("V");
      lcd.print(cont_velocidad);
      lcd.print("=");
      acomodador_v = EEPROM.read(8 + cont_velocidad);
      acomodar_velocidad();
      if (cambiar_vel_var_bool == true) {
        lcd.setCursor(0, 3);
        lcd.print("V deseada ");
        acomodador_v = cambiar_vel_variable;
        acomodar_velocidad();

      }
    } else if (editar_tiempo == true) {
      lcd.setCursor(0, 0);
      lcd.print("Cambiar ");
      lcd.setCursor(0, 1);
      lcd.print("Tiempo ");
      lcd.print(cont_tiempo);
      lcd.setCursor(0, 2);
      lcd.print("T");
      lcd.print(cont_tiempo);
      lcd.print("=");
      acomodador_t = EEPROM.read(cont_tiempo * 2 - 1) * 256 + EEPROM.read(cont_tiempo * 2);
      acomodar_tiempo();
      if (cambiar_tiempo_var_bool == true) {
        lcd.setCursor(0, 3);
        lcd.print("T deseado ");
        acomodador_t = cambiar_tiempo_variable;;
        acomodar_tiempo();


      }
    }
  }



  int lcd_key = read_LCD_buttons();
  if (lcd_key != 0 && lcd_key != -9) {
    if ( lcd_key == 2) {
      if (menu != 2 && editar_velocidad == false && editar_tiempo == false && arranque == false) {
        menu++;
      }
    }
    if ( lcd_key == 1 && editar_velocidad == false && editar_tiempo == false && arranque == false ) {
      if (menu != 0) {
        menu--;
      }
    }
    if ( lcd_key == 5) {
      if (menu == 0 && arranque == false ) {
        tiempo_elegido = 1;
      }
    }
    if ( lcd_key == 6) {
      if (menu == 0 && arranque == false) {
        tiempo_elegido = 2;
      }
    }
    if ( lcd_key == 7 && arranque == false) {
      if (menu == 0) {
        tiempo_elegido = 3;
      }
    }
    if ( lcd_key == 8 && arranque == false) {
      if (menu == 0) {
        tiempo_elegido = 4;
      }
    }
    if ( lcd_key == 13 && arranque == false) {
      if (menu == 0) {
        velocidad_elegida = 1;
      }
    }
    if ( lcd_key == 10 && arranque == false) {
      if (menu == 0) {
        velocidad_elegida = 2;
      }
    }
    if ( lcd_key == 11 && arranque == false) {
      if (menu == 0) {
        velocidad_elegida = 3;
      }
    }
    if ( lcd_key == 12 && arranque == false) {
      if (menu == 0) {
        velocidad_elegida = 4;
      }
    }
    //editar velocidades
    if (menu == 2) {
      if (lcd_key == 4 and cambiar_vel_var_bool == false && editar_velocidad == true) {
        cambiar_vel_var_bool = true;
        cambiar_vel_variable = EEPROM.read(8 + cont_velocidad);
      }
      if (cambiar_vel_var_bool == true) {
        if (lcd_key == 5  && cambiar_vel_variable + 10 < 101 ) {
          cambiar_vel_variable = cambiar_vel_variable + 10;
        }
        if (lcd_key == 6  && cambiar_vel_variable + 1 < 101) {
          cambiar_vel_variable = cambiar_vel_variable + 1;
        }
        if (lcd_key == 13 && cambiar_vel_variable - 10 > -1) {
          cambiar_vel_variable = cambiar_vel_variable - 10;
        }
        if (lcd_key == 10 && cambiar_vel_variable - 1 > -1) {
          cambiar_vel_variable = cambiar_vel_variable - 1;
        }
        if (lcd_key == 4) {
          EEPROM.write(8 + cont_velocidad, cambiar_vel_variable);
          EEPROM.commit();
          editar_velocidad = false;
        }
      }

      if (lcd_key == 4 && editar_velocidad == false) {
        editar_velocidad = true;
      }

      if (editar_velocidad == true ) {
        if (lcd_key == 3 && cambiar_vel_var_bool == false) {
          editar_velocidad = false;
          cont_velocidad = 1;
        }

        if (lcd_key == 1 && cont_velocidad < 4 and cambiar_vel_var_bool == false) {
          cont_velocidad++;
        } else if ( lcd_key == 2 && cont_velocidad > 1 and cambiar_vel_var_bool == false) {
          cont_velocidad--;
        }
        if (lcd_key == 3 and cambiar_vel_var_bool == true && editar_velocidad == true) {
          cambiar_vel_var_bool = false;
        }


      }
    }


    //editar tiempo
    if (menu == 1) {
      if (lcd_key == 4 and cambiar_tiempo_var_bool == false && editar_tiempo == true) {
        cambiar_tiempo_var_bool = true;
        cambiar_tiempo_variable = EEPROM.read(cont_tiempo * 2 - 1) * 256 + EEPROM.read(cont_tiempo * 2);
      }
      if (cambiar_tiempo_var_bool == true) {
        if (lcd_key == 5  && cambiar_tiempo_variable + 600 < 3601 ) {
          cambiar_tiempo_variable = cambiar_tiempo_variable + 600;
        }
        if (lcd_key == 6  && cambiar_tiempo_variable + 60 < 3601) {
          cambiar_tiempo_variable = cambiar_tiempo_variable + 60;
        }
        if (lcd_key == 7  && cambiar_tiempo_variable + 10 < 3601 ) {
          cambiar_tiempo_variable = cambiar_tiempo_variable + 10;
        }
        if (lcd_key == 8  && cambiar_tiempo_variable + 1 < 3601) {
          cambiar_tiempo_variable = cambiar_tiempo_variable + 1;
        }

        if (lcd_key == 13 && cambiar_tiempo_variable - 600 > -1) {
          cambiar_tiempo_variable = cambiar_tiempo_variable - 600;
        }
        if (lcd_key == 10 && cambiar_tiempo_variable - 60 > -1) {
          cambiar_tiempo_variable = cambiar_tiempo_variable - 60;
        }
        if (lcd_key == 11 && cambiar_tiempo_variable - 10 > -1) {
          cambiar_tiempo_variable = cambiar_tiempo_variable - 10;
        }
        if (lcd_key == 12 && cambiar_tiempo_variable - 1 > -1) {
          cambiar_tiempo_variable = cambiar_tiempo_variable - 1;
        }
        if (lcd_key == 4) {
          int ayuda = cambiar_tiempo_variable / 255;

          EEPROM.write(cont_tiempo * 2 - 1 , ayuda);
          EEPROM.write(cont_tiempo * 2, cambiar_tiempo_variable);
          EEPROM.commit();

          editar_tiempo = false;
        }
      }

      if (lcd_key == 4 && editar_tiempo == false) {
        editar_tiempo = true;
      }

      if (editar_tiempo == true ) {
        if (lcd_key == 3 && cambiar_tiempo_var_bool == false) {
          editar_tiempo = false;
          cont_tiempo = 1;
        }

        if (lcd_key == 1 && cont_tiempo < 4 and cambiar_tiempo_var_bool == false) {
          cont_tiempo++;
        } else if ( lcd_key == 2 && cont_tiempo > 1 and cambiar_tiempo_var_bool == false) {
          cont_tiempo--;
        }
        if (lcd_key == 3 and cambiar_tiempo_var_bool == true && editar_tiempo == true) {
          cambiar_tiempo_var_bool = false;
        }


      }
    }

    if (menu == 0) {
      if (arranque == false and lcd_key == 4 and EEPROM.read(8 + velocidad_elegida) != 0) {
        arranque = true;
        millis_arranque = millis();
        tiempo_arranque = EEPROM.read(tiempo_elegido * 2 - 1) * 256 + EEPROM.read(tiempo_elegido * 2);
      }
      if (lcd_key == 3) {
        arranque = false;
      }
    }



  }
}
