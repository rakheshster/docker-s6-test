## What is this? 
Just in case I need to provide a test case for [this issue](https://github.com/just-containers/s6-overlay/issues/329).

`fix-attrs.d` (of `s6-overlay`) is broken since v2.0.0.0. If I replace `BASE_VERSION` to `3.12-2.0.0.1` (older version) instead of `3.13-2.2.0.3` (latest version) in the `docker-compose.yml` file you can see that `/etc/blah` has its permissions correctly fixed when the container starts. If I don't replace the permissions are not fixed. 