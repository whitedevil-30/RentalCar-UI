import 'package:flutter/material.dart';

double iconSize = 30;

CarList carList = CarList(cars: [
  Car(companyName: "Chevrolet", carName: "Corvette", price: "21000", imgList: [
    "corvette_front.png",
    "corvette_back.png",
    "interior1.png",
    "interior2.png",
    "corvette_front2.png",
  ], offerDetails: [
    {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
    {Icon(Icons.airline_seat_individual_suite, size: iconSize): "2 seats"},
    {Icon(Icons.pin_drop, size: iconSize): "70L"},
    {Icon(Icons.shutter_speed, size: iconSize): "700HP"},
    {Icon(Icons.invert_colors, size: iconSize): "Variant Colours"},
  ], specifications: [
    {
      Icon(Icons.av_timer, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
    },
    {
      Icon(Icons.power, size: iconSize): {"Engine(upto)": "6200 cc"}
    },
    {
      Icon(Icons.assignment_late, size: iconSize): {"BHP": "700"}
    },
  ],
  features: [
    {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
    {Icon(Icons.usb, size: iconSize): "USB Port"},
    {Icon(Icons.power_settings_new, size: iconSize): "Keyless"},
    {Icon(Icons.android, size: iconSize): "Android Auto"},
    {Icon(Icons.ac_unit, size: iconSize): "AC"},
  ]),
  
  Car(companyName: "Lamborghini", carName: "Aventador", price: "30000", imgList: [
    "lambo_front.png",
    "interior_lambo.png",
    "lambo_back.png",
  ], 
  offerDetails: [
    {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
    {Icon(Icons.airline_seat_individual_suite, size: iconSize): "2 seats"},
    {Icon(Icons.pin_drop, size: iconSize): "90L"},
    {Icon(Icons.shutter_speed, size: iconSize): "700HP"},
    {Icon(Icons.invert_colors, size: iconSize): "Variant Colours"},
  ], 
  specifications: [
    {
      Icon(Icons.av_timer, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
    },
    {
      Icon(Icons.power, size: iconSize): {"Engine(upto)": "6500 cc"}
    },
    {
      Icon(Icons.assignment_late, size: iconSize): {"BHP": "700"}
    },
  ], 
  features: [
    {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
    {Icon(Icons.usb, size: iconSize): "USB Port"},
    {Icon(Icons.power_settings_new, size: iconSize): "Keyless"},
    {Icon(Icons.android, size: iconSize): "Android Auto"},
    {Icon(Icons.ac_unit, size: iconSize): "AC"},
  ]),

  Car(companyName: "Ferrari", carName: "F8", price: "30000", imgList: [
    "Ferrari-front.png",
    "Ferrari-side.png",
    "Ferrari-back.png",
    "ferrari inside.jpg"
  ], 
  offerDetails: [
    {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
    {Icon(Icons.airline_seat_individual_suite, size: iconSize): "2 seats"},
    {Icon(Icons.pin_drop, size: iconSize): "78L"},
    {Icon(Icons.shutter_speed, size: iconSize): "710HP"},
    {Icon(Icons.invert_colors, size: iconSize): "Variant Colours"},
  ], 
  specifications: [
    {
      Icon(Icons.av_timer, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
    },
    {
      Icon(Icons.power, size: iconSize): {"Engine(upto)": "3996 cc"}
    },
    {
      Icon(Icons.assignment_late, size: iconSize): {"BHP": "4000"}
    },
  ], 
  features: [
    {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
    {Icon(Icons.usb, size: iconSize): "USB Port"},
    {Icon(Icons.power_settings_new, size: iconSize): "Keyless"},
    {Icon(Icons.android, size: iconSize): "Android Auto"},
    {Icon(Icons.ac_unit, size: iconSize): "AC"},
  ]),

  Car(companyName: "Lamborghini", carName: "Huracan", price: "30000", imgList: [
    "red-front.png",
    "red-back.png",
    "red-side.png",
  ], 
  offerDetails: [
    {Icon(Icons.bluetooth, size: iconSize): "Automatic"},
    {Icon(Icons.airline_seat_individual_suite, size: iconSize): "2 seats"},
    {Icon(Icons.pin_drop, size: iconSize): "80L"},
    {Icon(Icons.shutter_speed, size: iconSize): "600HP"},
    {Icon(Icons.invert_colors, size: iconSize): "Variant Colours"},
  ], 
  specifications: [
    {
      Icon(Icons.av_timer, size: iconSize): {"Milegp(upto)": "14.2 kmpl"}
    },
    {
      Icon(Icons.power, size: iconSize): {"Engine(upto)": "5200 cc"}
    },
    {
      Icon(Icons.assignment_late, size: iconSize): {"BHP": "700"}
    },
  ], 
  features: [
    {Icon(Icons.bluetooth, size: iconSize): "Bluetooth"},
    {Icon(Icons.usb, size: iconSize): "USB Port"},
    {Icon(Icons.power_settings_new, size: iconSize): "Keyless"},
    {Icon(Icons.android, size: iconSize): "Android Auto"},
    {Icon(Icons.ac_unit, size: iconSize): "AC"},
  ])
]);

class CarList {
  List<Car> cars;

  CarList ({
    required this.cars
  });

}

class Car {
  String companyName;
  String carName;
  String price;
  List<String> imgList;
  List<Map<Icon, String>> offerDetails;
  List<Map<Icon, String>> features;
  List<Map<Icon, Map<String, String>>> specifications;

  Car({
      required this.companyName,
      required this.carName,
      required this.price,
      required this.imgList,
      required this.offerDetails,
      required this.features,
      required this.specifications,
  });

}