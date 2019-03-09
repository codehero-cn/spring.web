package spring.web.jdbc;

import java.sql.SQLException;

import org.junit.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
/**
 * 使用Spring提供的轻量级org.springframework.jdbc.datasource.DriverManagerDataSource获取DataSource
 * 这种方法是轻量级的，方便测试
 * @author eleven
 *
 */
public class DataSoureProvider {
    public static DriverManagerDataSource dataSource = new DriverManagerDataSource();

    public static DriverManagerDataSource getInstance() {
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/cn.codehero.spring.web");
        dataSource.setUsername("root");
        dataSource.setPassword("123456");
        return dataSource;
    }

    @Test
    public void test() {
        DataSoureProvider.getInstance();
        try {
            dataSource.getConnection();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}