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
        // Khởi tạo UsersDao để thao tác với database
        UsersDao usersDao = new UsersDao();

        // Gọi phương thức findAll để lấy tất cả người dùng
        List<Users> usersList = usersDao.findAll();

        // Kiểm tra xem có người dùng nào trong danh sách không
        if (usersList != null && !usersList.isEmpty()) {
            // In ra thông tin của từng người dùng trong danh sách
            for (Users user : usersList) {
                System.out.println(user);
            }
        } else {
            System.out.println("Không có người dùng nào trong hệ thống.");
        }
    }

    public boolean checkUsernameExits(Users users) {
        String sql = "SELECT *\n"
                + "  FROM [dbo].[users]\n"
                + "  where full_name = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("full_name", users.getFull_name());
        return !queryGenericDAO(Users.class, sql, parameterMap).isEmpty();
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

}
