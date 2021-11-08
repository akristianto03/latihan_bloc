part of 'services.dart';

class RajaongkirService {
  static Future<http.Response> getOngkir(
      String origin, String destination, String courier, int weight) {
    return http.post(
      Uri.https(Glovar.apiURL, "/starter/cost"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'key': Glovar.apiKey
      },
      body: jsonEncode(<String, dynamic>{
        'origin': origin,
        'destination': destination,
        'courier': courier,
        'weight': weight,
      }),
    );
  }
}
