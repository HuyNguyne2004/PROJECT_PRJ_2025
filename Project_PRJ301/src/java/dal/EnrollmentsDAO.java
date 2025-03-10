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
        EnrollmentsDAO enrollmentsDAO = new EnrollmentsDAO();

        // 1. Tạo một đối tượng Enrollment mới
        Enrollments newEnrollment = Enrollments.builder()
                .student_id(154) // Giả sử student_id là 1
                .course_id(444) // Giả sử course_id là 101
                .enrolled_date(new Timestamp(System.currentTimeMillis())) // Thời gian hiện tại
                .status("ENROLLED") // Trạng thái ban đầu
                .build();

        // 2. Thực hiện chèn dữ liệu vào database
        enrollmentsDAO.insert(newEnrollment);

        System.out.println("New enrollment inserted successfully!");

        // 3. Lấy danh sách enrollments sau khi thêm
        List<Enrollments> enrollmentsList = enrollmentsDAO.findAll();

        // 4. In ra danh sách enrollments
        System.out.println("Enrollments list after insert:");
        for (Enrollments enrollment : enrollmentsList) {
            System.out.println("Enrollment ID: " + enrollment.getEnrollment_id()
                    + ", Student ID: " + enrollment.getStudent_id()
                    + ", Course ID: " + enrollment.getCourse_id()
                    + ", Enrolled Date: " + enrollment.getEnrolled_date()
                    + ", Status: " + enrollment.getStatus());
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
        String sql = "DELETE FROM enrollments WHERE enrollment_id = ?";
        parameterMap = parameterMap = new LinkedHashMap<>();
        parameterMap.put("enrollment_id", enrollmentId);
        return deleteGenericDAO(sql, parameterMap);
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

}
