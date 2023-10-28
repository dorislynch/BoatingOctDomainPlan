
# react-native-boating-oct-domain-plan

## Getting started

`$ npm install react-native-boating-oct-domain-plan --save`

### Mostly automatic installation

`$ react-native link react-native-boating-oct-domain-plan`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-boating-oct-domain-plan` and add `RNBoatingOctDomainPlan.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNBoatingOctDomainPlan.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNBoatingOctDomainPlanPackage;` to the imports at the top of the file
  - Add `new RNBoatingOctDomainPlanPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-boating-oct-domain-plan'
  	project(':react-native-boating-oct-domain-plan').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-boating-oct-domain-plan/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-boating-oct-domain-plan')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNBoatingOctDomainPlan.sln` in `node_modules/react-native-boating-oct-domain-plan/windows/RNBoatingOctDomainPlan.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Boating.Oct.Domain.Plan.RNBoatingOctDomainPlan;` to the usings at the top of the file
  - Add `new RNBoatingOctDomainPlanPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNBoatingOctDomainPlan from 'react-native-boating-oct-domain-plan';

// TODO: What to do with the module?
RNBoatingOctDomainPlan;
```
  