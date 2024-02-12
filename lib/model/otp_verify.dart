import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:oech_app001/model/send_OTP.dart';
import 'dart:convert';
import 'package:supabase_flutter/supabase_flutter.dart';
void main() async{
final AuthResponse res = await supabase.auth.verifyOTP(
  type: OtpType.sms,
  token: '111111',
);
}
