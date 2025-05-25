# Problem Statement

```ini
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the ED25519 key sent by the remote host is
SHA256:T86DkjIjr0A92do1y8SHTa3qwoXtXH0+/7d42HSsFwc.
Please contact your system administrator.
Add correct host key in C:\\Users\\Administrator/.ssh/known_hosts to get rid of this message.
Offending ECDSA key in C:\\Users\\Administrator/.ssh/known_hosts:12
Host key for ip_address has changed and you have requested strict checking.
Host key verification failed.
```

1. Run this command with proper server IP:

```bash
ssh-keygen -R ip_address # This command will remove the old known_hosts keys.
```

2. now try it log in your server.
