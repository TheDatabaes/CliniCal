import '../database.dart';

class ScheduleTable extends SupabaseTable<ScheduleRow> {
  @override
  String get tableName => 'schedule';

  @override
  ScheduleRow createRow(Map<String, dynamic> data) => ScheduleRow(data);
}

class ScheduleRow extends SupabaseDataRow {
  ScheduleRow(super.data);

  @override
  SupabaseTable get table => ScheduleTable();

  int get scheduleId => getField<int>('schedule_id')!;
  set scheduleId(int value) => setField<int>('schedule_id', value);

  int? get patientId => getField<int>('patient_id');
  set patientId(int? value) => setField<int>('patient_id', value);

  int? get doctorId => getField<int>('doctor_id');
  set doctorId(int? value) => setField<int>('doctor_id', value);

  DateTime? get appointmentDate => getField<DateTime>('appointment_date');
  set appointmentDate(DateTime? value) =>
      setField<DateTime>('appointment_date', value);

  PostgresTime? get appointmentTime =>
      getField<PostgresTime>('appointment_time');
  set appointmentTime(PostgresTime? value) =>
      setField<PostgresTime>('appointment_time', value);
}
