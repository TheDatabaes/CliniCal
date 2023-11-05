import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://zwsspobeelngywsglcwj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp3c3Nwb2JlZWxuZ3l3c2dsY3dqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkxMjY5OTksImV4cCI6MjAxNDcwMjk5OX0.le6E-I7WvRavI0zQZju5-o5_iERQWF66WVxaMoAKqB4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
