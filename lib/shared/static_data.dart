import 'package:get/get.dart';
import 'package:sa3ada/shared/images.dart';

import '../data/model/category_model.dart';
import '../data/model/userHome_model.dart';
import '../data/model/userReview_model.dart';
import '../translation/languages.dart';

List<CategoryModel> categories = [
  CategoryModel(name: LanguagesKeys.cate1.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate2.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate3.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate4.toString().tr, image: MyImages.clean),
  CategoryModel(name: LanguagesKeys.cate5.toString().tr, image: MyImages.clean),
];

List<UserHomeModel> userHome = [
  UserHomeModel(
      image: MyImages.user3,
      name: 'أسماء ابراهيم',
      title: 'تنظيف منازل',
      rate: 2.5),
  UserHomeModel(
      image: MyImages.user4,
      name: 'اشرقت عبدالله',
      title: 'صالون تجميل منزلى ',
      rate: 3.8),
  UserHomeModel(
      image: MyImages.user1,
      name: "محمود عبد العظيم",
      title: 'صيانة و تركيبات',
      rate: 1.5),
  UserHomeModel(
      image: MyImages.user5,
      name: 'احمد على عبد الرحمن',
      title: 'تحاليل طبية بالمنزل',
      rate: 3.5),
  UserHomeModel(
      image: MyImages.user6,
      name: "قمر سيد على",
      title: 'عناية بالكبار',
      rate: 2.8),
];

List<UserReviewModel> userReview = [
  UserReviewModel(
    name: 'عائشة بن احمد',
    review: 'نظيفة و مدبرة فى مواد التنظيف و النتيجة رائعة',
    rate: 4.0,
    rateNumber: '5/4'
    ),
  UserReviewModel(
    name: 'منتصرة حمدان',
    review: 'رائعة مشكورا جدا لها',
    rate: 5.0,
    rateNumber: '5/5'
    )


];

// List<PathModel> pathList = [
//   PathModel(
//     image: MyImages.layer7,
//     name: 'مسار تنمية ادارية',
//     title:
//         'تضمن التنمية الإدارية أن تقوم مجالس الإدارة بدورها في الإشراف على كافّة أعمال المنظّمة',
//     category: "ادارة",
//     instructor: "عجمان مشرف",
//     course: 25,
//     lesson: 5,
//   ),
//   PathModel(
//     image: MyImages.layer5,
//     name: 'مسار تعلم الكيمياء',
//     title: 'هناك حقيقة مثبتة منذ زمن طويل هناك حقيقة مثبتة منذ زمن طويل',
//     category: "الطبيعة",
//     instructor: "حمدان بن الشمرى",
//     course: 15,
//     lesson: 10,
//   ),
//   PathModel(
//       image: MyImages.c4,
//       name: 'مسار تعلم القران',
//       title: 'تفسير سورة البقرة',
//       category: "اسلاميات",
//       instructor: "الشيخ احمد عبدالله",
//       course: 25,
//       lesson: 5),
//   PathModel(
//     image: MyImages.layer6,
//     name: 'مسار تعلم البرمجة',
//     title:
//         "علم أحدث لغات البرمجة باللغة العربية وبأعلى جودة من خلال مسارات برمج. المسارات المتاحة",
//     category: "برمجة",
//     instructor: "احمد محفوظ",
//     course: 9,
//     lesson: 1,
//   ),
// ];
