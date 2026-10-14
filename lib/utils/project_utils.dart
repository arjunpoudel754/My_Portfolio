class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

//
List<ProjectUtils> myProjects = [
  ProjectUtils(
    image: 'assets/projects/OfficeEase.png', 
    title: 'OfficeEase', 
    subtitle: 
    'This is an learning platform for microsoft office tools(word, powerpoint, excel) in four languages.',
    githubLink: 'https://github.com/Goldenboy243/OfficeEase',
  ),
  ProjectUtils(
    image: 'assets/projects/TicTacToe.png', 
    title: 'Tic Tac Toe', 
    subtitle: 
    'This is a very basic python project. You play Tic Tac Toe in the ternimal with another player.',
    githubLink: 'https://github.com/arjunpoudel754/TicTacToe_Game',
  ),
  ProjectUtils(
    image:'assets/projects/BRAIN_OS.png',
    title: 'Brain OS',
    subtitle: 'BRAIN_OS is an AI-powered personal knowledge system that stores, understands, and retrieves information from notes, documents, screenshots, images, and audio—like a digital second brain.',
    githubLink: 'https://github.com/Yukixnya/BRAIN_OS.git',
  ),
  
];