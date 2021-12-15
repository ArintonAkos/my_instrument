import 'package:my_instrument/services/models/responses/base_response.dart';
import 'package:my_instrument/services/models/responses/main/message/unseen_message_member_model.dart';

import '../../list_parser.dart';

class UnseenMessageMemberResponse extends BaseResponse {
  late final List<UnseenMessageMemberModel> UnseenMessageMembers;

  UnseenMessageMemberResponse(Map<String, dynamic> json) : super(json) {
    UnseenMessageMembers = ListParser.parse<UnseenMessageMemberModel>(json['unseenMessageMembers'], UnseenMessageMemberModel.fromJson);
  }
}