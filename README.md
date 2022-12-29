# flutter_google_map_null_pointer_exception



## Very simple to use
-Just copy and paste below code in statefull widget. of splash screen<br>
<code>
<pre>

String _enableStatus = 'Unknown';
  final _flutterGoogleMapNullPointerExceptionPlugin = FlutterGoogleMapNullPointerException();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future initPlatformState() async {
    String enableStatus;

    try {
      enableStatus =
          await _flutterGoogleMapNullPointerExceptionPlugin.enableGoogleLatestMap() ?? 'Unknown error accured';
    } on PlatformException {
      enableStatus = 'Failed to update renderer';
    }

    if (!mounted) return;

    setState(() {
      _enableStatus = enableStatus;
    });
  }


</pre>
</code>

