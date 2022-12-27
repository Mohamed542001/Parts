part of 'ContactUsWidgetsImports.dart';

class BuildSocial extends StatelessWidget {
  final ContactUsData contactUsData;

  const BuildSocial({Key? key, required this.contactUsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchURL({required String url}) async {
      await launch(url);
    }
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: MyColors.white),
      child: Column(
        children: [
          MyText(
            title: tr(context, "orContactUs"),
            color: MyColors.black,
            size: 12,
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    print('hgfdjklw;qjhdgfkdals;dbdmfdksl');
                   // Utils.launchURL(url: state.data[index].link ?? "");
                    // launchURL(url: state.data[index].link ?? "");
                  },
                  // child: CachedImage(
                  //   url: state.data[index].icon ?? "",
                  //   width: 45,
                  //   height: 45,
                  //   haveRadius: false,
                  //   boxShape: BoxShape.circle,
                  //   fit: BoxFit.contain,
                  //   // borderRadius: BorderRadius.circular(50),
                  // ),
                );
              }),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 15,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
