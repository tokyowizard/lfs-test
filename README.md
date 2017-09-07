Hello World

Requirements:

  - A release of `lfs-test-server` (0.3.0 tested): https://github.com/git-lfs/lfs-test-server/releases
  - [git lfs](https://git-lfs.github.com)

Before you clone this:
  - have Docker installed and the Docker daemon running.
  - build and run the lfs-server in a docker container:
  ```
  docker build -t my-lfs-server https://raw.githubusercontent.com/tokyowizard/lfs-test/master/Dockerfile
  docker run --name my-lfs-server -d -p 8080:8080 -e LFS_ADMINUSER=admin -e LFS_ADMINPASS=admin -e LFS_HOST=localhost:8080 my-lfs-test-server
  ```

Then go ahead and clone this. There will be errors, because the local lfs-server doesn't have the lfs objects:

```
git clone git@github.com:tokyowizard/lfs-test.git
...
Error downloading object: cat.bin (9aeb42d): Smudge error: Error downloading cat.bin ...
...
cd lfs-test
```

If a copy of the repo with those objects in their `.git` repo exists, those `.bin` objects can be recovered
by pushing those objects to the server: `git lfs push --all origin`, otherwise those objects are gone forever. :scream:

