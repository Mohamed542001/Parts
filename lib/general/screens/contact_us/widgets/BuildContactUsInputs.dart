part of'ContactUsWidgetsImports.dart';
class BuildContactUsInputs extends StatelessWidget {
  final ContactUsData contactUsData;
  const BuildContactUsInputs({Key? key,required this.contactUsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: MyColors.white
      ),
      child: Column(
        children: [
          Form(
            key: contactUsData.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(title: tr(context, "nameContact"), color: Colors.black, size: 12,),
                GenericTextField(
                  fillColor: MyColors.grey.withOpacity(0.2),
                  fieldTypes: FieldTypes.normal,
                  hint: tr(context, "insertNameContact"),
                  controller: contactUsData.name,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  action: TextInputAction.next,
                  type: TextInputType.text,
                  validate: (value) => value!.validateEmpty(context),
                ),
                SizedBox(height: 10),
                MyText(title: tr(context, "mail"), color: Colors.black, size: 12,),
                GenericTextField(
                  fillColor: MyColors.grey.withOpacity(0.2),
                  fieldTypes: FieldTypes.normal,
                  hint: tr(context, "insertMail"),
                  controller: contactUsData.email,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  action: TextInputAction.next,
                  type: TextInputType.emailAddress,
                  validate: (value) => value!.validateEmail(context),
                ),
                SizedBox(height: 10),
                MyText(title: tr(context, "notes"), color: Colors.black, size: 12,),
                GenericTextField(
                  fillColor: MyColors.grey.withOpacity(0.2),
                  fieldTypes: FieldTypes.rich,
                  max: 3,
                  hint: tr(context, "insertNotes"),
                  // label: tr(context, "phone"),
                  controller: contactUsData.notes,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  action: TextInputAction.done,
                  type: TextInputType.text,
                  validate: (value) => value!.validateEmpty(context),
                ),
              ],
            ),
          ),
          LoadingButton(
            margin: EdgeInsets.symmetric(vertical: 5),
            title: tr(context, "send"),
            onTap: () => contactUsData.addContactUs(context),
            btnKey: contactUsData.btnKey,
          ),

        ],
      ),
    );
  }
}
