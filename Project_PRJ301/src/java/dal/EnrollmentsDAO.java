/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Timestamp;
import java.util.AbstractMap;
import java.util.LinkedHashMap;
import java.util.List;
import model.Enrollments;

/**
 *
 * @author Admin
 */
public class EnrollmentsDAO extends GenericDAO<Enrollments> {

    @Override
    public List<Enrollments> findAll() {
        return queryGenericDAO(Enrollments.class);
    }

    public static void main(String[] args) {
        EnrollmentsDAO dao  = new EnrollmentsDAO();

        // ID của enrollment cần xóa (cập nhật trạng thái thành 'CANCELLED')
        int enrollmentId = 31; // Thay đổi giá trị này để test với các ID khác

        // Gọi phương thức delete() để cập nhật trạng thái
        boolean result = dao.delete(enrollmentId);

        // Kiểm tra kết quả
        if (result) {
            System.out.println("✅ Successfully updated enrollment ID " + enrollmentId + " to 'CANCELLED'.");
        } else {
            System.out.println("❌ Failed to update enrollment ID " + enrollmentId + ".");
        }
    }

    public void add(Enrollments newEnrollment) {
        String sql = "INSERT INTO enrollments (student_id, course_id, enrolled_date, status) VALUES (?, ?, ?, ?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("student_id", newEnrollment.getStudent_id());
        parameterMap.put("course_id", newEnrollment.getCourse_id());
        parameterMap.put("enrolled_date", newEnrollment.getEnrolled_date());
        parameterMap.put("status", newEnrollment.getStatus());
        insertGenericDAO(sql, parameterMap);
    }

    public void update(Enrollments updatedEnrollment) {
        String sql = "UPDATE enrollments SET student_id = ?, course_id = ?, enrolled_date = ?, status = ? WHERE enrollment_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("student_id", updatedEnrollment.getStudent_id());
        parameterMap.put("course_id", updatedEnrollment.getCourse_id());
        parameterMap.put("enrolled_date", updatedEnrollment.getEnrolled_date());
        parameterMap.put("status", updatedEnrollment.getStatus());
        parameterMap.put("enrollment_id", updatedEnrollment.getEnrollment_id());
        updateGenericDAO(sql, parameterMap);
    }

    public boolean delete(int enrollmentId) {
        String sql = "UPDATE Enrollments\n"
                + "SET status = 'CANCELLED'\n"
                + "WHERE enrollment_id = ?";
        parameterMap = parameterMap = new LinkedHashMap<>();
        parameterMap.put("enrollment_id", enrollmentId);
        return updateGenericDAO(sql, parameterMap);
    }

    public Enrollments findById(int enrollmentId) {
        String sql = "SELECT * FROM enrollments WHERE enrollment_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("enrollment_id", enrollmentId);
        List<Enrollments> list = queryGenericDAO(Enrollments.class, sql, parameterMap);
        return list.get(0);
    }

    public void insert(Enrollments enrollments) {
        String sql = "INSERT INTO enrollments (student_id, course_id, enrolled_date, status) VALUES (?, ?, ?, ?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("student_id", enrollments.getStudent_id());
        parameterMap.put("course_id", enrollments.getCourse_id());
        parameterMap.put("enrolled_date", enrollments.getEnrolled_date());
        parameterMap.put("status", enrollments.getStatus());
        int insert = insertGenericDAO(sql, parameterMap);
    }

    public List<Enrollments> findByStudentID(int studentID) {
        String sql = "SELECT e.enrollment_id, e.student_id, u.full_name, e.course_id, c.title, e.enrolled_date, e.status "
                + "FROM enrollments e "
                + "JOIN users u ON e.student_id = u.user_id "
                + "JOIN courses c ON e.course_id = c.course_id "
                + "WHERE e.student_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("student_id", studentID);
        return queryGenericDAO(Enrollments.class, sql, parameterMap);
    }

}
