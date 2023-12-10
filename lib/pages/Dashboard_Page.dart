import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  GoogleMapController? _mapController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3, // Adjust the flex value as needed
            child: GoogleMap(
              onMapCreated: (controller) {
                setState(() {
                  _mapController = controller;
                });
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(27.7172, 85.3240), // Coordinates for Kathmandu
                zoom: 14.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId('Kathmandu'),
                  position: LatLng(27.7172, 85.3240),
                  icon: BitmapDescriptor.defaultMarker,
                ),
                // Add more markers for other locations if needed
              },
            ),
          ),
          Expanded(
            flex: 1, // Adjust the flex value as needed
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.schedule,
                    color: Colors.green,
                  ),
                  label: 'Schedule',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.feedback,
                    color: Colors.green,
                  ),
                  label: 'Complaints',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}