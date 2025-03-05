/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.List;
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
        // Tạo instance của CourseDao
        CourseDao courseDao = new CourseDao();

        // Gọi phương thức findAll() để lấy danh sách các khóa học
        List<Courses> courses = courseDao.findAll();

        // Kiểm tra danh sách có dữ liệu hay không
        if (courses == null || courses.isEmpty()) {
            System.out.println("No courses found!");
        } else {
            // In danh sách khóa học
            System.out.println("List of Courses:");
            for (Courses course : courses) {
                System.out.println("Course ID: " + course.getCourse_id());
                System.out.println("Title: " + course.getTitle());
                System.out.println("Description: " + course.getDescription());
                System.out.println("Instructor ID: " + course.getInstructor_id());
                System.out.println("Schedule: " + course.getSchedule());
                System.out.println("Max Students: " + course.getMax_students());
                System.out.println("Room ID: " + course.getRoom_id());
                System.out.println("Image: " + course.getImage());
                System.out.println("-----------------------------------");
            }
        }
    }
}
