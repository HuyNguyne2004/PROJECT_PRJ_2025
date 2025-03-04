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

        // Tạo một User mới để thêm vào DB
        Users newUser = new Users();
        newUser.setFull_name("Nguyễn Văn A"); // Thay đổi tên user theo ý muốn
        newUser.setEmail("nguyenvanaq@example.com"); // Email hợp lệ
        newUser.setPassword("securepassword"); // Mật khẩu giả định

        // Kiểm tra xem user đã tồn tại chưa
        boolean exists = usersDao.checkUsernameExits(newUser);
        if (exists) {
            System.out.println("User đã tồn tại trong hệ thống.");
        } else {
            // Nếu user chưa tồn tại, tiến hành thêm mới
            usersDao.insert(newUser);
            System.out.println("User đã được thêm vào hệ thống.");

            // Kiểm tra lại xem user có thực sự được thêm hay không
            exists = usersDao.checkUsernameExits(newUser);
            if (exists) {
                System.out.println("Thêm user thành công!");
            } else {
                System.out.println("Thêm user thất bại!");
            }
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
