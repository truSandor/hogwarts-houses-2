package com.codecool.hogwartshouses.service;

import com.codecool.hogwartshouses.model.Room;
import com.codecool.hogwartshouses.model.enums.PetType;
import com.codecool.hogwartshouses.DAO.RoomDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class RoomService {
    private final RoomDAO roomDAO;

    @Autowired
    public RoomService(RoomDAO roomDAO) {
        this.roomDAO = roomDAO;
    }

    public List<Room> getAll() {
        return roomDAO.getAll().stream()
                .sorted(Comparator.comparing(Room::getId))
                .collect(Collectors.toList());
    }

    public void add(Room room) {
        roomDAO.add(room);
    }

    public Optional<Room> findById(long id) {
        return roomDAO.findById(id);
    }

    public void delete(long id) {
        roomDAO.delete(id);
    }

    public void renovate(long id) {
        roomDAO.renovate(id);
    }

    public List<Room> getAllAvailable(){
        return roomDAO.getAllAvailable();
    }

    public List<Room> getWithoutPetType(PetType... petTypes){
        return roomDAO.getWithoutPetType(petTypes);
    }

}
