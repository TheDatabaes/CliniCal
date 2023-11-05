import '../database.dart';

class PatientUserTable extends SupabaseTable<PatientUserRow> {
  @override
  String get tableName => 'patient_user';

  @override
  PatientUserRow createRow(Map<String, dynamic> data) => PatientUserRow(data);
}

class PatientUserRow extends SupabaseDataRow {
  PatientUserRow(super.data);

  @override
  SupabaseTable get table => PatientUserTable();

  int get userId => getField<int>('user_id')!;
  set userId(int value) => setField<int>('user_id', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get userPassword => getField<String>('user_password');
  set userPassword(String? value) => setField<String>('user_password', value);
}
