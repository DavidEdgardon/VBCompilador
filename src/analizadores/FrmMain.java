/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizadores;

import java.awt.Color;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringReader;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java_cup.runtime.Symbol;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;


/**
 *
 *
 */
public class FrmMain extends javax.swing.JFrame {

    /**
     * Creates new form FrmMain
     */
    public FrmMain() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLayeredPane1 = new javax.swing.JLayeredPane();
        jPanel2 = new javax.swing.JPanel();
        btnAnalizar = new javax.swing.JButton();
        btnArchivo = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        txtEntrada = new javax.swing.JTextArea();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtLexico = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtSintactico = new javax.swing.JTextArea();
        btnAnalizarSin = new javax.swing.JButton();

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jLayeredPane1Layout = new javax.swing.GroupLayout(jLayeredPane1);
        jLayeredPane1.setLayout(jLayeredPane1Layout);
        jLayeredPane1Layout.setHorizontalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jLayeredPane1Layout.setVerticalGroup(
            jLayeredPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(204, 204, 255));

        jPanel2.setBackground(new java.awt.Color(204, 255, 204));
        jPanel2.setForeground(new java.awt.Color(60, 63, 65));

        btnAnalizar.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        btnAnalizar.setText(" Analizador Lexico");
        btnAnalizar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAnalizarActionPerformed(evt);
            }
        });

        btnArchivo.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        btnArchivo.setText("Importar Archivo");
        btnArchivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnArchivoActionPerformed(evt);
            }
        });

        txtEntrada.setColumns(20);
        txtEntrada.setFont(new java.awt.Font("Dialog", 0, 18)); // NOI18N
        txtEntrada.setRows(5);
        jScrollPane3.setViewportView(txtEntrada);

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel1.setText("Entrada");

        txtLexico.setEditable(false);
        txtLexico.setColumns(20);
        txtLexico.setRows(5);
        jScrollPane1.setViewportView(txtLexico);

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jLabel3.setText("Tokens");

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel2.setText("Analisis Sintactico");

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel4.setText("Analisis Lexico");

        txtSintactico.setColumns(20);
        txtSintactico.setRows(5);
        jScrollPane2.setViewportView(txtSintactico);

        btnAnalizarSin.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        btnAnalizarSin.setText("Analizador Sintactico");
        btnAnalizarSin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAnalizarSinActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                        .addGap(166, 166, 166)
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 397, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 12, Short.MAX_VALUE)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(btnAnalizarSin)
                            .addComponent(btnAnalizar, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnArchivo, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 399, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addGap(166, 166, 166))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 975, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                    .addContainerGap(753, Short.MAX_VALUE)
                    .addComponent(jLabel4)
                    .addGap(112, 112, 112)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addGap(27, 27, 27)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addComponent(btnArchivo)
                        .addGap(37, 37, 37)
                        .addComponent(btnAnalizar)
                        .addGap(37, 37, 37)
                        .addComponent(btnAnalizarSin))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 538, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 538, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 10, Short.MAX_VALUE)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addGap(29, 29, 29)
                    .addComponent(jLabel4)
                    .addContainerGap(814, Short.MAX_VALUE)))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnAnalizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAnalizarActionPerformed
        // TODO add your handling code here:
        File archivo = new File("archivo.txt");
        PrintWriter escribir;
        try {
            escribir = new PrintWriter(archivo);
            escribir.print(txtEntrada.getText());
            escribir.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FrmMain.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            Reader lector = new BufferedReader(new FileReader("archivo.txt"));
            Lexer lexer = new Lexer(lector);
            String resultado = "";
            while (true) {
                Tokens tokens = lexer.yylex();
                if (tokens == null) {
                    resultado += "FIN";
                    txtLexico.setText(resultado);
                    return;
                }
                switch (tokens) {
                    case ERROR:
                        resultado += "\tSimbolo no definido\n";
                        break;
                    case tk_valorString:
                        resultado += lexer.lexeme + ":\t <Valor del string>\t\t " + tokens + "\n";
                        break;
                    case tk_Linea:
                        resultado +=  "\t  <Salto de linea>\t\t" + tokens + "\n";
                        break;
                    case tk_dim:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Dim>\t" + tokens + "\n";
                        break;
                    case tk_as:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada As>\t" + tokens + "\n";
                        break;    
                    case tk_integer: case tk_byval: case tk_boolean: case tk_String:
                        resultado += lexer.lexeme + ":\t  <Es un Tipo de Dato>\t\t" + tokens + "\n";
                        break;
                    case tk_if: case tk_else: case tk_step: case tk_main:
                        resultado += lexer.lexeme +":\t  <Es una Palabra Reservada>\t\t" + tokens + "\n";
                        break;
                    case tk_do:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Do>\t\t" + tokens + "\n";
                        break;
                    case tk_while:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada While>\t\t" + tokens + "\n";
                        break;
                    case tk_for:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada For>\t\t" + tokens + "\n";
                        break;
                    case tk_to:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada To>\t\t" + tokens + "\n";
                        break; 
                    case tk_then:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Then>\t\t" + tokens + "\n";
                        break;
                    case tk_elseif:
                        resultado += lexer.lexeme +":\t  <Es una Palabra Reservada ElseIf>\t\t" + tokens + "\n";
                        break;
                    case tk_loop:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Loop>\t\t" + tokens + "\n";
                        break;
                    case tk_end:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada End>\t\t" + tokens + "\n";
                        break;
                    case tk_until:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Until>\t\t" + tokens + "\n";
                        break;
                    case tk_next:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Next>\t\t" + tokens + "\n";
                        break;
                    case tk_function:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Function>\t\t" + tokens + "\n";
                        break;
                    case tk_sub:
                        resultado += lexer.lexeme +":\t <Es una Palabra Reservada Sub>\t\t" + tokens + "\n";
                        break;
                    case tk_exit:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Exit>\t\t" + tokens + "\n";
                        break;
                    case tk_return:
                        resultado += lexer.lexeme + ":\t <Es una Palabra Reservada Return>\t\t" + tokens + "\n";
                        break;
                    case tk_structure:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Structure>\t\t" + tokens + "\n";
                        break;
                    case tk_write:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Write>\t\t" + tokens + "\n";
                        break;  
                    case tk_readline:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Readline>\t\t" + tokens + "\n";
                        break;
                    case tk_and:
                        resultado += lexer.lexeme +":\t  <Es una Palabra Reservada And>\t\t" + tokens + "\n";
                        break;
                    case tk_or:
                        resultado += lexer.lexeme + ":\t <Es una Palabra Reservada Or>\t\t" + tokens + "\n";
                        break;
                    case tk_not:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Not>\t\t" + tokens + "\n";
                        break;
                    case tk_xor:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Xor>\t\t" + tokens + "\n";
                        break;
                    case tk_public:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Public>\t\t" + tokens + "\n";
                        break;
                    case tk_comentario:
                        resultado += lexer.lexeme + ":\t <Es un comentario>\t\t" + tokens + "\n";
                        break;
                    case tk_sys:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada System>\t\t" + tokens + "\n";
                        break;
                    case tk_cs:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Console>\t\t" + tokens + "\n";
                        break;
                    case tk_module:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Module>\t\t" + tokens + "\n";
                        break;    
                    case tk_writeline:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada WriteLine>\t\t" + tokens + "\n";
                        break;
                    case tk_like:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada Like>\t\t" + tokens + "\n";
                        break;    
                    case tk_null: case tk_mod:
                        resultado += lexer.lexeme + ":\t  <Es una Palabra Reservada >\t\t" + tokens + "\n";
                        break;
                    case tk_punto:
                        resultado += lexer.lexeme + ":\t  <Signo reservado>\t\t" + tokens + "\n";
                        break;
                    case tk_ampersant:
                        resultado += lexer.lexeme + ":\t  <Signo reservado>\t\t" + tokens + "\n";
                        break; 
                    case tk_Suma: case tk_Resta: case tk_Multiplicacion: case tk_Division: case tk_Signomod: case tk_Potencia:
                        resultado += lexer.lexeme + ":\t  <Es una Operador aritmetico>\t\t" + tokens + "\n";
                        break;
                    case tk_Coma: case tk_Igual:
                        resultado += lexer.lexeme + ":\t  <Signo reservado>\t\t" + tokens + "\n";
                        break;       
                    case tk_mayorque: case tk_mayorigual: case tk_menorque: case tk_menorigual:
                        resultado += lexer.lexeme + ":\t <Es una Operador Relacional>\t\t" + tokens + "\n";
                        break; 
                    case tk_true: case tk_false:
                        resultado += lexer.lexeme + ":\t  <Es una valor booleano>\t\t" + tokens + "\n";
                        break;
                    case tk_ParentesisA:
                        resultado += lexer.lexeme + ":\t  <Es un parentesis Abiero>\t\t" + tokens + "\n";
                        break;
                    case tk_ParentesisC:
                        resultado += lexer.lexeme + ":\t  <Es un parentesis Cerrado>\t\t" + tokens + "\n";
                        break; 
                    case tk_Identificador:
                        resultado += lexer.lexeme + ":\t  <Es un identificador>\t\t" + tokens + "\n";
                        break;
                    case tk_Numero:
                        resultado += lexer.lexeme + ":\t  <Es un numero>\t\t" + tokens + "\n";
                        break;  
                    default:
                        resultado += "Token: " + tokens + "\n";
                        break;
                }
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FrmMain.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FrmMain.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnAnalizarActionPerformed

    private void btnArchivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnArchivoActionPerformed
        // TODO add your handling code here:
   try{
                    String Ruta="";
                    JFileChooser chooser = new JFileChooser();
                    FileNameExtensionFilter filter = new FileNameExtensionFilter("Notepads", "txt");
                    chooser.setFileFilter(filter);
                    int returnVal = chooser.showOpenDialog(chooser);
                    if(returnVal == JFileChooser.APPROVE_OPTION) {
                        Ruta= chooser.getSelectedFile().getAbsolutePath();
                    }
                    String cadena;
                    FileReader entrada = new FileReader(Ruta);
                    BufferedReader b = new BufferedReader(entrada); 
                    String codigoTexto = "";
                    while((cadena = b.readLine())!=null) {
                        codigoTexto += cadena + '\n';
                    }
                    txtEntrada.setText(codigoTexto);
                    b.close();
                }catch(Exception e){
                    System.out.println("No se encontro el archivo");
                }
    }//GEN-LAST:event_btnArchivoActionPerformed

    private void btnAnalizarSinActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAnalizarSinActionPerformed
        // TODO add your handling code here:
        String ST = txtEntrada.getText();
        Gramatica s = new Gramatica(new analizadores.lexercup(new StringReader(ST)));
        
        try {
            s.parse();
            txtSintactico.setText("SINTAXIS CORRECTA");
            txtSintactico.setForeground(Color.BLUE);
            ArrayList<String> symRecover = s.getSintax();
            System.out.println(symRecover);
            System.out.println("-----------");
            
            
            if(!symRecover.toString().equals("[]")){
                txtSintactico.setText(symRecover.toString());
                txtSintactico.setForeground(Color.RED);
            }
            
           String symError = s.getS();
           if(!symError.equals("")){
               txtSintactico.setText(symError);
               txtSintactico.setForeground(Color.red);
           } 
        } catch (Exception ex) {
           String symError = s.getS();
           txtSintactico.setText(symError);
           txtSintactico.setForeground(Color.red);
           txtSintactico.setBackground(Color.black);
        }
       
    }//GEN-LAST:event_btnAnalizarSinActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FrmMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FrmMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FrmMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FrmMain.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmMain().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAnalizar;
    private javax.swing.JButton btnAnalizarSin;
    private javax.swing.JButton btnArchivo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextArea txtEntrada;
    private javax.swing.JTextArea txtLexico;
    private javax.swing.JTextArea txtSintactico;
    // End of variables declaration//GEN-END:variables
}
