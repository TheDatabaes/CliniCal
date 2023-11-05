import '../database.dart';

class PatientTable extends SupabaseTable<PatientRow> {
  @override
  String get tableName => 'patient';

  @override
  PatientRow createRow(Map<String, dynamic> data) => PatientRow(data);
}

class PatientRow extends SupabaseDataRow {
  PatientRow(super.data);

  @override
  SupabaseTable get table => PatientTable();

  int get patientId => getField<int>('patient_id')!;
  set patientId(int value) => setField<int>('patient_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String get patientName => getField<String>('patient_name')!;
  set patientName(String value) => setField<String>('patient_name', value);

  int? get patientAge => getField<int>('patient_age');
  set patientAge(int? value) => setField<int>('patient_age', value);

  String? get patientAddress => getField<String>('patient_address');
  set patientAddress(String? value) =>
      setField<String>('patient_address', value);

  String? get patientPrimaryLanguage =>
      getField<String>('patient_primary_language');
  set patientPrimaryLanguage(String? value) =>
      setField<String>('patient_primary_language', value);

  String? get patientBloodType => getField<String>('patient_blood_type');
  set patientBloodType(String? value) =>
      setField<String>('patient_blood_type', value);

  String? get patientHeight => getField<String>('patient_height');
  set patientHeight(String? value) => setField<String>('patient_height', value);

  String? get patientWeight => getField<String>('patient_weight');
  set patientWeight(String? value) => setField<String>('patient_weight', value);
}
