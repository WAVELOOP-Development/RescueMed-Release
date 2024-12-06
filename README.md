
# RescueMed Emergency Ambulance & Hospital Communication Platform

RescueMed is a cutting-edge communication platform designed to bridge the gap between ambulances and hospitals, ensuring efficient and real-time patient care during emergencies. This system includes two mobile applications and two web applications tailored for seamless coordination and data sharing.

<!-- ---

# Features

### Mobile App for ambulance staff
- Real-time patient status updates.
- ETA tracking for hospitals.
- Easy-to-use interface for ambulance staff.

### Web Dashboard for Hospital Staff
- Instant notifications of incoming patients.
- Access to real-time patient details.
- Enhanced collaboration with ambulance teams.

### Web Dashboard for Administration
- Monitor active ambulance trips.
- Historical trip data and analytics.
- Role-based access management.

### Mobile Application for patients
- View incoming patients with details.
- Manage resources effectively.
- Detailed reports and analytics.

--- -->

# Tech Stack

### Mobile Applications
- **Framework**: [Flutter](https://flutter.dev)
- **Language**: [Dart](https://flutter.dev)
- **Backend**: [Firebase](https://firebase.google.com)

### Web Applications
- **Frontend**: [Next.js](https://nextjs.org)
- **Language**: [Typescript](https://nextjs.org)
- **Backend**: [Firebase](https://firebase.google.com)

---

# Getting Started

### Prerequisites
- [Node.js](https://nodejs.org)
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Firebase account and project setup.

### Clone the Repository
```bash
git clone https://github.com/your-organization/rescuemed.git
cd rescuemed
```

### Setting Up Firebase
1. Create a Firebase project.
2. Add the configuration files:
   - For Flutter apps: `google-services.json` (Android) and `GoogleService-Info.plist` (iOS).
   - For Next.js apps: Update `.env.local` with Firebase credentials.

### Running the Applications
#### Mobile Applications
```bash
cd mobile-app
flutter pub get
flutter run
```

#### Web Applications
```bash
cd web-app
npm install
npm run dev
```



## 📝 License
This project is licensed under the [MIT License](LICENSE).

---

Special thanks to the development team for their dedication and hard work. 🙌

---

