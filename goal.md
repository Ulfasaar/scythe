The goal:

1.To reduce time wasted setting up development environments

sub goals:
1. Avoid the subscription cost of using online alternatives
2. Offline support
3. Cross platform compatible
4. Fast

Plan:

To use Ace or a alternative web based editor and a web based terminal to store the editor inside a container in a easy to access fashion, without relying on x11 forwarding which might not work on non linux based machines.

Python and Vuejs are planned to be used to rebuild editor functionality not provided by the Web editor such as file saving and loading.

This is being done as a alternative to using Theia as Theia is still under heavy development and thus is buggy.


Theia is not being used as a base as its code is complex and there are other features that I want to build into the file managment system such as support for meta repos that would be more difficult in their complex code base.

