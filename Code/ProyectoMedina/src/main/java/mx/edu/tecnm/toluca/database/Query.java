/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import static mx.edu.tecnm.toluca.database.ConexionDB.Connection;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Raf
 */
public class Query {
    static Connection cone;
    static JdbcTemplate jdbcTemplate;
    
    /**
     *
     * @param CAMPOS Arreglo de tipo String con todos los campos
     * @param DATOS arreglo de los Datos que debe tomar cada campo
     * @param TABLA tabla de ña base de datos
     * @return
     */
    public static boolean insertaGeneral(String[] CAMPOS, String[] DATOS, String TABLA) {
        boolean result = false;
        if (CAMPOS.length == DATOS.length) {
            jdbcTemplate = Connection();
            String campo = " ( ";
            for (int i = 0; i < CAMPOS.length; i++) {
                if (i == CAMPOS.length - 1) {
                    campo = campo + CAMPOS[i];
                } else {
                    campo = campo + CAMPOS[i] + ", ";
                }
            }
            campo += " ) ";
            String values = "( '";
            for (int i = 0; i < DATOS.length; i++) {
                values = values + "";
                if (i == DATOS.length - 1) {
                    values = values + DATOS[i];
                    values = values + "";
                } else {
                    values = values + DATOS[i] + "',' ";
                }

            }
            values += "')";
            String QUERY = "INSERT INTO " + TABLA + campo + " VALUES " + values;
            System.out.println(QUERY);
            QUERY += ";";
            try {

                jdbcTemplate.execute(QUERY);
                result = true;
            } catch (Exception e) {
                System.out.println(e);
                result=false;
            }
        }
        return result;
    }
    
    
      /**
     *
     * @param campos
     * @param condicion
     * @param TABLA
     * @return
     */
    public static boolean actualizarGeneral(String campos, String condicion, String TABLA) {
        boolean result = false;
        if (condicion.compareTo("") != 0) {
            jdbcTemplate = Connection();

            String QUERY = "UPDATE " + TABLA + " SET " + campos + " WHERE (" + condicion + ");";
            try {
                
                    jdbcTemplate.update(QUERY);
                    result = true;                
            } catch (Exception ex) {
                   System.out.println(ex); 
            }
        } 
        return result;
    }
    
    
}
