/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.util.List;
import model.Enrollments;

/**
 *
 * @author Admin
 */
public class EnrollmentsDAO extends GenericDAO<Enrollments>{

    @Override
    public List<Enrollments> findAll() {
       return queryGenericDAO(Enrollments.class);
    }
    public static void main(String[] args) {
        // Tạo đối tượng DAO
        EnrollmentsDAO enrollmentsDAO = new EnrollmentsDAO();
        
        // Gọi phương thức findAll() để lấy danh sách Enrollments
        List<Enrollments> enrollmentsList = enrollmentsDAO.findAll();
        
        // Kiểm tra dữ liệu trả về
        if (enrollmentsList.isEmpty()) {
            System.out.println("No enrollments found.");
        } else {
            // In danh sách enrollments
            System.out.println("List of Enrollments:");
            for (Enrollments enrollment : enrollmentsList) {
                System.out.println("Enrollment ID: " + enrollment.getEnrollment_id()
                        + ", Student ID: " + enrollment.getStudent_id()
                        + ", Course ID: " + enrollment.getCourse_id()
                        + ", Enrolled Date: " + enrollment.getEnrolled_date()
                        + ", Status: " + enrollment.getStatus());
            }
        }
    }
    
}
