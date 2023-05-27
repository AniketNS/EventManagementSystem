import java.sql.Connection;
import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManager {
    private Connection connection;

    public DBManager() {
        connection = DatabaseConnection.getConnection();
    }
    
    public class DatabaseConnection {
        private static Connection connection;

        static {
            try {
                Properties properties = new Properties();
                InputStream inputStream = DatabaseConnection.class.getClassLoader().getResourceAsStream("db.properties");

                if (inputStream != null) {
                    properties.load(inputStream);
                } else {
                    throw new IOException("db.properties file not found");
                }

                String driver = properties.getProperty("db.driver");
                String url = properties.getProperty("db.url");
                String username = properties.getProperty("db.username");
                String password = properties.getProperty("db.password");

                Class.forName(driver);
                connection = DriverManager.getConnection(url, username, password);
            } catch (ClassNotFoundException | SQLException | IOException e) {
                e.printStackTrace();
            }
        }

        public static Connection getConnection() {
            return connection;
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet executeQuery(String query) {
        PreparedStatement statement;
        ResultSet resultSet = null;
        try {
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return resultSet;
    }

    public int executeUpdate(String query) {
        PreparedStatement statement;
        int rowsAffected = 0;
        try {
            statement = connection.prepareStatement(query);
            rowsAffected = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }
    
    public boolean registerUser(String name, String email, String phone, String password, String role) {
        String query = "INSERT INTO users (name, email, phone_number, password, role) VALUES (?, ?, ?, ?, ?)";
        int rowsAffected = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, phone);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, role);
            rowsAffected = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected > 0;
    }
}