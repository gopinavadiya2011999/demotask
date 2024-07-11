import 'package:demotask/infrastructure/constant/image_constant.dart';

class ElectronicModel {
  String image;
  String title;
  List<String> points;
  String review;
  String premiumIcon;
  int total;
  List<String> list;

  ElectronicModel(
      {required this.image,
      required this.title,
      required this.points,
      required this.review,
      required this.premiumIcon,
      required this.list,
      required this.total});
}

List<ElectronicModel> electronicModel = [
  ElectronicModel(
      image: ImageConstant.listItem1,
      title: 'LG전자 스탠바이미 27ART10AKPL (',
      points: [
        "화면을 이동할 수 있고 전환도 편리하다",
        "스탠바이미는 사랑입니다!️",
      ],
      review: "4.89",
      premiumIcon: ImageConstant.premium1,
      list: ["LG전자", "편리성"],
      total: 216),
  ElectronicModel(
      image: ImageConstant.listItem2,
      title: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
      points: [
        "화면 잘 나오고... 리모컨 기능 좋습니다.",
        "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
      ],
      review: "4.36",
      premiumIcon: ImageConstant.premium2,
      list: ["LG전자", "고화질"],
      total: 136),
  ElectronicModel(
      image: ImageConstant.listItem3,
      title: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      points: [
        "반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면",
        "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어",
      ],
      review: "4.89",
      premiumIcon: ImageConstant.premium1,
      list: ["라익미", "가성비"],
      total: 216),
];
