# Light Indicator

Light Indicator is a Flutter widget designed to display a row of indicators, commonly used to indicate the current position within a series of screens or pages. This widget allows for easy customization of the appearance and behavior of the indicators, making it suitable for various applications and UI designs.

<img height="300" src="https://raw.githubusercontent.com/Anees7757/light_indicator/master/assets/images/img1.png" alt=""/>


## Features
- Flexible Configuration: Customize the number of indicators, their colours, widths, heights, margins, border radius, and animation duration.
- Dynamic Appearance: Indicators dynamically adjust their appearance based on the current active index.
- Smooth Animation: Smooth animation when transitioning between different active indices.
- Seamless Integration: Easily integrate into your Flutter applications and UI layouts.

## Installation
To use Light Indicator in your Flutter project, follow these steps:

Add the light_indicator dependency to your project's pubspec.yaml file:
```yaml
dependencies:
light_indicator: any
```

## Usage
To use the light_indicator widget in your Flutter application, simply import it and include it in your widget tree.

```dart
LightIndicator(
    itemCount: 5,
    currentIndex: _currentIndex,
    activeColor: Colors.blue,
    inactiveColor: Colors.grey,
    activeWidth: 24.0,
    inactiveWidth: 12.0,
    height: 8.0,
    margin: EdgeInsets.symmetric(horizontal: 4.0),
    borderRadius: BorderRadius.circular(4.0),
    animationDuration: Duration(milliseconds: 300),
),
```
