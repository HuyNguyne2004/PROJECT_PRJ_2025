/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.LinkedHashMap;
import java.util.List;
import model.Users;

/**
 *
 * @author Admin
 */
public class UsersDao extends GenericDAO<Users> {

    public Users findByUserNameAndPass(Users users) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[users]\n"
                + "  where email = ? and password = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email", users.getEmail());
        parameterMap.put("password", users.getPassword());
        List<Users> list = queryGenericDAO(Users.class, sql, parameterMap);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public List<Users> findAll() {
        return queryGenericDAO(Users.class);
    }

    public static void main(String[] args) {

    }

    public boolean checkUsernameExits(Users users) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[users]\n"
                + "  where full_name = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", users.getFull_name());

        return !queryGenericDAO(Users.class,
                sql, parameterMap).isEmpty();
    }

    public void insert(Users users) {
        String sql = "INSERT INTO [dbo].[users]\n"
                + "           ([full_name]\n"
                + "           ,[email]\n"
                + "           ,[password]\n"
                + "           ,[role]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,'STUDENT'\n"
                + "           ,'ACTIVE')";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", users.getFull_name());
        parameterMap.put("email", users.getEmail());
        parameterMap.put("password", users.getPassword());
        int insert = insertGenericDAO(sql, parameterMap);

    }

    public boolean isInstructorExist(int instructorId) {
        String sql = "SELECT COUNT(*) \n"
                + "FROM users \n"
                + "WHERE user_id = ? AND role = 'INSTRUCTOR';";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("user_id ", instructorId);

        int check = findTotalRecordGenericDAO(Users.class,
                sql, parameterMap);
        if (check > 0) {
            return true;
        }
        return false;

    }

    public void add(Users newUser) {
        String sql = "INSERT INTO users (full_name, email, password, role, status) VALUES (?, ?, ?, ?, ?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", newUser.getFull_name());
        parameterMap.put("email", newUser.getEmail());
        parameterMap.put("password", newUser.getPassword());
        parameterMap.put("role", newUser.getRole());
        parameterMap.put("status", newUser.getStatus());

        insertGenericDAO(sql, parameterMap);
    }

    public void update(Users updatedUser) {
        String sql = "UPDATE users SET full_name = ?, email = ?, password = ?, role = ?, status = ? WHERE user_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", updatedUser.getFull_name());
        parameterMap.put("email", updatedUser.getEmail());
        parameterMap.put("password", updatedUser.getPassword());
        parameterMap.put("role", updatedUser.getRole());
        parameterMap.put("status", updatedUser.getStatus());
        parameterMap.put("user_id", updatedUser.getUser_id());
        updateGenericDAO(sql, parameterMap);
    }

    public boolean delete(int userId) {
        String sqlDeleteEnrollments = "DELETE FROM enrollments WHERE student_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("student_id", userId);
        deleteGenericDAO(sqlDeleteEnrollments, parameterMap);

        String sqlDeleteUser = "DELETE FROM users WHERE user_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("user_id", userId);
        return deleteGenericDAO(sqlDeleteUser, parameterMap);
    }

    public Users findById(int userId) {
        String sql = "SELECT * FROM users WHERE user_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("user_id", userId);

        List<Users> usersList = queryGenericDAO(Users.class, sql, parameterMap);
        return usersList.isEmpty() ? null : usersList.get(0); // Trả về user đầu tiên nếu có
    }

    public boolean checkEmailExists(String email) {
        String sql = "SELECT COUNT(*) FROM users WHERE email = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email", email);

        int count = findTotalRecordGenericDAO(Users.class, sql, parameterMap);
        return count > 0;
    }

    public List<Users> searchUsers(String keyword) {
        String sql = "SELECT * FROM users WHERE full_name LIKE ? OR email LIKE ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", "%" + keyword + "%");
        parameterMap.put("email", "%" + keyword + "%");

        return queryGenericDAO(Users.class, sql, parameterMap);
    }

}
