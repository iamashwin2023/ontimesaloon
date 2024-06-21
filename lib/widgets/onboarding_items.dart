
class OnboardingModel{
  final String imageUrl;
  final String title;
  final String subtitle;

  OnboardingModel (this.imageUrl, this.title, this.subtitle);
}

List<OnboardingModel> onboardintItems = [
  OnboardingModel('assets/onboarding1.png', 'Every Client is Special', 'Perfect salon booking apps for your beauty\nand comfortable life'),
  OnboardingModel('assets/onboarding2.png', 'Embrace Technology', 'Perfect salon booking apps for your beauty\nand comfortable life'),
  OnboardingModel('assets/onboarding3.png', 'Keep it Clean', 'Perfect salon booking apps for your beauty\nand comfortable life'),
];