import 'palm_status_type.dart';

class PalmStatus {
  PalmStatus(this.message, this.statusType, this.id, this.data);

  final String message;
  final PalmStatusType statusType;
  final String id;
  final String data;

  log() {
    print('======Finger Status======');
    print('Message: $message');
    print('Id: $id');
    print('Status: $statusType');
    print('Data: $data');
  }
}
