/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;
import java.util.List;
import model.Rooms;
/**
 *
 * @author Admin
 */
public class RoomDao extends GenericDAO<Rooms>{

    @Override
    public List<Rooms> findAll() {
        return queryGenericDAO(Rooms.class);
    }
    
     public static void main(String[] args) {
        // Tạo đối tượng RoomDao
        RoomDao roomDao = new RoomDao();

        // Gọi phương thức findAll để lấy danh sách các phòng học
        List<Rooms> rooms = roomDao.findAll();

        // In ra thông tin các phòng học
        if (rooms != null && !rooms.isEmpty()) {
            for (Rooms room : rooms) {
                System.out.println("Room ID: " + room.getRoom_id() + ", Name: " + room.getRoom_name() + ", Capacity: " + room.getCapacity());
            }
        } else {
            System.out.println("No rooms found.");
        }
    }
}
