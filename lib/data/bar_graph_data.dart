import 'package:fitness_tracker/models/bar_graph_model.dart';
import 'package:fitness_tracker/models/grapgh_model.dart';
import 'package:flutter/material.dart';

class BarGraphData {

final data = [

  BarGraphModel(label: "Claories Burned", color: Color.fromARGB(255, 90, 128, 154),
   graph: [
    GraphModel(x: 0, y: 8),
     GraphModel(x: 1, y: 18),
      GraphModel(x: 2, y: 7),
       GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 1),
         GraphModel(x: 5, y: 6),
   ]
   ),
  BarGraphModel(label: "Proteen", color: Color.fromARGB(255, 13, 245, 178),
   graph: [
    GraphModel(x: 0, y: 8),
     GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 9),
       GraphModel(x: 3, y: 2),
        GraphModel(x: 4, y: 6),
         GraphModel(x: 5, y: 7),
   ]
   ),
  

];

final label = ["M","T","W","T","F","S"];

}