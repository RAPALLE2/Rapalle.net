# TeamSpeak Server - Quickstart Guide

Copyright (c) TeamSpeak Systems GmbH

## System requirements

### Linux
* Any reasonably modern Linux distribution should work. libstdc++ 6 is required. Both 32bit and 64bit are natively supported. 
* In addition, TeamSpeak 3 requires the epoll API which was introduced in Linux kernel 2.5.44. Support was added to glibc in version 2.3.2.

###  Windows
* 8.1 onwards, 2008 R2, 2012/2016/2018. Both 32bit and 64bit are natively supported. 
* Windows 7 may work but is unsupported.

### macOS
* macOS 10.14 Mojave or better on Macs with Intel processors

### FreeBSD
* FreeBSD 64 bit is supported, on FreeBSD (11.x/12.x). Users on older versions of FreeBSD are recommended to upgrade. Starting from this release, support for 32-bit has been dropped.

## Installation

Before you run the TeamSpeak Server it is required that you agree to our license. This license can be found in the file "license.txt" or "LICENSE" (depending on your platform), which is located in the same location as the ts3server binary (the main folder). Note that on Unix platforms you can also view the license by starting ts3server with the environment variable TS3SERVER_LICENSE set to "view". If, after reading it, you agree to the license, this can be indicated in one of three ways:

1. Create a file called ".ts3server_license_accepted" in the current working directory. The
   contents of this file are irrelevant and can be empty. For example on Linux do:
   `touch .ts3server_license_accepted`

2. Start the ts3server with the commandline parameter "license_accepted" set to 1. For example:
   `ts3server license_accepted=1`

3. Set the OS environment variable TS3SERVER_LICENSE to "accept". For example on Windows command prompt:
   `set TS3SERVER_LICENSE=accept`
   or in Powershell:
   `$env:TS3SERVER_LICENSE='accept'`

### Linux

Download the correct file for your architecture:

 - teamspeak3-server-linux_amd64.tar.bz2-VERSION for 64bit
 - teamspeak3-server-linux_x86.tar.gz-VERSION for 32bit

Extract the archive in a directory of your choice and run the TeamSpeak Server binary.

Example (Background):
```sh
tar xzf teamspeak3-server-linux_amd64.tar.bz2-VERSION
cd teamspeak3-server-linux_amd64
./ts3server_startscript.sh start
```

Do not forget to accept the license in one of the three ways described above.

ATTENTION!
In some cases, the server process terminates on startup and the error message reads "Server() error while starting servermanager, error: instance check error".

As long as you do not use a license key we make sure you only run exactly one instance of the TS3 server free unregistered version. We use shared memory to facilitate the communication to detect other running instances, which requires tmpfs to be mounted at `/dev/shm`. 

If you (for whatever reason) do not have this mounted, the above error will occur. To fix this problem, the following commands or file edits need to be done as root user (or using something like sudo). This is a temporary fix until your next reboot. 

```sh
mount -t tmpfs tmpfs /dev/shm
```

Now, to make sure this mount is done automatically upon reboot edit the file /etc/fstab and add the
line:

```
tmpfs /dev/shm tmpfs defaults 0 0
```

### Windows

Download the correct file for your architecture:

 - teamspeak3-server_win64.zip for 64bit Windows
 - teamspeak3-server_win32.zip for 32bit Windows

We recommend running the TeamSpeak Server from the command shell. Extract the archive in a directory of your choice. Open the command shell and change path to this directory. From here you can start the server executable.

Example (64bit):
```sh
 cd C:\ts3server\teamspeak3-server_win64
 ts3server.exe
```

Example (32bit):
```sh
 cd C:\ts3server\teamspeak3-server_win32
 ts3server.exe
```

### macOS

Download the file teamspeak3-server-mac.zip, which includes an universal binary running on both Intel 32 and 64 bit computers. Copy the archive into a directory of your choice and extract it using Finder or the Terminal application.

```sh
unzip teamspeak3-server_mac.zip
cd teamspeak3-server_mac
./ts3server
```

