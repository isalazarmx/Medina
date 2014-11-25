/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecnm.toluca.database;

/**
 *
 * @author Rafa
 */


import mx.edu.tecnm.toluca.database.Query;
import java.sql.Connection;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Kevin Arnold
 */
public class Main {
    public static void main(String[] args)
    {
        Connection miConexion;
        miConexion=(Connection) ConexionDB.Connection();
      
        if(miConexion!=null){
            String campos[]={"id","nombre","calif"};
         String datos[]={String.valueOf(1),"'cali'",String.valueOf(10)};
            Query.insertaGeneral(campos, datos,"cali");
        
            JOptionPane.showMessageDialog(null, "Conexión Realizada Correctamente");       
            
        }else
        {
            System.out.println("Error");
        }
    }
}

