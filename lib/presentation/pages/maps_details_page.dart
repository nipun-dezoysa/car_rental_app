import 'package:car_rental_app/data/models/Car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsDetailsPage extends StatelessWidget {
  final Car car;
  const MapsDetailsPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51.5, -0.09),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: carDetailsCard(car: car),
          )
        ],
      ),
    );
  }
}

Widget carDetailsCard({required Car car}) {
  return SizedBox(
    height: 350,
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                '${car.model}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${car.distance} km',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.battery_full,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${car.fuelCapacity.toString()} L',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Features",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                featureIcons(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${car.pricePerHour}/day",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: Image.asset('assets/white_car.png'),
        ),
      ],
    ),
  );
}

Widget featureIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      featureIcon(Icons.local_gas_station, "Diesel", "Common Rail"),
      featureIcon(Icons.speed, "Acceleration", "0 - 100 km/h"),
      featureIcon(Icons.ac_unit, "Cold", "Temp Control"),
    ],
  );
}

Widget featureIcon(IconData icon, String title, String subTitle) {
  return Container(
    width: 100,
    height: 100,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey,
        width: 1,
      ),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        Text(title),
        Text(
          subTitle,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}
