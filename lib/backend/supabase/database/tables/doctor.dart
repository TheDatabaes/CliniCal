import '../database.dart';

class DoctorTable extends SupabaseTable<DoctorRow> {
  @override
  String get tableName => 'doctor';

  @override
  DoctorRow createRow(Map<String, dynamic> data) => DoctorRow(data);
}

class DoctorRow extends SupabaseDataRow {
  DoctorRow(super.data);

  @override
  SupabaseTable get table => DoctorTable();

  int get doctorId => getField<int>('doctor_id')!;
  set doctorId(int value) => setField<int>('doctor_id', value);

  String get doctorName => getField<String>('doctor_name')!;
  set doctorName(String value) => setField<String>('doctor_name', value);

  String? get specialization => getField<String>('specialization');
  set specialization(String? value) =>
      setField<String>('specialization', value);
}
