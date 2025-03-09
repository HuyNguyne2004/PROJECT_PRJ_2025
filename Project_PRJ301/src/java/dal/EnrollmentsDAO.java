/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Timestamp;
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

        // 1. Lấy danh sách enrollments hiện có
        List<Enrollments> enrollmentsList = enrollmentsDAO.findAll();

        if (enrollmentsList.isEmpty()) {
            System.out.println("No enrollments found to update.");
            return;
        }

        // 2. Chọn một enrollment để cập nhật (lấy enrollment đầu tiên trong danh sách)
        Enrollments enrollmentToUpdate = enrollmentsList.get(0);

        System.out.println("Updating enrollment with ID: " + enrollmentToUpdate.getEnrollment_id());

        // 3. Cập nhật thông tin
        enrollmentToUpdate.setStatus("WAITLISTED");  // Thay đổi trạng thái
        enrollmentToUpdate.setEnrolled_date(new Timestamp(System.currentTimeMillis())); // Cập nhật thời gian

        // 4. Gọi phương thức update
        enrollmentsDAO.update(enrollmentToUpdate);

        System.out.println("Enrollment updated successfully!");

        // 5. Kiểm tra lại danh sách enrollments sau khi cập nhật
        List<Enrollments> updatedEnrollmentsList = enrollmentsDAO.findAll();
        for (Enrollments enrollment : updatedEnrollmentsList) {
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
        List <Enrollments> list = queryGenericDAO(Enrollments.class, sql, parameterMap);
        return list.get(0);
    }

    

}
