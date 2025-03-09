/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Scanner;
import model.Courses;

/**
 *
 * @author Admin
 */
public class CourseDao extends GenericDAO<Courses> {

    @Override
    public List<Courses> findAll() {
        return queryGenericDAO(Courses.class);
    }

    public static void main(String[] args) {
        // ✅ Tạo instance của CourseDao
        CourseDao courseDao = new CourseDao();

        // ✅ Tạo Scanner để nhập từ khóa tìm kiếm
        Scanner scanner = new Scanner(System.in);

        System.out.println("🔍 Nhập từ khóa để tìm kiếm khóa học: ");
        String keyword = scanner.nextLine();  // Người dùng nhập từ khóa tìm kiếm

        // ✅ Gọi hàm searchCoursesByName để tìm kiếm khóa học
        List<Courses> foundCourses = courseDao.searchCoursesByName("%" + keyword + "%");

        // ✅ Kiểm tra và in ra danh sách khóa học tìm thấy
        if (foundCourses.isEmpty()) {
            System.out.println("⚠ Không tìm thấy khóa học nào với từ khóa: " + keyword);
        } else {
            System.out.println("\n📌 Danh sách khóa học tìm thấy:");
            for (Courses course : foundCourses) {
                System.out.println("🔹 Course ID: " + course.getCourse_id()
                        + ", Title: " + course.getTitle()
                        + ", Instructor ID: " + course.getInstructor_id());
            }
        }

        // ✅ Đóng Scanner
        scanner.close();
    }

    public void delete(int courseId) {
        // 🛑 Xóa dữ liệu liên quan trước
        String sqlDeleteNotifications = "DELETE FROM notifications WHERE course_id = ?";
        String sqlDeleteReviews = "DELETE FROM reviews WHERE course_id = ?";
        String sqlDeleteEnrollments = "DELETE FROM enrollments WHERE course_id = ?";
        String sqlDeleteCourse = "DELETE FROM courses WHERE course_id = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("course_id", courseId);

        deleteGenericDAO(sqlDeleteNotifications, parameterMap);
        deleteGenericDAO(sqlDeleteReviews, parameterMap);
        deleteGenericDAO(sqlDeleteEnrollments, parameterMap);
        boolean deletedCourse = deleteGenericDAO(sqlDeleteCourse, parameterMap);

        if (deletedCourse) {
            System.out.println("✅ Xóa thành công khóa học với ID: " + courseId);
        } else {
            System.out.println("⚠ Không thể xóa khóa học với ID: " + courseId + " (có thể không tồn tại hoặc bị ràng buộc)");
        }
    }

    public void update(Courses updatedCourse) {
        String sql = "UPDATE [dbo].[courses]\n"
                + "SET [title] = ?, \n"
                + "    [description] = ?, \n"
                + "    [instructor_id] = ?, \n"
                + "    [schedule] = ?, \n"
                + "    [max_students] = ?, \n"
                + "    [room_id] = ?\n"
                + "WHERE [course_id] = ?;";

        // Tạo một parameterMap để lưu trữ các tham số
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("title", updatedCourse.getTitle());
        parameterMap.put("description", updatedCourse.getDescription());
        parameterMap.put("instructor_id", updatedCourse.getInstructor_id());
        parameterMap.put("schedule", updatedCourse.getSchedule());
        parameterMap.put("max_students", updatedCourse.getMax_students());
        parameterMap.put("room_id", updatedCourse.getRoom_id());
        parameterMap.put("course_id", updatedCourse.getCourse_id());  // Đảm bảo rằng bạn truyền vào course_id để tìm đúng khóa học

        // Thực thi câu lệnh UPDATE
        boolean check = updateGenericDAO(sql, parameterMap);

        // Kiểm tra kết quả
        if (check) {
            System.out.println("Course with ID " + updatedCourse.getCourse_id() + " was updated successfully.");
        } else {
            System.out.println("Failed to update the course with ID " + updatedCourse.getCourse_id());
        }
    }

    public void insert(Courses newCourse) {
        String sql = "INSERT INTO courses (title, description, instructor_id, schedule, max_students, room_id) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

        // Tạo một parameterMap để lưu trữ các tham số
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("title", newCourse.getTitle());
        parameterMap.put("description", newCourse.getDescription());
        parameterMap.put("instructor_id", newCourse.getInstructor_id());
        parameterMap.put("schedule", newCourse.getSchedule());
        parameterMap.put("max_students", newCourse.getMax_students());
        parameterMap.put("room_id", newCourse.getRoom_id());

        // Thực thi câu lệnh INSERT
        int inserted = insertGenericDAO(sql, parameterMap);

    }

    public Courses findById(int courseId) {
        String sql = "SELECT [course_id], [title], [description], [instructor_id], [schedule], "
                + "[max_students], [room_id], [image] FROM [dbo].[courses] WHERE [course_id] = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("course_id", courseId); // Đặt tham số đúng cách

        List<Courses> list = queryGenericDAO(Courses.class,
                sql, parameterMap);

        return list.isEmpty() ? null : list.get(0); // Trả về null nếu không tìm thấy khóa học
    }

    public List<Courses> searchCoursesByName(String searchKeyword) {
        String sql = "SELECT * FROM courses WHERE course_id LIKE ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("course_id", searchKeyword);
        return queryGenericDAO(Courses.class, sql, parameterMap);
    }

}