Do not forget to accept the license in one of the three ways described above.

## License File

To run a TeamSpeak Server instance with more than a single virtual server and 32 slots you require a license file. The license can be obtained here: https://sales.teamspeak.com/

Without a proper license file available the server will refuse to start or fallback to limited functionality. Once the license file is available, copy it into the TeamSpeak Server directory, where the server executable is located.

## Server Output and Logfile

On Linux and macOS the server will print its log output to the console in which you started it. In addition the log output is written into several files, located in the logs/ subdirectory.

NOTE! 
On Windows, the server will only write the logfile, there is no console output.

## Query APIs

The TeamSpeak server comes with an API for querying and controlling your virtual servers. This protocol is known as ServerQuery, and can be delivered in three different ways:

* **Raw (telnet)** - this is the old default, but we strongly recommend using a more secure protocol. Default port 10011
* **SSH** - this has better terminal handling and is encrypted. Default port 10022
* **Web** - new to TeamSpeak 3.12.0+, this allows you to use issue requests over HTTP using JSON. Default port 10080

To change the port used, look at `query_port`, `query_ssh_port` and `query_http_port`.

You can select which of these protocols are enabled using the command line parameter (or equivalent) `query_protocols`. For example, to only enable ssh and http, specify `query_protcols=ssh,http`.

A comprehensive introduction to ServerQuery is outside the scope of this guide.

### Raw 

You cannot use whitespaces or any special characters in parameters. Instead, the TeamSpeak 3 Server supports the use of escape patterns which can be used to insert newlines, tabs or other special characters into a parameter string. The same escape patterns are used to clean up the servers output and prevent parsing issues. Here's an example on how to escape a parameter string correctly.

Wrong:
```
serveredit virtualserver_name=TeamSpeak ]|[ Server
```

Right:
```
serveredit virtualserver_name=TeamSpeak\s]\p[\sServer
```

The following characters need to be quoted with a backslash (the unusual ones are space and pipe):

Backslash (use `\\`), Slash (use `\/`), Space (use `\s`), Pipe (use `\p`), Newline (`\n`), Carriage Return (`\r`), Tab (`\t`) and Vertical Tab (`\v`), Bell (`\b`), Formfeed (`\f`)

### WebQuery

To use WebQuery, you need an API key. When you create a new server, an API-Key is created for the server admin. Look for:
```
------------------------------------------------------------------
                      I M P O R T A N T                           
------------------------------------------------------------------
               Server Query Admin Account created                 
         loginname= "serveradmin", password= "NNbz7d20"
         apikey= "BADW79srwjTzm1sdkCYeoLB0DQtGiV6QW8Fjb1u"
------------------------------------------------------------------
```
with the api-key being `BADW79srwjTzm1sdkCYeoLB0DQtGiV6QW8Fjb1u`

If you don't have an api-key, you'll need to create one manually. To do that, use either `raw`(telnet) or `ssh`, and run the command `apikeyadd scope=manage lifetime=0`. For example:

```
TS3
Welcome to the TeamSpeak 3 ServerQuery interface, type "help" for a list of commands and "help <command>" for information on a specific command.
login serveradmin NNbz7d20
error id=0 msg=ok
apikeyadd scope=manage lifetime=0
apikey=BADW79srwjTzm1sdkCYeoLB0DQtGiV6QW8Fjb1u id=1 sid=0 cldbid=1 scope=manage time_left=unlimited created_at=1581921236 expires_at=1581921236
error id=0 msg=ok
```

with the api-key being `BADW79srwjTzm1sdkCYeoLB0DQtGiV6QW8Fjb1u`

Please keep your api key safe and secure!

The default port for WebQuery is 10080, but we recommend using HTTPS where possible and using a reverse proxy, especially if you need to expose your services to the internet.

## Configuration

The server process serves as a container for multiple virtual servers running within the same process. When the server process is started, one virtual voice server will be automatically created unless the 'create_default_virtualserver=0' commandline parameter is specified.

