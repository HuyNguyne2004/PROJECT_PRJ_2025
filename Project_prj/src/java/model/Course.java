/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Course {

    private int courseId;
    private String title;
    private String description;
    private int instructorId;
    private String schedule;
    private int maxStudents;
    private int roomId;

    // Constructor
    public Course(int courseId, String title, String description, int instructorId,
            String schedule, int maxStudents, int roomId) {
        this.courseId = courseId;
        this.title = title;
        this.description = description;
        this.instructorId = instructorId;
        this.schedule = schedule;
        this.maxStudents = maxStudents;
        this.roomId = roomId;
    }

    // Getters and Setters
    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getInstructorId() {
        return instructorId;
    }

    public void setInstructorId(int instructorId) {
        this.instructorId = instructorId;
    }

    public String getSchedule() {
        return schedule;
    }

    public void setSchedule(String schedule) {
        this.schedule = schedule;
    }

    public int getMaxStudents() {
        return maxStudents;
    }

    public void setMaxStudents(int maxStudents) {
        this.maxStudents = maxStudents;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "Course{"
                + "courseId=" + courseId
                + ", title='" + title + '\''
                + ", description='" + description + '\''
                + ", instructorId=" + instructorId
                + ", schedule='" + schedule + '\''
                + ", maxStudents=" + maxStudents
                + ", roomId=" + roomId
                + '}';
    }
}
