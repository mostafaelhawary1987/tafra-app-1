import 'package:get/get.dart';
import 'languages.dart';
// extension LangEx on LanguagesKeys {
//   String tr() {
//     return name.tr;
//   }
// }

class Languages extends Translations {
  final Map<String, String> _arString = {};
  final Map<String, String> _enString = {};

  static const primaryLanguage = 'ar';
  static const seconderyLanguage = 'en';

  @override
  Map<String, Map<String, String>> get keys {
    _addString(
      key: LanguagesKeys.validateNameLength.toString(),
      enValue: 'Name must be between 3 and 30 character',
      arValue: 'الاسم يجب ان يكون بين 3-30',
    );
    _addString(
      key: LanguagesKeys.PassWord_NotMatch.toString(),
      enValue: 'Password mismatch',
      arValue: 'عدم تطابق كلمة المرور',
    );
    _addString(
      key: LanguagesKeys.validate_pass_empty.toString(),
      enValue: "Password is required.",
      arValue: 'كلمة المرور مطلوبة.',
    );
    _addString(
      key: LanguagesKeys.validate_password_length.toString(),
      enValue: "Mobile number must not be less than 8.",
      arValue: 'كلمة المرور يجب الا تكون اقل من 8.',
    );
    _addString(
      key: LanguagesKeys.validate_phone_empty.toString(),
      enValue: 'Mobile is required.',
      arValue: 'رقم الجوال مطلوب.',
    );
    _addString(
      key: LanguagesKeys.validate_phone_start_validator.toString(),
      enValue: 'Mobile must start with 5.',
      arValue: 'رقم الجوال يجب ان يبدأ برقم 5.',
    );
    _addString(
      key: LanguagesKeys.validate_phone_validator.toString(),
      enValue: 'Mobile number must not be greater than 9.',
      arValue: 'رقم الجوال يجب الا يكون اكبر من  9.',
    );
    _addString(
      key: LanguagesKeys.validate_upper_pass.toString(),
      enValue:
          'The password must contain at least one uppercase and one lowercase letter.',
      arValue:
          'يجب أن تحتوي كلمة المرور على حرف واحد كبير وحرف صغير واحد على الأقل.',
    );
    ////////////////////////////////////
    ////////////////////////////////////
    _addString(
      key: LanguagesKeys.specialties.toString(),
      enValue: 'Specialties:',
      arValue: "التخصصات :",
    );
    _addString(
      key: LanguagesKeys.timing.toString(),
      enValue:"Timing:",
      arValue: "التوقيت :",
    );
    _addString(
      key: LanguagesKeys.contracting.toString(),
      enValue: "Contracting:",
      arValue:"التعاقد :",
    );
    _addString(
      key: LanguagesKeys.start_date.toString(),
      enValue: 'start date:',
      arValue: 'تاريخ البدأ :',
    );
    _addString(
      key: LanguagesKeys.order_now.toString(),
      enValue: 'Order now',
      arValue: 'اطلب الأن',
    );

    _addString(
      key: LanguagesKeys.one_day.toString(),
      enValue: 'for one day',
      arValue: 'ليوم واحد',
    );

    _addString(
      key: LanguagesKeys.fixed_duration.toString(),
      enValue: 'fixed duration',
      arValue: 'مدة محددة',
    );
    _addString(
      key: LanguagesKeys.morning_period.toString(),
      enValue: 'morning period',
      arValue: 'فترة صباحية',
    );
    _addString(
      key: LanguagesKeys.evening.toString(),
      enValue: 'Evening',
      arValue: 'فترة مسائية',
    );
    _addString(
      key: LanguagesKeys.general.toString(),
      enValue: 'general',
      arValue: 'عام',
    );
    _addString(
      key: LanguagesKeys.cooking.toString(),
      enValue: 'cooking',
      arValue: 'طبخ',
    );
    _addString(
      key: LanguagesKeys.cleaning.toString(),
      enValue: 'cleaning',
      arValue: 'تنظيف',
    );
    _addString(
      key: LanguagesKeys.current.toString(),
      enValue: 'current',
      arValue: "الحالية",
    );
    _addString(
      key: LanguagesKeys.previous.toString(),
      enValue: 'Previous',
      arValue: "السابقة",
    );
    _addString(
      key: LanguagesKeys.user_name.toString(),
      enValue: 'User Name',
      arValue: 'اسم المستخدم',
    );
    _addString(
      key: LanguagesKeys.email.toString(),
      enValue: 'E-mail',
      arValue: 'البريد الإلكتروني',
    );
    _addString(
      key: LanguagesKeys.phone.toString(),
      enValue: 'Mobile',
      arValue: 'رقم الجوال',
    );
    _addString(
      key: LanguagesKeys.details.toString(),
      enValue: 'Details',
      arValue: "تفاصيل ",
    );
    _addString(
      key: LanguagesKeys.age.toString(),
      enValue: 'age :',
      arValue: 'العمر :',
    );
    // _addString(
    //   key: LanguagesKeys.gender.toString(),
    //   enValue: 'Gender',
    //   arValue: 'النوع',
    // );
    // _addString(
    //   key: LanguagesKeys.date_birth.toString(),
    //   enValue: 'Date of Birth',
    //   arValue: 'تاريخ الميلاد',
    // );
    // _addString(
    //   key: LanguagesKeys.facebook.toString(),
    //   enValue: 'FaceBook',
    //   arValue: 'فيس بوك',
    // );
    // _addString(
    //   key: LanguagesKeys.telegram.toString(),
    //   enValue: 'Telegram',
    //   arValue: 'تليجرام',
    // );
    // _addString(
    //   key: LanguagesKeys.whatsapp.toString(),
    //   enValue: 'Whatsapp',
    //   arValue: 'واتس اب',
    // );
    // _addString(
    //   key: LanguagesKeys.choose_country.toString(),
    //   enValue: 'Choose the country',
    //   arValue: 'اختر البلد',
    // );
    // _addString(
    //   key: LanguagesKeys.choose_gender.toString(),
    //   enValue: 'Choose the gender',
    //   arValue: 'اختر النوع',
    // );
    _addString(
      key: LanguagesKeys.reset_password.toString(),
      enValue: 'Reset Password',
      arValue: 'إعادة كلمةالمرور',
    );
    _addString(
      key: LanguagesKeys.verification_code.toString(),
      enValue: 'Verification code',
      arValue: 'كود التأكيد',
    );

    _addString(
      key: LanguagesKeys.reviews.toString(),
      enValue: 'Reviews',
      arValue: 'التقيمات',
    );
    // _addString(
    //   key: LanguagesKeys.send_your_inquiry.toString(),
    //   enValue: 'Send us your inquiry ',
    //   arValue: 'ارسل لنا استفسارك ',
    // );
    // _addString(
    //   key: LanguagesKeys.message_text.toString(),
    //   enValue: 'Message text',
    //   arValue: 'نص الرسالة',
    // );
    // _addString(
    //   key: LanguagesKeys.send.toString(),
    //   enValue: "Send",
    //   arValue: 'ارسال',
    // );
    _addString(
      key: LanguagesKeys.login.toString(),
      enValue: 'Login',
      arValue: 'دخول',
    );
    // _addString(
    //   key: LanguagesKeys.forget_password.toString(),
    //   enValue: 'Did You Forget Password?',
    //   arValue: 'هل نسيت كلمة المرور؟',
    // );
    _addString(
      key: LanguagesKeys.create_new_an_account.toString(),
      enValue: 'Create a new account',
      arValue: 'إنشاء حساب جديد',
    );
    _addString(
      key: LanguagesKeys.enter_confirmation_code.toString(),
      enValue: "Enter the confirmation code",
      arValue: "أدخل كود التأكيد",
    );
    // _addString(
    //   key: LanguagesKeys.you_have_an_account.toString(),
    //   enValue: 'you have an account?',
    //   arValue: 'لديك حساب؟ ',
    // );

    // _addString(
    //   key: LanguagesKeys.log_in_now.toString(),
    //   enValue: 'Log in now',
    //   arValue: 'سجل دخول الآن',
    // );
    _addString(
      key: LanguagesKeys.create_an_account.toString(),
      enValue: "Create an account",
      arValue: 'إنشاء حساب',
    );
    _addString(
      key: LanguagesKeys.password.toString(),
      enValue: "Password",
      arValue: 'كلمة المرور',
    );
    _addString(
      key: LanguagesKeys.login_in.toString(),
      enValue: 'Login In',
      arValue: 'تسجيل دخول',
    );
    _addString(
      key: LanguagesKeys.full_name.toString(),
      enValue: "Full Name",
      arValue: 'الاسم بالكامل',
    );
    _addString(
      key: LanguagesKeys.confirm.toString(),
      enValue: "Confirm",
      arValue: 'تأكيد ',
    );
    _addString(
      key: LanguagesKeys.validate_field_required.toString(),
      enValue: "Field is required.",
      arValue: 'هذا الحقل مطلوب.',
    );
    _addString(
      key: LanguagesKeys.validate_email.toString(),
      enValue: "E-Mail not valid.",
      arValue: 'البريد الالكتروني غير صحيح.',
    );
    _addString(
      key: LanguagesKeys.name_app.toString(),
      enValue: "ٍSa3da",
      arValue: 'سعادة',
    );
    _addString(
      key: LanguagesKeys.cate1.toString(),
      enValue: "Section 1",
      arValue: "نظافة",
    );
    _addString(
      key: LanguagesKeys.cate2.toString(),
      enValue: "Section 2",
      arValue: "نظافة",
    );
    _addString(
      key: LanguagesKeys.cate3.toString(),
      enValue: "Section 3",
      arValue: "نظافة",
    );
    _addString(
      key: LanguagesKeys.cate4.toString(),
      enValue: "Section 4",
      arValue: "نظافة",
    );
    _addString(
      key: LanguagesKeys.cate5.toString(),
      enValue: "Section 5",
      arValue: "نظافة",
    );
    _addString(
      key: LanguagesKeys.payment.toString(),
      enValue: "Payment",
      arValue: "الدفع",
    );
    _addString(
      key: LanguagesKeys.visa.toString(),
      enValue: "Visa / Master Card",
      arValue: "فيزا / ماستر كارد",
    );
    _addString(
      key: LanguagesKeys.meza.toString(),
      enValue: "Fawry / meza",
      arValue: "فوري / ميزة",
    );
    _addString(
      key: LanguagesKeys.vodafone_cash.toString(),
      enValue: "Vodafone cash",
      arValue: "فودافون كاش",
    );
    _addString(
      key: LanguagesKeys.categories.toString(),
      enValue: 'Categories',
      arValue: "التخصصات",
    );
    _addString(
      key: LanguagesKeys.visa_number.toString(),
      enValue: 'visa number',
      arValue: "رقم الكارت",
    );
    _addString(
      key: LanguagesKeys.expiry_date.toString(),
      enValue: 'Expiry date',
      arValue: "تاريخ الانتهاء",
    );
    _addString(
      key: LanguagesKeys.cvv_visa.toString(),
      enValue: 'cvv',
      arValue: "cvv",
    );
    _addString(
      key: LanguagesKeys.contract.toString(),
      enValue: 'contract',
      arValue: "التعاقدات",
    );
    _addString(
      key: LanguagesKeys.user_visa.toString(),
      enValue: 'Name',
      arValue: 'الأسم',
    );
    _addString(
      key: LanguagesKeys.register_successfully.toString(),
      enValue: "Your account has been successfully registered",
      arValue: 'تم تسجيل حسابكم بنجاح',
    );
    _addString(
      key: LanguagesKeys.note_login_order.toString(),
      enValue: "You can log in now and order from Sa3adaa",
      arValue: 'يمكنك تسجيل الدخول الآن والطلب من سعادة',
    );
     _addString(
      key: LanguagesKeys.note_success.toString(),
      enValue: "Your request has been successfully received",
      arValue: 'تم استقبال طلبكم بنجاح',
    );
    _addString(
      key: LanguagesKeys.back_to_home.toString(),
      enValue: "Back to Home",
      arValue: 'الرجوع للرئيسية',
    );
    _addString(
      key: LanguagesKeys.order_summary.toString(),
      enValue: "Order Summary",
      arValue: 'ملخص الطلب',
    );
    // _addString(
    //   key: LanguagesKeys.last_updated.toString(),
    //   enValue: 'Last updated ',
    //   arValue: 'أخر تحديث ',
    // );
    // _addString(
    //   key: LanguagesKeys.edit_password.toString(),
    //   enValue: 'Edit PassWord',
    //   arValue: 'تعديل كلمة المرور',
    // );
    // _addString(
    //   key: LanguagesKeys.old_password.toString(),
    //   enValue: "Old Password",
    //   arValue: 'كلمة المرور القديمة',
    // );
    // _addString(
    //   key: LanguagesKeys.new_password.toString(),
    //   enValue: "New Password",
    //   arValue: 'كلمة المرور الجديدة',
    // );
    // _addString(
    //   key: LanguagesKeys.confirm_new_password.toString(),
    //   enValue: "Confirm the new password",
    //   arValue: 'تأكيد كلمة المرور الجديدة',
    // );
    // _addString(
    //   key: LanguagesKeys.make_appointment.toString(),
    //   enValue: "Make an appointment",
    //   arValue: 'تحديد موعد',
    // );
    // _addString(
    //   key: LanguagesKeys.confirm.toString(),
    //   enValue: "confirmation",
    //   arValue: 'تأكيد ',
    // );
    // _addString(
    //   key: LanguagesKeys.text_choose_time.toString(),
    //   enValue:
    //       "Choose the day and time available to complete the process Reservation",
    //   arValue: 'قم باختيار اليوم والوقت المتاح لاستكمال عمليةالحجز',
    // );
    // _addString(
    //   key: LanguagesKeys.look_for.toString(),
    //   enValue: "Look for",
    //   arValue: 'ابحث عن ......',
    // );
    // _addString(
    //   key: LanguagesKeys.view_all.toString(),
    //   enValue: "View All",
    //   arValue: 'عرض الكل',
    // );
    // _addString(
    //   key: LanguagesKeys.educational_path.toString(),
    //   enValue: "Educational Path",
    //   arValue: 'مسار تعليمي',
    // );

    // _addString(
    //   key: LanguagesKeys.filter_from_ZToA.toString(),
    //   enValue: "Alphabetical order from A - Z",
    //   arValue: 'ترتيب أبجدي من أ - ي',
    // );
    // _addString(
    //   key: LanguagesKeys.filter_from_AToZ.toString(),
    //   enValue: "Alphabetical order from Z - A",
    //   arValue: 'ترتيب أبجدي من ي - أ',
    // );
    // _addString(
    //   key: LanguagesKeys.filter_ByHighest_price.toString(),
    //   enValue: "Price: High - Low",
    //   arValue: 'السعر: الأعلى - الأقل',
    // );
    // _addString(
    //   key: LanguagesKeys.filter_ByLowest_price.toString(),
    //   enValue: "Price: Lowest - Highest",
    //   arValue: 'السعر: الأقل - الأعلى',
    // );
    // _addString(
    //   key: LanguagesKeys.most_rated.toString(),
    //   enValue: "Most Rated",
    //   arValue: 'الأعلى تقييم',
    // );
    // _addString(
    //   key: LanguagesKeys.most_viewed.toString(),
    //   enValue: "Most viewed",
    //   arValue: 'الأكثر مشاهدة',
    // );
    // _addString(
    //   key: LanguagesKeys.least_viewed.toString(),
    //   enValue: "least viewed",
    //   arValue: 'الأقل مشاهدة',
    // );
    // _addString(
    //   key: LanguagesKeys.sort_by.toString(),
    //   enValue: "Sort By",
    //   arValue: 'الفرز حسب',
    // );
    // _addString(
    //   key: LanguagesKeys.lesson.toString(),
    //   enValue: "lesson",
    //   arValue: 'درس',
    // );
    // _addString(
    //   key: LanguagesKeys.show_more.toString(),
    //   enValue: "Show More",
    //   arValue: 'عرض المزيد',
    // );
    // _addString(
    //   key: LanguagesKeys.show_less.toString(),
    //   enValue: "Show Less",
    //   arValue: 'عرض الاقل',
    // );
    // _addString(
    //   key: LanguagesKeys.what_learn.toString(),
    //   enValue: "what you will learn",
    //   arValue: 'ماذا ستتعلم',
    // );
    // _addString(
    //   key: LanguagesKeys.curriculum.toString(),
    //   enValue: "Curriculum",
    //   arValue: 'منهاج دراسي',
    // );
    // _addString(
    //   key: LanguagesKeys.course_includes.toString(),
    //   enValue: "This course includes",
    //   arValue: 'تشمل هذه الدورة',
    // );
    // _addString(
    //   key: LanguagesKeys.instructor.toString(),
    //   enValue: "Instructor",
    //   arValue: 'المتدرب',
    // );
    // _addString(
    //   key: LanguagesKeys.category.toString(),
    //   enValue: "Category :",
    //   arValue: 'التصنيف :',
    // );
    // _addString(
    //   key: LanguagesKeys.number_of_lessons.toString(),
    //   enValue: "lessons :",
    //   arValue: "عدد الدروس :",
    // );
    // _addString(
    //   key: LanguagesKeys.number_of_tests.toString(),
    //   enValue: "Tests",
    //   arValue: "عدد الاختبارات :",
    // );
    // _addString(
    //   key: LanguagesKeys.number_of_hours.toString(),
    //   enValue: "hours",
    //   arValue: ' عدد الساعات :',
    // );
    // _addString(
    //   key: LanguagesKeys.the_level.toString(),
    //   enValue: "Level",
    //   arValue: 'المستوى :',
    // );
    // _addString(
    //   key: LanguagesKeys.audio_files.toString(),
    //   enValue: "Audio",
    //   arValue: 'ملفات صوتية :',
    // );
    // _addString(
    //   key: LanguagesKeys.course_presenter.toString(),
    //   enValue: "Course presenter",
    //   arValue: "مقدم الدورة :",
    // );
    // _addString(
    //   key: LanguagesKeys.watch_now.toString(),
    //   enValue: "Watch now",
    //   arValue: "شاهد الدورة الأن",
    // );
    // _addString(
    //   key: LanguagesKeys.view_profile.toString(),
    //   enValue: "View Profile",
    //   arValue: "عرض الصفحة الشخصية",
    // );
    // _addString(
    //   key: LanguagesKeys.linked_courses.toString(),
    //   enValue: "Linked Courses",
    //   arValue: "دورات مرتبطة",
    // );
    // _addString(
    //   key: LanguagesKeys.section.toString(),
    //   enValue: "Section",
    //   arValue: 'الجزء',
    // );
    // _addString(
    //   key: LanguagesKeys.more_section.toString(),
    //   enValue: "More Section",
    //   arValue: 'كورس',
    // );
    // _addString(
    //   key: LanguagesKeys.min_time.toString(),
    //   enValue: "Min",
    //   arValue: "  دقيقة",
    // );
    // _addString(
    //   key: LanguagesKeys.video.toString(),
    //   enValue: "Video",
    //   arValue: "فيديو",
    // );
    // _addString(
    //   key: LanguagesKeys.article.toString(),
    //   enValue: "article",
    //   arValue: "  مقال",
    // );
    // _addString(
    //   key: LanguagesKeys.about_app.toString(),
    //   enValue: "About",
    //   arValue: 'عن التطبيق',
    // );
    // _addString(
    //   key: LanguagesKeys.terms.toString(),
    //   enValue: "Terms",
    //   arValue:'الشروط و الاحكام',
    // );
    // _addString(
    //   key: LanguagesKeys.search_result.toString(),
    //   enValue: "Search Result",
    //   arValue:'نتائج البحث',
    // );

    return {primaryLanguage: _arString, seconderyLanguage: _enString};
  }

  _addString({
    required String key,
    String? enValue,
    String? arValue,
  }) {
    if (arValue != null) _arString[key] = arValue;
    if (enValue != null) _enString[key] = enValue;
  }
}
