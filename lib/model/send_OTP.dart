import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
void main() async {
  await Supabase.initialize(
    url: 'https://xnmmbtozblayxzbrtscj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5a25id2h3cnpyY2pnZWZwdmh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY2ODQ2NzMsImV4cCI6MjAyMjI2MDY3M30.u0RENNqmz4Ab5WmHnXHc8x-pbdlhN50fxgx6Bt-mAdE',
  );}
final supabase = Supabase.instance.client; 
 String generateOTP(int length) {
  var generator = Random();
  String otp = '';

  for (var i = 0; i < length; i++) {
    otp += generator.nextInt(10).toString(); 
  }

  return otp;
}

Future<void> sendOTP(String url, String anonKey, String email) async {
  // Генерация OTP
  final otp = generateOTP(6); // Длина OTP - 6 цифр

  print('OTP для $email: $otp');

 
  var url1 = '$url/rest/v1/rpc/send_otp';
  var body = {
    'email': email,
    'otp': otp,
  };
  var response = await http.post(
    Uri.parse(url),
    headers: {
      'apikey': anonKey,
      'Authorization': 'Bearer $anonKey',
      'Content-Type': 'application/json',
    },
    body: json.encode(body),
  );

  if (response.statusCode == 200) {
    print('OTP отправлен успешно');
  } else {
    print('Ошибка при отправке OTP: ${response.body}');
  }
}