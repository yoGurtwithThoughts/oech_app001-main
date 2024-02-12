import 'package:oech_app001/model/send_OTP.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://xnmmbtozblayxzbrtscj.supabase.co',
    anonKey:
        '',
  );
final response = await supabase.auth.signUp(
  email: 'example@email.com',
  password: 'example-password',
  phone: '+1111111111111111111',
);
await saveUserInfo(response.user!.id, '+1234567890','example@email.com');
}
Future<void> saveUserInfo(String userId, String phone, String email) async {
  final response = await supabase
      .from('userData')
      .insert({
        'id': userId,
       'email':email,
        'phone': phone,
      });
      

  if (response.error != null) {
    print('Ошибка сохранения информации о пользователе: ${response.error}');
  } else {
    print('Информация о пользователе сохранена: ${response.data}');
  }
}