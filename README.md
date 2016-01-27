# TestingHeaders
An iOS Jailbreak "Tweak" intended to find out more about frameworks- use in conjunction with deviceconsole.

### Structure
Builds
* Tweak.xm
* **PassKit**/(all internal .xm's)

### iOS differences
The current direction is to swizzle as many methods as possible, and if there's overlap, they'll log. As this project goes on we might introduce branches to reduce overheads.
