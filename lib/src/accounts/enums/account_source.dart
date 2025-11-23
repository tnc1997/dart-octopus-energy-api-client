enum AccountSource {
  callCentreInbound,
  callCentreOutbound,
  faceToFace,
  internet;

  factory AccountSource.fromJson(
    String json,
  ) {
    switch (json) {
      case 'CALL_CENTRE_INBOUND':
        return AccountSource.callCentreInbound;
      case 'CALL_CENTRE_OUTBOUND':
        return AccountSource.callCentreOutbound;
      case 'FACE_TO_FACE':
        return AccountSource.faceToFace;
      case 'INTERNET':
        return AccountSource.internet;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case AccountSource.callCentreInbound:
        return 'CALL_CENTRE_INBOUND';
      case AccountSource.callCentreOutbound:
        return 'CALL_CENTRE_OUTBOUND';
      case AccountSource.faceToFace:
        return 'FACE_TO_FACE';
      case AccountSource.internet:
        return 'INTERNET';
    }
  }
}
