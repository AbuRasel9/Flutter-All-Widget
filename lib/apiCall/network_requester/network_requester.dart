import 'dart:convert';

import 'package:http/http.dart';
class NetworkRequester {

  Future<Response>getRequest(String url,String token)async{
    try{
      Response response=await get(Uri.parse(url),headers: {
        "X-Api-Key":"$token",
        "Content-Type":"application/json",

      });
      if(response.statusCode==200){
        return jsonDecode(response.body);

      }else{
        throw Exception("Failed");
      }
    }catch(e){
      throw Exception("Api call failed");
    }

  }
}