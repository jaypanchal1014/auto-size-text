# Flutter Auto Size Text

A lightweight and customizable Flutter widget that automatically adjusts text size to prevent overflow and fit within available space.

Perfect for responsive layouts, dynamic content, and modern Flutter UI designs.

---

## ✨ Features

- ⚡ Automatically resizes text
- 📏 Prevents text overflow
- 🎯 Min & Max font size control
- 📝 Multi-line support
- 🎨 Custom text styling
- 📱 Responsive layout friendly
- 🧠 Dynamic width detection using `LayoutBuilder`
- 💡 Lightweight and easy to use

---

## 📦 Installation

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_auto_size_text:
    path: ../
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Import

```dart
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';
```

---

# 🛠 Usage

```dart
AdaptiveText(
  "This text automatically resizes",
  maxLines: 2,
  maxFontSize: 40,
  minFontSize: 10,
  style: const TextStyle(
    fontWeight: FontWeight.bold,
  ),
)
```

---

# 📱 Full Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/flutter_auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Size Text Demo'),
      ),
      body: Center(
        child: AdaptiveText(
          "This text automatically resizes to fit within its bounds.",
          maxLines: 4,
          maxFontSize: 40,
          minFontSize: 10,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
```

---

# ⚙️ Parameters

| Parameter | Type | Default | Description |
|---|---|---|---|
| `text` | `String` | required | Text to display |
| `style` | `TextStyle?` | null | Custom text style |
| `minFontSize` | `double` | 10 | Minimum font size |
| `maxFontSize` | `double` | 40 | Starting font size |
| `maxLines` | `int` | 1 | Maximum allowed lines |
| `textAlign` | `TextAlign?` | null | Text alignment |

---

# 🧠 How It Works

The widget:

1. Gets available width using `LayoutBuilder`
2. Starts with `maxFontSize`
3. Measures text using `TextPainter`
4. Checks for overflow
5. Reduces font size until text fits
6. Renders the perfectly fitted text

---

# ✅ Best Use Cases

- Calculator displays
- Buttons
- Cards
- App bar titles
- Product names
- Dashboard values
- Dynamic API text
- Responsive UI layouts

---

# 📌 Important

For proper auto-sizing, the widget should receive width constraints from its parent.

✅ Recommended:

```dart
SizedBox(
  width: 200,
  child: AdaptiveText(
    "Adaptive Text Example",
  ),
)
```

❌ Avoid:

```dart
AdaptiveText(
  "Adaptive Text Example",
)
```

Without width constraints, overflow detection may not work correctly.

---


# 📄 License

MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software
without restriction.
