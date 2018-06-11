# GDL Docker image

This image is based on the official [python image from Docker Hub](https://hub.docker.com/_/python/), tag 3.6.5-slim-stretch, i.e.:

- python: 3.6.5
- OS : debian 9 (stretch)

To build the image:

1. clone this repo and build the image

```bash
docker build -t gnudatalanguage:py_3.6.5-slim-stretch .
```

2. define an alis on your machine (credit to [koalalorenzo/docker-aliases](https://github.com/koalalorenzo/docker-aliases)).
This binds the current working directory as `/directory` in the container.

```bash
alias gdl="docker run -it --rm -v $(pwd):/directory -w /directory gnudatalanguage:py_3.6.5-slim-stretch gdl"
```

3. enjoy a containerised gdl:

```bash
    gdl --help
    Usage: gdl [ OPTIONS ] [ batch_file ... ]
    Start the GDL interpreter (incremental compiler)

    GDL options:
      --help (-h)        display this message
      --version (-V, -v) show version information

    IDL-compatible options:
      -arg value tells COMMAND_LINE_ARGS() to report
                 the following argument (may be specified more than once)
      -args ...  tells COMMAND_LINE_ARGS() to report
                 all following arguments
      -e value   execute given statement and exit (last occurance taken into account only,
                 executed after startup file, may not be specified together with batch files)
      -pref=/path/to/params_file  loads the specified preference file
      -quiet (--quiet, -q) suppress welcome messages

    Homepage: http://gnudatalanguage.sf.net
```
