package org.example.dao;

import org.example.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/UserDB";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1234";

    private static final String INSERT_USERS_SQL = "INSERT INTO users (uid, firstname, lastname, address, phone, email) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_USER_BY_ID = "SELECT id, uid, firstname, lastname, address, phone, email FROM users WHERE id = ?";
    private static final String SELECT_ALL_USERS = "SELECT * FROM users";
    private static final String DELETE_USERS_SQL = "DELETE FROM users WHERE id = ?";
    private static final String UPDATE_USERS_SQL = "UPDATE users SET uid = ?, firstname = ?, lastname = ?, address = ?, phone = ?, email = ?  WHERE id = ?";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getUid());
            preparedStatement.setString(2, user.getFirstname());
            preparedStatement.setString(3, user.getLastname());
            preparedStatement.setString(4, user.getAddress());
            preparedStatement.setString(5, user.getPhone());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public User selectUser(int id) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String uid = rs.getString("uid");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                user = new User(id, uid, firstname, lastname, address, phone, email);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String uid = rs.getString("uid");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                users.add(new User(id, uid, firstname, lastname, address, phone, email));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL)) {
            statement.setString(1, user.getUid());
            statement.setString(2, user.getFirstname());
            statement.setString(3, user.getLastname());
            statement.setString(4, user.getAddress());
            statement.setString(5, user.getPhone());
            statement.setString(6, user.getEmail());
            statement.setInt(7, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}

