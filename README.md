# Contact Management App

## Overview
This app is a simple Contact Management system built with Flutter and Firebase. Users can log in, register, and manage their contacts (add, edit, delete).

## Features
- User Authentication (Login, Registration, Logout).
- Contact Management (Add, Edit, Delete Contacts).
- Firebase Firestore for backend.
- Firebase Authentication for user accounts.

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd contact_management_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Set up Firebase:
   - Go to [Firebase Console](https://console.firebase.google.com/).
   - Create a new project and enable Firebase Authentication and Firestore.
   - Download the `google-services.json` file and place it in the `android/app` directory.
5. Run the app:
   ```bash
   flutter run
   ```

## Assumptions
- Users are responsible for maintaining the confidentiality of their credentials.
- The app assumes a stable internet connection for Firebase operations.

## Challenges
- Handling real-time updates for contact management.
- Ensuring a responsive design across devices.

## Future Enhancements
- Add a profile picture upload feature using Firebase Storage.
- Implement dark mode and favorites feature.
