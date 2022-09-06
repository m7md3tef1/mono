part of '../home_view.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:  100.h,
        width: 100.w,
        child: InkWell(
          onTap: (){
            MagicRouter.navigateTo(const CategoryInterior());
          },
          child: ListView.builder(
            itemCount: homeList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(homeList[index].img!),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(homeList[index].text1!),
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
