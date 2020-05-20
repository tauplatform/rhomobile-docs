# Using ProGuard for Android applications

To enable ProGuard you must set `useproguard` variable under android section to true:

	:::ruby
	android:
		useproguard: true

If you have non standard rules in your application, that uses such features as Reflection API it will be beter for you to make your own rules config. To include it and mearge with our base config you should write path to your config in variable `proguardrules`:

	:::ruby
	android:
		proguardrules: "rules.pro"
