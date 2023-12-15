package com.example.util;

import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import javax.sql.DataSource;
import java.lang.annotation.Target;
import java.sql.Connection;
import java.sql.SQLException;

public class DataSourceTest {

    @Test
    public void testConnection(){
        ApplicationContext ctx = new FileSystemXmlApplicationContext(
                "file:src/main/webapp/WEB-INF/applicationContext.xml");
        DataSource ds = (DataSource) ctx.getBean("dataSource");

        try {
            Connection con = ds.getConnection();
            System.out.println("DB connected");
        } catch (SQLException e){
            e.printStackTrace();
            System.out.println("DB disconnected");
        }
    }
}
