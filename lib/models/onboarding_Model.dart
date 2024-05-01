class OnboardingContent{
  String image;
  String title;
  String description;
  OnboardingContent(this.image,this.title,this.description);
}
List<OnboardingContent> Contents = [
  OnboardingContent(
    "assets/image/image1.jpg",
    "Welcome to FashionWear!",
    "Embrace the spirit of fashion adventure with our Fashion"
        " Explorer Jacket. Crafted from durable yet breathable"
        " materials, this jacket is designed to withstand whatever "
        "the city throws your way.",),
  OnboardingContent("assets/image/image2.jpg",
      "Your Style Journey Begins Here",
      "Elevate your wardrobe with our timeless Classic White Button-Up Shirt."
          "Crafted from premium cotton fabric, this versatile piece is perfect for "
          "both formal occasions and casual outings. Its crisp collar and tailored "
          "fit exude sophistication"),
  OnboardingContent("assets/image/image3.jpg",
      "Join Us on the Fashion Adventure",
      "Add a timeless staple to your wardrobe with our Classic Denim Jacket."
          " Crafted from premium denim fabric, this jacket boasts a rugged yet "
          "versatile design that never goes out of style.")
];