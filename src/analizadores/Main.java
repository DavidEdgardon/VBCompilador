/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String ruta1 = "C:/Users/David/Documents/NetBeansProjects/VBCompilador/src/analizadores/Lexer.flex";
        // String ruta2 = "C:/Users/David/Documents/NetBeansProjects/VBCompilador/src/analizadores/LexerCup.flex";
        generarLexer(ruta1);
    }

    public static void generarLexer(String ruta1) {
        File archivo;
        archivo = new File(ruta1);
        JFlex.Main.generate(archivo);
        /*archivo = new File(ruta2);
        JFlex.Main.generate(archivo);
         */
    }

}
