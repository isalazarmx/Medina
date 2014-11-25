
package mx.edu.tecnm.toluca.database;

/**
 *
 * @author Víctor <viktor.santillan@gmail.com>
 */

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;

public class ConexionDB
{
    public static JdbcTemplate Connection(){
        SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
        dataSource.setDriverClass(org.postgresql.Driver.class);
        dataSource.setUsername("postgres");
        dataSource.setUrl("jdbc:postgresql://localhost/postgres");
        dataSource.setPassword("password");
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        System.out.println("conection successful");
        return jdbcTemplate;
    }
}
