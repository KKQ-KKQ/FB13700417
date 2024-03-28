# FB13700417

AUViewController's viewWillAppear: is not always called when using Mac Catalyst or binary built for iPad.

Currently, the following methods are not always called in a subclass of AUViewController when using Mac Catalyst or binary built for iPad.

- viewWillAppear:
- viewDidAppear:
- viewWillDisappear:
- viewDidDisappear:

*Expected*:
These methods should be called when I hide/show the AudioUnit window.

*Actually*:
These methods are not called.

When using AppKit, viewWillAppear, viewDidAppear, viewWillDisappear, viewDidDisappear are always called when I hide/show the window.
Please fix these difference of AppKit and Catalyst / built for iPad.

## Steps to reproduce:

1. Built a target TestAUMac.
2. run the following command `auval -l | grep TestAUMac` and confirm the AudioUnit is detected.
3. Attach PID name of "TestAUMacExtension" in Xcode.
4. Open GarageBand.
5. Open "TestAUMacExtension" in GarageBand and the extension is attached.
6. Click the plugin name and open a window.
7. Confirm "ViewWillAppear" log message.
8. Close the plugin window.
9. Confirm "ViewDidDisappear" log message.
10. Quit GarageBand.
11. Clean the project in Xcode.
12. Build a target TestAUMac_iOS
13. run the following command `auval -l | grep TestAUMac` and confirm the AudioUnit is detected.
14. Attach PID name of "TestAUMacExtension" in Xcode.
15. Open GarageBand.
16. Open "TestAUMacExtension" in GarageBand and the extension is attached.
17. "ViewWillAppear" log message is shown. (UNEXPECTED)
17. Click the plugin name and open a window.
18. No "ViewWillAppear" log message is shown. (UNEXPECTED)
19. Close the plugin window.
20. No "ViewDidDisappear" log message is shown. (UNEXPECTED)
21. Quit GarageBand.
22. "ViewDidDisappear" log message is shown.
