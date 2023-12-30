# Info
## Description
Looking to swiftly set up an efficient Git server? Utilize our latest image to effortlessly establish a Git backend based on httpd, accessible via HTTP protocol. This image helps you swiftly create a secure, reliable, and flexible environment for Git server, facilitating efficient version control for collaborative teamwork.

## Features

1. **Simple Deployment:** Deploy your customized Git HTTPD server quickly using our Docker image with just a few commands.

2. **HTTP Access:** Seamlessly access Git via the HTTP protocol, ensuring team members can share code and perform version control from anywhere, anytime.

3. **Flexibility and Security:** Learn how to configure access permissions, ensuring the security of your code repository, and optimize the server for enhanced performance.

4. **Continuous Optimization:** We regularly update the image to ensure you access the latest functionalities and performance enhancements.

5. **User Support:** Our team provides professional support and answers to common queries, ensuring you leverage the full capabilities of your Git server.

Harness our Docker image to construct an efficient Git server for your team, simplifying code management and version control.

## quickstart
**[githttpd/githttpd@dockerhub](https://hub.docker.com/r/githttpd/githttpd)**

**[Dockerfile](https://github.com/githttpd/githttpd/blob/main/Dockerfile)**

**[githttpd/githttpd@github](https://github.com/githttpd/githttpd)**

```bash
docker run -d -v /path/to/local/git/repositories/directory:/opt/git-server githttpd/githttpd:latest
```

- `-d` flag runs the container in detached mode (in the background).
- `-v /path/to/local/git/repositories/directory:/path/inside/container` associates the `/path/to/local/git/repositories/directory` directory on your local host with the `/path/inside/container` directory inside the container.
- `githttpd/githttpd:latest` represents the name of the Docker image.

then
```bash
git clone http://${host_ip}/git/foo.git
```

## Quick reference
- [git-scm.com/docs/git-http-backend](https://git-scm.com/docs/git-http-backend)
- [PCを更新したらUbuntu＋Apache＋Gitの設定に悩んだ](https://qiita.com/toruotsubo/items/245c6493a90f2590f21b)
