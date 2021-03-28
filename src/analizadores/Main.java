/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        String ruta1 = "C:/VBCompilador/src/analizadores/lexer.flex";
        String ruta2 = "C:/VBCompilador/src/analizadores/lexercup.flex";
        String[] rutaS = {"-parser", "Gramatica", "C:/VBCompilador/src/analizadores/Gramatica.cup"};
        generar(ruta1, ruta2, rutaS);
    }

    public static void generar(String ruta1, String ruta2, String[] rutaS) throws IOException, Exception {
        File archivo;
        archivo = new File(ruta1);
        JFlex.Main.generate(archivo);
        archivo = new File(ruta2);
        JFlex.Main.generate(archivo);
        java_cup.Main.main(rutaS);

        Path rutaSym = Paths.get("C:/VBCompilador/src/analizadores/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        Files.move(
                Paths.get("C:/VBCompilador/sym.java"),
                Paths.get("C:/VBCompilador/src/analizadores/sym.java")
        );
        Path rutaSin = Paths.get("C:/VBCompilador/src/analizadores/Gramatica.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("C:/VBCompilador/Gramatica.java"),
                Paths.get("C:/VBCompilador/src/analizadores/Gramatica.java")
        );
    }
}
