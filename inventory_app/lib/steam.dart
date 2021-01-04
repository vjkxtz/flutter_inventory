import 'package:rxdart/rxdart.dart';
import 'constructor/inventoryconstructors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class InventoryaccessBloc {
  Stream<List<Spares>> get spares => _sparesSubjects.stream;
  final _sparesSubjects = BehaviorSubject<List<Spares>>();

  final _spare = [
    
  ];

  InventoryaccessBloc() {

  }

  Future<Spares> _getSpares(int id) async {
    final inventoryUrl = '';
    final inventoryRes = await http.get(inventoryUrl);
    if (inventoryRes.statusCode == 200){
      var jsonResponse = convert.jsonDecode(inventoryRes.body);
      return jsonResponse ;
    }

  }
}