This at the moment will just be a simple document explaining how to get your development environment set up to be able to build the SDK.

==Software Required==
[DMD](http://dlang.org/download.html) - You want the latest 1-click installer for Windows. You only need D2, the D and C/C++ compilers are not required.
[Xamarin Studio](http://xamarin.com/download) - You don't actually have to enter valid details, bogus details work just fine.
[Mono-D](http://mono-d.alexanderbothe.com/download/) - Just add the repository and install the main add-in.


Then all you have to do is checkout the code, build (which will take a little bit the first time, it will be much faster after that), and, after you've launched the dev build of Tribes, run the Injector project without debugging. You should get a message box saying that it was successfully injected. If you don't get the message box, run it again, because it will occasionally fail to inject even though it should have.