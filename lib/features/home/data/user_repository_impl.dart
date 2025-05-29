import '../domain/user.dart';
import '../domain/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> fetchUsers() async {
    await Future.delayed(const Duration(seconds: 1));
    return rcbPlayers
        .map((user) => User(
            name: user['name']!,
            country: user['country']!,
            imageUrl: user['profileImage']!))
        .toList();
  }
}

final List<Map<String, String>> rcbPlayers = [
  {
    'name': 'Virat Kohli',
    'country': 'India',
    'profileImage':
        'https://documents.bcci.tv/resizedimageskirti/164_compress.png',
  },
  {
    'name': 'Phil Salt',
    'country': 'England',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Rajat Patidar',
    'country': 'India',
    'profileImage':
        'https://cf-img-a-in.tosshub.com/sites/visualstory/wp/2025/02/Rajat-Patidar-6ITG-1739440767507.jpg?size=*:900',
  },
  {
    'name': 'Jitesh Sharma',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Devdutt Padikkal',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Swastik Chhikara',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Liam Livingstone',
    'country': 'England',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Krunal Pandya',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Tim David',
    'country': 'Australia',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Romario Shepherd',
    'country': 'West Indies',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Josh Hazlewood',
    'country': 'Australia',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Bhuvneshwar Kumar',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Lungi Ngidi',
    'country': 'South Africa',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
  {
    'name': 'Yash Dayal',
    'country': 'India',
    'profileImage':
        'https://d1k8sn41pix00a.cloudfront.net/media/players/photos/Philip_Salt_RCB.jpg',
  },
];
