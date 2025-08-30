# Log Archive Tool

A shell script to help with archiving logs on your machine. It accepts log directory as argument, compresses the logs and stores them in a new directory.

Built as a [learning project](https://roadmap.sh/projects/log-archive-tool) for [DevOps Roadmap](https://roadmap.sh/devops) on [roadmap.sh](https://roadmap.sh).

## Features

- Path specification via CLI arguments
- Input validation
- Automatic directory creation
- Timestamp-based naming

## Technology

- Bash

## Installation


```bash
git clone https://github.com/architxkumar/Log-Archive-Tool.git
cd Log-Archive-Tool
chmod u+x ./log-archive.sh
```

## Usage
```bash
./log-archive.sh [Source-Directory] [Target-Directory]
```

> [!NOTE]
> Source Directory refers to log files path. Target Directory refers to the path where the zip will be compressed

> [!IMPORTANT]
> All visible files inside the Source directory will be compressed

### Examples

![Screenshot of bash terminal demonstrating script usage](./img/demo.png)
![Screenshot of bash terminal showing the compressed tarball in output directory](./img/compressed_file.png)

## License