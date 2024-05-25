class algorithm {
  int calculateMinRooms(List<List<int>> examTime) {
    // Sort the list in ascending order by end time
    examTime.sort((a, b) => a[1].compareTo(b[1]));

    List<List<List<int>>> rooms = []; // Create a list of rooms

    while (examTime.isNotEmpty) { // Loop until all exams are scheduled in rooms
      List<List<int>> room = []; // Create a list of exams for the room

      for (int i = 0; i < examTime.length; i++) {
        if (room.isEmpty || room.last[1] <= examTime[i][0]) { // If the room is empty or the last exam in the room ends before the next exam starts
          room.add(examTime[i]); // Add the exam to the room
          examTime.removeAt(i); // Remove the exam from the list of exams waiting to be scheduled
          i = -1; // Reset i to -1 so the loop starts from 0 again as the positions of the exams have changed after removal
        }
      }

      rooms.add(room); // Add the room with its exams to the list of rooms
    }

    return rooms.length; // Return the number of rooms needed
  }
}