The first virtual server will be running on port 9987 by default. Subsequently started virtual servers will be running on increasing port numbers. The second on 9998, the third on 9999 etc. The first default port can be changed by specifying the 'default_voice_port=<port>' commandline parameter.

Virtual servers are always unique, marked by an unique identifier. Hence it is not possible to start the same virtual server within a second server process.

### Commandline Parameters

Commandline parameters are passed to the TeamSpeak Server using the form:
`ts3server <parameter1>=<value1> [<parameter2>=<value2>] ...`

Important! 
All commandline parameters passed to the server need to be escaped using the ServerQuery escape patterns (check the ServerQuery manual for details).

Example:
```sh
./ts3server_minimal_runscript.sh create_default_virtualserver=0 query_protocols=raw,ssh,http
```

Commandline parameters are not saved over sessions, so if you passed parameters when starting the server process, you need to pass them again the next time. If a parameter is not specified, the default value will be used, regardless of parameters specified during a previous server start.

**The following commandline parameters are available:**

Values in (brackets) are the default.

### General

* version (*empty*)
  When added to commandline the server will output its version to stdout and exit.

* daemon (*0*)
  If set to '1', the TeamSpeak Server will be started in the background. This feature is not supported on Windows versions of the TeamSpeak Server, because the Windows server is always running in the background.
  Default: The TeamSpeak Server starts in the foreground.

* pid_file (*empty*)
  Writes the pid of the TeamSpeak Server into the file.
  Default: No pid file is written.

* hints_enabled (*1*)
  The server send hints to clients about what client can do and not do, using the current permissions it has.

* default_voice_port (*9987*)
  UDP port open for clients to connect to. This port is used by the first virtual server, subsequently started virtual servers will open on increasing port numbers.
  Default: The default voice port is 9987.

* voice_ip (*0.0.0.0,0::0*)
  Comma separated IP list on which the server instance will listen for incoming voice connections.
  Default: The server is bound on "any" IP address, both ipv4 and ipv6 if available.

* create_default_virtualserver (*1*)
  Normally one virtual server is created automatically when the TeamSpeak Server process is started. To disable this behavior, set this parameter to '0'. In this case you have to start virtual servers manually using the ServerQuery interface.
  Default: If not provided, one virtual server is created.

