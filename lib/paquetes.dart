import 'package:http/http.dart' as http;

import 'package:dart_application_1/classes/request_respuesta.dart';

void getRe (){
  
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  // ya realizamos la peticion y retorna un future 
  http.get(url).then( (res) {
    //print(res);
    //final body = jsonDecode(res.body);

    //print(body);

    //print('page: ${body['page'] }');
    //print('per_page: ${body['per_page']}');
    //print('id dele elemento: ${body['data'][2]['id']}');

    final resReqRes = reqRespuestaFromJson(res.body);

    print('page: ${resReqRes.perPage}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');

  });
}

void getPais (){
  
  final url = Uri.parse('https://restcountries.com/v3.1/alpha/col');
  // ya realizamos la peticion y retorna un future 
  http.get(url).then( (res) {
    
    //final col = paisFromJson(res.body);

    
    
  }).catchError((error) => print(error));
}