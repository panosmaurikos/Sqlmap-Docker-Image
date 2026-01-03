# sqlmap Docker Image 

This is a container for [sqlmap](https://github.com/sqlmapproject/sqlmap), a open-source tool for automated SQL injection and database takeover testing.

**Current version: 1.10**

## Pull from Docker Hub

Grab the image for the current sqlmap version:

```bash
docker pull panosmavrikos/sqlmap:1.10
```
OR
```bash
docker pull panosmavrikos/sqlmap:latest
```

## Usage

Run sqlmap with the Docker image, mounting a volume to persist reports:

```bash
docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ panosmavrikos/sqlmap:1.9 --url "http://www.example.com/?id=1"
```

Reports will be saved to `/tmp/sqlmap` on your host machine, so you can analyze them later.

<!-- ## Example Commands

Here are some common sqlmap workflows to get you started:

### Check for Basic Vulnerabilities
Scan a URL for injectable parameters:

```bash
docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ panosmavrikos/sqlmap:1.9 --url "http://www.site.com/checkout.php?id=10"
```

### Get Database Names
If an endpoint is exploitable, enumerate database names:

```bash
docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ panosmavrikos/sqlmap:1.9 --url "http://www.site.com/checkout.php?id=10" --dbs
```

### List Tables from a Specific Database
Retrieve table names from a database (replace `databasename` with the actual name):

```bash
docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ panosmavrikos/sqlmap:1.9 --url "http://www.site.com/checkout.php?id=10" -D databasename --tables
```

### Dump a Specific Table
Extract data from a specific table (replace `databasename` and `tablename`):

```bash
docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ panosmavrikos/sqlmap:1.9 --url "http://www.site.com/checkout.php?id=10" -D databasename -T tablename --dump
``` -->

For more advanced options (e.g., authentication, proxies, or custom payloads), check the [official sqlmap documentation](https://github.com/sqlmapproject/sqlmap/wiki).