* crashdumps_path (*crashdumps/*)
  When the server crashes, a crashdump is created that may be send to teamspeak to help fixing the crash.
  The location where the crashdumps are saved too, can be changed with this parameter.
  This feature is currently not supported on FreeBSD and Alpine versions of the TeamSpeak Server.
  Default: The server will create the crashdump in the 'crashdumps/' subdirectory.

* machine_id (*empty*)
  Optional name of this server process to identify a group of servers with the same ID. This can be useful when running multiple TeamSpeak Server instances on the same database. Please note that we strongly recommend that you do NOT run multiple server instances on the same SQLite database.
  Default: The server instance will not use a machine ID.

* filetransfer_port (*30033*)
  TCP Port opened for file transfers. If you specify this parameter, you also need to specify the 'filetransfer_ip' parameter!
  Default: The default file transfer port is 30033.

* filetransfer_ip (*0.0.0.0,0::0*)
  Comma separated IP list which the file transfers are bound to. If you specify this parameter, you
  also need to specify the 'filetransfer_port' parameter!
  Default: File transfers are bound on "any" IP address, both ipv4 and ipv6 if available.

* query_protocols (*raw,ssh*)
  Comma separated list of protocols that can be used to connect to the ServerQuery.
  Possible values are 'raw', 'ssh' and 'http'. If 'raw' is specified a raw or "classic" ServerQuery is made available as specified by 'query_ip' and 'query_port'. If 'ssh' is specified an encrypted ServerQuery
  using SSH is made available as specified by 'query_ssh_ip' and 'query_ssh_port'. If 'http' is specified a http server is made available as specified by 'query_http_ip' and 'query_http_port'.
  Any combination of the aforementioned values can be specified in this parameter, including leaving it empty, which would disable ServerQuery altogether.
  Default: The default starts a raw or "classic" ServerQuery, and an encrypted ServerQuery using SSH.

* query_timeout (*300*)
  Number of seconds before a query connection is disconnected because of user inactivity. If value is set to be zero or negative, the timeout will be disabled.
  Default: ServerQuerys are disconnected after 5 minutes of inactivity.

* query_port (*10011*)
  TCP Port opened for ServerQuery connections. If you specify this parameter, you should also take a
  look at the 'query_ip' parameter!
  Default: The default ServerQuery port is 10011.

* query_ip (*0.0.0.0,0::0*)
  Comma separated IP list on which the server instance will listen for incoming ServerQuery connections. If you specify this parameter, you also take a look at the 'query_port' parameter!
  Default: ServerQueries are bound on "any" IP address, both ipv4 and ipv6 if available.

* query_ssh_port (*10022*)
  TCP Port opened for ServerQuery connections using SSH. If you specify this parameter, you also need to specify the 'query_ssh_ip' parameter!
  Default: The default ServerQuery over ssh port is 10022.

* query_ssh_ip (*0.0.0.0,0::0*)
  Comma separated IP list on which the server instance will listen for incoming ServerQuery over SSH
  connections. If you specify this parameter, you also need to specify the 'query_ssh_port' parameter!
  Default: ServerQuerys over SSH are bound on "any" IP address, both ipv4 and ipv6 if available.

* query_http_port (*10080*)
  TCP Port opened for ServerQuery connections using http. If you specify this parameter, you also need to specify the 'query_http_ip' parameter!
  Default: The default port is 10080.

* query_http_ip (*0.0.0.0,0::0*)
  Comma separated IP list on which the server instance will listen for incoming http connections. If you specify this parameter, you also need to specify the 'query_http_port' parameter!
  Default: Bound to "any" IP address, both ipv4 and ipv6 if available.

* query_ssh_rsa_host_key (*ssh_host_rsa_key*)
  The physical path to the ssh_host_rsa_key to be used by query. If it does not exist, it will be created when the server is starting up. 
  Default: a host key specific to TeamSpeak will be used.

* clear_database (*0*)
  If set to '1', the server database will be cleared before starting up the server. This is mainly used for testing. Usually this parameter should not be specified, so all server settings will be restored when the server process is restarted.
  Default: Database is not cleared on start.

* logpath (*logs/*)
  The physical path where the server will create logfiles.
  Default: The server will create logfiles in the 'logs/' subdirectory.

* dbplugin (*ts3db_sqlite3*)
  Name of the database plugin library used by the server instance. For example, if you want to start the server with MariaDB/MySQL support, simply set this parameter to 'ts3db_mariadb' to use the MariaDB plugin, or 'ts3db_postgresql' for the PostgresQL plugin. Do NOT specify the 'lib' prefix or the file extension of the plugin.
  Default: The default SQLite3 database plugin will be used.

* dbpluginparameter (*empty*)
  A custom parameter passed to the database plugin library. For example, the MariaDB database plugin supports a parameter to specify the physical path of the plugins configuration file.
  Default: The database plugin will be used without a parameter.

* dbsqlpath (*sql/*)
  The physical path where your SQL script files are located.
  Default: The server will search for SQL script files in the 'sql/' subdirectory.

* dbsqlcreatepath (*create_sqlite/*)
  The physical path where your SQL installation files are located. Note that this path will be added to the value of the 'dbsqlpath' parameter. 
  Default: The server will search for SQL installation scripts files in the
  `<dbsqlpath>/dbsqlcreatepath/` subdirectory.

* licensepath (*empty*)
  The physical path where your license file is located. 
  Default: The license file is located in your servers installation directory.

* createinifile (*0*)
  If set to '1', the server will create an INI-style config file containing all commandline parameters with the values you have specified.
  Default: The server will not create a config file. 

* inifile (*empty*)
  The physical path including the filename where your config file is located. Entries are of the form:
  ```
  filetransfer_port=30033
  logpath=logs
  ```
  Options given on the command line supercede those specified in the config file.
  Default: no config file is loaded

* query_ip_allowlist (*query_ip_allowlist.txt*)
  The file containing allowed IP addresses for the ServerQuery interface. All hosts listed in this file will be ignored by the ServerQuery flood protection.
  Default: The allowed file is located in your servers installation directory.

* query_ip_denylist (*query_ip_denylist.txt*)
  The file containing denied IP addresses for the ServerQuery interface. All hosts listed in this file are not allowed to connect to the ServerQuery interface.
  Default: The denylist file is located in your servers installation directory.

* query_skipbruteforcecheck (*0*)
  If set to "1", the server will skip and bruteforce protection for whitelisted Ip addresses for the ServerQuery interface.
  Default: 0 -> bruteforce protection is enabled

* query_pool_size (*2*)
  The number of threads to use for the query pool. Advanced users with large slot counts/high query usage may wish to try higher numbers here. The maximum allowed is 32, and the minimum allowed is 2. The default should be fine for most scenarios.

* dbclientkeepdays (*90*)
  Defines how many days to keep unused client identities. Auto-pruning is triggered on every start and on every new month while the server is running.
  Default: The server will auto-prune client identities older than 90 days.

* dblogkeepdays (*90*)
  Defines how many days to keep database log entries. Auto-pruning is triggered on every start and on every new month while the server is running.
  Default: The server will auto-prune log entries older than 90 days.

* logquerycommands (*1*)
  If set to '1', the server will log every ServerQuery command executed by clients. This can be useful while trying to diagnose several different issues.
  Default: ServerQuery commands will not be logged.

* logquerytiminginterval (*0*)
  Defines the number of seconds before ServerQuery command timing is reported. This is disabled by default and is an advanced diagnostic feature. We report the command, number of times called, the time spent inside that command (in microseconds), and the mean time per call. Note the format of this debug information may change. Most users will want to leave this as 0.
  Default: ServerQuery command timing wil not be logged.

* no_permission_update (*0*)
  If set to '1', new permissions will not be added to existing groups automatically. Note that this can break your server configuration if you do not update them manually. 
  Default: New permissions will be added to existing groups automatically.

* open_win_console (*0*)
  If set to '1', the server will open a console window. Note that this only affects Windows servers.
  Default: The console will be hidden on Windows.

* no_password_dialog (*0*)
  If set to '1', the server will not display the initial password dialog on the first start. Note that this only affects Windows servers.
  Default: The initial password dialog will be shown.

* dbconnections (*10*)
  The number of database connections used by the server. Please note that changing this value can have an affect on your servers performance. Possible values are 2-100. 
  Default: The server will use 10 database connections.

* logappend (*0*)
  If set to '1', the server will not create a new logfile on every start. Instead, the log output will be appended to the previous logfile. The logfile name will only contain the ID of the virtual server.
  Default: The server will create a new logfile on every start.

* query_buffer_mb (*20*)
  Server Query connections have a combined maximum buffer size. When this limit is exceeded, the connection using the most memory is closed. The buffer size is controlled by the command line variable "query_buffer_mb". The default is 20, which means the maximum amount of buffered data is 20 megabyte. The minimum is 1 megabyte. Make sure to only enter positive integer numbers here.

* http_proxy (*empty*)
  If set, the server will use the specified proxy to contact the accounting server over http.
  Supported formats are:
    domainname:port
	ipv4address:port
	[ipv6address]:port
  Default: empty, no proxy will be used

* license_accepted (*0*)
  If set to 1, the server will assume you have read and accepted the license it comes with. If this is set to 0, and there is no file ".ts3server_license_accepted" in the current working directory and there is no environment variable "TS3SERVER_LICENSE" which has the value "accept" then the ts3server will not start. On Windows a dialog asking to accept the license will appear.

* serverquerydocs_path (*serverquerydocs/*)
  Physical location where the server is looking for the documents used for the help command in ServerQuery. 
  Default: The server looks into the "serverquerydocs" directory relative to the current working directory.

* mmdbpath (*empty*)
  Set to the path of an MMDB file to use this as a source for GeoIP lookups. Requires libmaxminddb installed, which can be found in most Linux distributions as a package. Windows users can use the .dll found in the redist folder.

### Allow/Denylisting

The allowlist (or whitelist) is a list of approved hosts that are allowed to ignore the flood protection settings on a TeamSpeak 3 Server. For example, if you're using a web administration interface, we strongly recommend that you add the IP address of your web server to the allowlist file. In a new installation of the TeamSpeak 3 Server, this file is called `query_ip_allowlist.txt` and it contains the loopback IP address of your server (127.0.0.1). You can enter an infinite number of IP addresses to the whitelist, one IP address per line.

```
85.25.120.233
80.190.225.233
75.125.142.2
194.97.114.2
79.218.0.0/16
127.0.0.1
```

The TeamSpeak 3 Server also supports Classless Inter-Domain Routing (CIDR) notation so you can easily add an entire network to your lists. CIDR notation uses a syntax of specifying IP addresses using the base address of the network followed by a slash and the size of the routing prefix, e.g., 192.168.0.0/16 (IPv4) and 2001:db8::/32 (IPv6). 

The denylist is a list of hosts that, for one reason or another, are being denied access to the ServerQuery interface. In a new installation of the TeamSpeak 3 Server, this file is called `query_ip_denylist.txt` and is empty. The syntax of this file is equal to the allowlist, e.g. 0.0.0.0/0 will refuse all incoming connections. 

## Using Alternate Database Plugins

By default, TeamSpeak uses SQLite for the database backend. The vast majority of users should stay with SQLite, but if you're hosting servers at scale (or, simply wish to integrate with other infrastructure), you may wish to use a MariaDB/MySQL/PostgresQL database.

Note that operation with other databases may be slower than with SQLite.

Both MariaDB/MySQL and PostgresQL have some custom SQL queries, mostly for creating the inital tables, so you should also use the dbsqlcreatepath option to point to the correct folder. This is documented in each section below. 

### MariaDB plugin

To make your TeamSpeak Server use a MariaDB or MySQL database you need to make sure that the `ts3db_mariadb` library is located in your server's installation directory. Also you need the libmariadb(.dll/.so/.dylib) library in the same directory, or in your systems search path. TeamSpeak has provided one for you in the redist directory. You can choose to copy that one, or you can use one that is installed on your system (Linux/FreeBSD), or you can download an official one from MariaDB themselves here: https://downloads.mariadb.org/client-native/ . Note that the database server version needs to be MySQL 5.5 or higher, or MariaDB 5.5 or higher. Per default, the plugin uses the following parameters:

* host (*127.0.0.1*)
  The hostname or IP addresss of your MariaDB/MySQL server.

* port (*3306*)
  The TCP port of your MariaDB/MySQL server.

* username (*root*)
  The username used to authenticate with your MariaDB/MySQL server.

* password (*empty*)
  The password used to authenticate with your MariaDB/MySQL server.

* database (*test*)
  The name of a database on your MariaDB/MySQL server. Note that this database must be created before the TeamSpeak Server is started. Please use 'utf8mb4' character encoding for the database.

* socket (*empty*)
  The name of the Unix socket file to use, for connections made via a named pipe to a local server.
  
All parameters can be customized by creating a INI-style configuration file called `ts3db_mariadb.ini`. For example:

```ini
[config]
host=localhost
port=3306
username=teamspeak
password=x5gUjs
database=ts3db
socket=
```

The path and filename of the configuration file can be set using the 'dbpluginparameter' commandline parameter. To start the TeamSpeak Server with MariaDB/MySQL support, you need to specify the 'dbplugin' commandline parameter. You may also need to specify the 'dbsqlcreatepath' parameter if you are starting the server instance for the first time since the syntax of the MariaDB/MySQL installation files differs from SQLite3.

Example:
```sh
./ts3server_linux_amd64 dbplugin=ts3db_mariadb dbsqlcreatepath=create_mariadb/ dbpluginparameter=ts3db_mariadb.ini
```

### PostgreSQL plugin

This plugin has been tested against Postgres 9, 10, 11, 12 and 13. Make sure that the `ts3db_postgresql` library (.dll/.so/.dylib) is located in your server's installation directory.

It should also be compatible with CockroachDB, which supports 'postgres-style' syntax - but please read the note below.

Generally, the parameters are similar to the MariaDB plugin above.

#### Requirements

You will need libpq installed, which is part of Postgres itself. Please see the specific operating system instructions below.

##### Linux 

Most Linux distributions probably have libpq available, perhaps as part of a postgres client install.

On Debian distributions (Ubuntu/etc) : `apt-get install libpq5`.
On Arch based systems, installing `postgresql-libs` may work.

##### Windows

For Windows, the easiest option is probably to install Postgres (you will only need the libpq parts, not the server). You can also download the ZIP file, and extract the following files from `bin` into the same path as ts3db_postgresql.dll:

* libcrypto*.dll
* libiconv*.dll
* libintl*.dll
* libpq.dll
* libssl*.dll

You'll also need Visual C++ Redistributable 2013 installed (if it isn't already), which you can find [here](https://support.microsoft.com/en-gb/help/4032938/update-for-visual-c-2013-redistributable-package). If you see an error in the logs that `ts3db_postgresl.dll could not be loaded`, please check that the DLLs are all in the search path.

32-bit Windows users will need to use an older version of Postgres that still supports 32-bit to obtain the correct DLLs ; we strongly recommend using 64-bit.

##### FreeBSD

You can install postgresql11-client (or similar) for the `libpq` dependency with `pkg install`.

#### Settings

The plugin uses the following parameters (the defaults are listed in parentheses):

 * host (*127.0.0.1*)
   The hostname or IP address of your PostgreSQL server

 * port (*5432*)
   The TCP port of your PostgreSQL server
  
 * username (*root*)
   The username used to authenticate with your PostgreSQL server
  
 * password (*empty*)
   The password used to authenticate with your PostgreSQL server

 * database (*test*)
   The name of a database on your PostgreSQL server. Note that this database must be created before the TeamSpeak Server is started.

 * timeout (*10*)
   The maximum connection timeout in seconds. The minimum setting allowed is 2.

You may also use an INI file:

```ini
[config]
username=teamspeak
password=ewrxmnopoexnrsanrt
database=teamspeak
```

An example of using that might be:

```sh
./ts3server_linux_amd64 dbplugin=ts3db_postgresql dbsqlcreatepath=create_postgresql dbpluginparameter=ts3db_postgresql.ini
```

#### CockroachDB

As CockroachDB supports a limited set of postgres syntax, it can be used as an alternative to PostgreSQL. You should specify the CockroachDB port (default is 26257). Note that only insecure mode is supported at the moment, and that operation with Cockroach is generally a little slower than the others (due to its distributed nature).

It's mostly supported out of the box, but you should remove the file `create_postgresql/after_defaults.sql` (or comment out the contents) for CockroachDB only, as CockroachDB currently uses different index naming conventions and doesn't support the `pg_get_serial_sequence` function.

CockroachDB uses 'time based' primary ids, rather than linearly sequential as our other databases are. Furthermore, they may use the full 64-bit ID capacity for various identifiers (notably server ids, channel ids, etc). In practical terms, this means:

 * You can't assume that the first virtual server you create has an ID of 1 (or, in fact, anything about it).
 * Group and database IDs will appear random (eg. 46455465563) and are not easily predictable.
 
The standard query groups/etc retain their group IDs (2, 3, 4), but again, it's better not to assume this.

Some 3rd-party query API libraries assume that group IDs are effectively 32 bit (particularly, note that the JavaScript Number type does not have enough precision!), so please check that any ServerQuery library that you want to use has support for true 64-bit types or you'll run into errors.

## Using alternate GeoIP databases

The server comes with a built-in geoip lookup to resolve user IP addresses to the country the IP address is assigned to (as seen by the country flags in the client), provided by IP2Location. TeamSpeak Server 3.13.0 also features optional support for specifying your own GeoIP database in the standard MMDB format. It is your responsibility to source and maintain this database. The server does not make any calls to third-party web services, and only works with 'offline' databases.

Note there is no way to use both databases - it's either an external one OR the built-in IP2Location.

### Requirements

Use of this feature requires libmaxminddb to be installed (this can be found in the package library of most Linux distributions). For Windows, you can find a maxminddb.dll in the 'redist' folder - please move or copy this into the parent folder.

It is not supported on FreeBSD or macOS.

### Usage

To use this, first find yourself a database in MMDB format, and use the `mmdbpath` command line parameter to specify the path. Please make sure you store it somewhere the TeamSpeak server has access to. If it was found, the logs should say something like:
```sh
>./ts3server mmdbpath=geoip-lite.mmdb
...
2020-07-07 10:06:02.075369|INFO    |GeoIP         |   |mmdb database found and will be used for geoip lookups
```

If there is a problem, the server will warn you and 'fall back' to the built-in implementation, as you can see here:
```
>./ts3server mmdbpath=FAKEPATH
...
2020-07-07 10:06:57.759774|WARNING |GeoIP         |   |mmdb database open returned failure (check mmdbpath) : Error opening the specified MaxMind DB file
2020-07-07 10:06:57.759812|WARNING |GeoIP         |   |falling back to standard implementation
```

Both 'lite' and 'full' IP databases should work, with 'full' databases perhaps offering greater precision - but remember that GeoIP is never 100% accurate.

## Gaining Adminstrator Access

1. Regular clients

The first time a virtual server is created, a server administrator token will be automatically created and written to the server log in the following format:

```
ServerAdmin privilege key created, please use the line below
token=ppEa0Wp6hopKBzKhH5RiUtb5Ggve5aI8J7ifu+/P
```

Please note that this is an example and not a valid token on any server.

This token can be used in the TeamSpeak Client to gain administrator permissions for the currently logged in client. A token can only be used *ONCE*.

The server log is written to a file in the logs subdirectory. On Linux and macOS it is also printed to the console from which the server was started.

Important! 

2. ServerQuery clients
To gain global administration permissions for ServerQuery access, the first time the server instance is started a ServerQuery password is printed to the console output:


```
------------------------------------------------------------------
               Server Query Admin Account created                 
         loginname= "serveradmin", password= "<your password>"
         apikey= "<your api key>"
------------------------------------------------------------------
```

Use the provided login name and password to access the server using the ServerQuery interface.

Note!
The ServerQuery password is only shown ONCE when the server is started for the first time, so make sure you save this information for future reference. The only way to generate a new token and password would be to delete the server database by starting server with the 'clear_database=1' commandline parameter or deleting the file ts3server.sqlitedb. In this case all server settings and user accounts would be lost.

## Understanding the Status of a Virtual Server 

The status of a virtual server can be:

* online
  The virtual server is running and clients can connect

* offline
  The virtual server is not running

* booting up
  The virtual server is currently starting

* shutting down
  The virtual server is currently shutting down

* deploy running
  The virtual server is currently deploying a snapshot

* online virtual
  The virtual server is running *isolated* and clients cannot connect.

* other instance
  The virtual server is running in another TeamSpeak instance

To select a server that is currently offline you will have to use the -virtual parameter with the use command (e. g. use sid=1 -virtual). That will start the server in virtual mode which means you are able to change its configuration, create channels or change permissions, but no regular TeamSpeak Client can connect. As soon as the last ServerQuery client deselects the virtual server (command: `use 0`) or closes connection, its status will be changed back to 'offline'.

**Important!**

Changing a virtual servers status from 'online virtual' to 'offline' is an asynchronous operation so it is possible that a virtual server will still be in the process of shutting down when you try to start it right after deselecting it.
