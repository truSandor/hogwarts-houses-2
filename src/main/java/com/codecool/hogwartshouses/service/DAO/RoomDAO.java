package com.codecool.hogwartshouses.service.DAO;

import com.codecool.hogwartshouses.model.Room;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomDAO {
    void add(Room room);

}