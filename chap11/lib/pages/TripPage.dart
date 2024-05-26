import 'package:flutter/material.dart';

class Trip {
  String id;
  String tripName;
  String tripLocation;

  Trip({required this.id, required this.tripName, required this.tripLocation});
}

class TripsPage extends StatefulWidget {
  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  List<Trip> _trips = [];

  @override
  void initState() {
    super.initState();
    _trips = [
      Trip(id: '0', tripName: 'Rome', tripLocation: 'Italy'),
      Trip(id: '1', tripName: 'Paris', tripLocation: 'France'),
      Trip(id: '2', tripName: 'New York', tripLocation: 'USA - New York'),
      Trip(id: '3', tripName: 'Cancun', tripLocation: 'Mexico'),
      Trip(id: '4', tripName: 'London', tripLocation: 'England'),
      Trip(id: '5', tripName: 'Sydney', tripLocation: 'Australia'),
      Trip(id: '6', tripName: 'Miami', tripLocation: 'USA - Florida'),
      Trip(id: '7', tripName: 'Rio de Janeiro', tripLocation: 'Brazil'),
      Trip(id: '8', tripName: 'Cusco', tripLocation: 'Peru'),
      Trip(id: '9', tripName: 'New Delhi', tripLocation: 'India'),
      Trip(id: '10', tripName: 'Tokyo', tripLocation: 'Japan'),
    ];
  }

  void _markTripCompleted() {
    // Mark trip completed in Database or web service
  }

  void _deleteTrip() {
    // Delete trip from Database or web service
  }

  ListTile _buildListTile(int index) {
    return ListTile(
      title: Text('${_trips[index].tripName}'),
      subtitle: Text(_trips[index].tripLocation),
      leading: Icon(Icons.flight),
      trailing: Icon(Icons.fastfood),
    );
  }

  Container _buildCompleteTrip() {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.done,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRemoveTrip() {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trips'),
      ),
      body: ListView.builder(
        itemCount: _trips.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(_trips[index].id),
            child: _buildListTile(index),
            background: _buildCompleteTrip(),
            secondaryBackground: _buildRemoveTrip(),
            onDismissed: (DismissDirection direction) {
              direction == DismissDirection.startToEnd ? _markTripCompleted() : _deleteTrip();
              // Remove item from List
              setState(() {
                _trips.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}
