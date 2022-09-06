class PageModel{
  String? img;
  String? text1;
  String? text2;

  PageModel({this.img,this.text2, this.text1});

}
List<PageModel> introList=[
  PageModel(img:'assets/images/Group 322.png'
    ,text1: 'Find your service',
  text2: 'Lorem Ipsum is simply dummy text of the printing'
  ),
  PageModel(img:'assets/images/Illustration.png'
      ,text1:"! Apply your service with us ",
  text2: 'Lorem Ipsum is simply dummy text of the printing'
  ),
];