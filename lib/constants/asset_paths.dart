final String imageAssetsRoot = "assets/";
final String image1 = _getImagePath("dot3.png");
final String image2 = _getImagePath("dot4.png");
final String image3 = _getImagePath("dot4 Twilight.jpg");
final String image4 = _getImagePath("show5.jpg");
final String image5 = _getImagePath("show8.png");
final String image6 = _getImagePath("show10 char.jpg");
final String image7 = _getImagePath("applehomepod-B.jpg");
final String image8 = _getImagePath("applehomepod-W.png");
final String image9 = _getImagePath("homepodmini-W.jpg");
final String image10 = _getImagePath("homepodmini-B.jpg");
final String logo = _getImagePath("logo.png");
String _getImagePath(String fileName){
  return imageAssetsRoot + fileName;
}