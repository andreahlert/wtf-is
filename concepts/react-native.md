# WTF is React Native?

A framework for building native iOS and Android apps using React and JavaScript. Your JS code renders actual native UI components, not a web view. You write once in React, and it maps to native platform widgets. Hot reloading lets you see changes instantly on your phone.

```
React Native code:

<View>                    iOS:            Android:
  <Text>Hello</Text>  ──► UILabel      ──► TextView
  <Button />           ──► UIButton     ──► android.widget.Button
</View>                ──► UIView       ──► android.view.View

JavaScript ──► Bridge ──► Native UI (not a web page)
```

**Examples:** [React Native](https://github.com/facebook/react-native), [Expo](https://github.com/expo/expo), [React Navigation](https://github.com/react-navigation/react-navigation)
