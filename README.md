# Testing the CAS Authentication

1. open CAS.js (in the auth folder) in VSCode
2. in the VSCode terminal, type "cd auth", then "node CAS.js"

(POSSIBLE EXTRA STEP cuz computer IP addresses are probably different)
In any terminal, check your computer address with command "ifconfig | grep inet".
Look for a number of form [192.168.x.xx],
which should be your address. So, if it's different from the one in the CAS.js code (check lines 36 and 81), replace for personal use.

3. then open browser (on either phone or computer, both should work hopefully) and type "[ip address]:3000/cas" into search bar
4. ta-da yale cas authentication screen should pop up

# Linking with XCode or Expo Go

This step is responsible for previewing the Authentication process via Simulator iPhone or your own (first have to connect a cable with your computer to pair and then be able to build).


--XCode--

1. open XCode and create a New Project -- go to XCode -> File -> New -> Project
2. pick any Product Name and Organization Identifier and make sure languages are all Swift and SwiftUI
3. refer to the ContentView.swift file in the repo to make changes to the default ContentView file created by the XCode New Project step
4. (AGAIN CHECK IP ADDRESS DIFFERENCE IN LINE 16 OF ContentView.swift)
5. go to XCode -> Window -> Devices and Simulators
6. pair your phone under the Devices tab and update all phones in both Devices and Simulator tabs to iOS 17.5 in XCode
7. XCode -> Project -> Build and select your device
8. first, the node CAS.js command should be running in any background terminal (VSCode or computer)
9. XCode -> Project -> Run
10. the same cas authentication screen should pop up on your phone, via a localhost app on your phone titled as the XCode Project you chose

--Expo Go--
1. npm start
2. press 'i' for iOS Simulator

# Required React-Native Packages

npm install react-native-webview
npm install @react-navigation/stack
npm install @react-navigation/native

npm install @react-navigation/native @react-navigation/native-stack
npm install react-native-screens react-native-safe-area-context

npm list @react-navigation/native @react-navigation/native-stack react-native-screens

npm install react-native-safe-area-context@4.10.5
npm install react-native-screens@3.31.1
npm install jest-expo@~51.0.4





# Welcome to your Expo app 👋

This is an [Expo](https://expo.dev) project created with [`create-expo-app`](https://www.npmjs.com/package/create-expo-app).

## Get started

1. Install dependencies

   ```bash
   npm install
   ```

2. Start the app

   ```bash
    npx expo start
   ```

In the output, you'll find options to open the app in a

- [development build](https://docs.expo.dev/develop/development-builds/introduction/)
- [Android emulator](https://docs.expo.dev/workflow/android-studio-emulator/)
- [iOS simulator](https://docs.expo.dev/workflow/ios-simulator/)
- [Expo Go](https://expo.dev/go), a limited sandbox for trying out app development with Expo

You can start developing by editing the files inside the **app** directory. This project uses [file-based routing](https://docs.expo.dev/router/introduction).

## Get a fresh project

When you're ready, run:

```bash
npm run reset-project
```

This command will move the starter code to the **app-example** directory and create a blank **app** directory where you can start developing.

## Learn more

To learn more about developing your project with Expo, look at the following resources:

- [Expo documentation](https://docs.expo.dev/): Learn fundamentals, or go into advanced topics with our [guides](https://docs.expo.dev/guides).
- [Learn Expo tutorial](https://docs.expo.dev/tutorial/introduction/): Follow a step-by-step tutorial where you'll create a project that runs on Android, iOS, and the web.

## Join the community

Join our community of developers creating universal apps.

- [Expo on GitHub](https://github.com/expo/expo): View our open source platform and contribute.
- [Discord community](https://chat.expo.dev): Chat with Expo users and ask questions.
