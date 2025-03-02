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

    @Override
    public List<Users> findAll() {
        return queryGenericDAO(Users.class);
    }

    public List<Users> loginUsers(String email, String password) {
        String sql = "SELECT [user_id], [full_name], [email], [role], [status] FROM [dbo].[users]"
                + " WHERE [email] = ? AND [] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("email",email);
        parameterMap.put("password", password);
        return queryGenericDAO(Users.class, sql, parameterMap);

    }

    public static void main(String[] args) {
        // Create an instance of UsersDao
        UsersDao usersDao = new UsersDao();

        // Call the findAll() method to get the list of users
        List<Users> usersList = usersDao.findAll();

        // Print the users list to the console
        if (usersList != null && !usersList.isEmpty()) {
            for (Users user : usersList) {
                // Assuming Users class has a toString() method that prints user details
                System.out.println(user);
            }
        } else {
            System.out.println("No users found.");
        }
    }

}
