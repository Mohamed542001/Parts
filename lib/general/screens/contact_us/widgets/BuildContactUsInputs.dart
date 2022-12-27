part of 'ContactUsWidgetsImports.dart';

class BuildContactUsInputs extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildContactUsInputs({Key? key, required this.contactUsData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactUsData.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const MyText(
              title: "الاسم",
              color: Colors.black,
              size: 12,
            ),
          ),
          GenericTextField(
            fillColor: MyColors.grey.withOpacity(0.2),
            fieldTypes: FieldTypes.normal,
            hint: "الاسم",
            controller: contactUsData.name,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.next,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
          ),
          SizedBox(height: 10),
          MyText(
            title: tr(context, "mail"),
            color: Colors.black,
            size: 12,
          ),
          GenericTextField(
            fillColor: MyColors.grey.withOpacity(0.2),
            fieldTypes: FieldTypes.normal,
            hint: "ادخل البريد الالكتروني",
            controller: contactUsData.email,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.next,
            type: TextInputType.emailAddress,
            validate: (value) => value!.validateEmail(context),
          ),
          SizedBox(height: 10),
          MyText(
            title: "الملاحظات",
            color: Colors.black,
            size: 12,
          ),
          GenericTextField(
            fillColor: MyColors.grey.withOpacity(0.2),
            fieldTypes: FieldTypes.rich,
            max: 3,
            hint: "ادخل ملاحظاتك هنا",
            // label: tr(context, "phone"),
            controller: contactUsData.notes,
            margin: const EdgeInsets.symmetric(vertical: 10),
            action: TextInputAction.done,
            type: TextInputType.text,
            validate: (value) => value!.validateEmpty(context),
          ),
        ],
      ),
    );
  }
}
