WebQuery provides an interface for querying and managing a TeamSpeak server over HTTP.

It requires TeamSpeak server 3.12.0 onwards, and is enabled by default from 3.13.0. Please see the server quickstart guide for information on how to configure WebQuery, security implications, and how to get your API Key.
 
# Usage

You can use any standard HTTP utility to talk to the TeamSpeak server via WebQuery. Curl is widely available, but you may also prefer to use httpie, Postman, or similar. 

Most requests are of the form:

`/{serverId}/{command}`

where `serverId` is the numeric ID of your virtualserver (1, for example), and `command` is one of the methods documented below. 

Sometimes you may need to address the entire instance ; in that case, you may omit the `serverId` path. e.g. `/version`

You can use POST or GET, but we recommend you use POST for most calls for ease of use. Data is returned in JSON format, with `body` and `status` objects. 
 
For a complete example, a call to `/1/version` using curl:

```shell
$ curl -X POST http://localhost:10080/1/whoami?api-key=BACzprQW_XYE7t6XCDJfC2EJwudNiU2T3D54HEK
```

would return something like:
```json
{
  "body": [
    {
      "client_channel_id": "1",
      "client_database_id": "1",
      "client_id": "14",
      "client_login_name": "<internal>",
      "client_nickname": "serveradmin",
      "client_origin_server_id": "0",
      "client_unique_identifier": "serveradmin",
      "virtualserver_id": "1",
      "virtualserver_port": "9987",
      "virtualserver_status": "online",
      "virtualserver_unique_identifier": "dwcJxlwg51mhDP1nlVQh51sIIzo="
    }
  ],
  "status": {
    "code": 0,
    "message": "ok"
  }
}
```

If you need to address the server by port, rather than by id, you can use the following syntax:

`/byport/9987/channellist`

# Error Handling

Errors are returned in the `status` field:

```json
  "status": {
    "code": 0,
    "message": "ok"
  }
```

`code` is `0` if there is no error, or a positive integer code otherwise. The `message` field will describe the error in a more human-readable format.

Note:For legacy compatibility, error `1281` - `ERROR_database_empty_result` can happen if there are no entries in a database, but for client purposes you may wish to treat this as OK.

# Authentication

Every call requires an api key, which is shown when you first create your server, and looks something like:

`BAByFoiEXZfnSJyE6dbXFiW_nn_SdwkclpKNz9j`

For information on how to find your api key, please see the QuickStart guide.

You can add this as either a HTTP header `x-api-key`, or as a query parameter `api-key`. It is not accepted as part of the body.

Requests without proper authentication will be rejected with a 4xx HTTP status code.

# Migrating from ServerQuery

If you're familiar with ServerQuery, it should be easy to adapt to WebQuery.  For example:

```
use 1
channellist -topic -icon
```

becomes:

```shell
$ curl -X POST -d '{ \"-topic\": \"\", \"-icon\": \"\" }' 'http://127.0.0.1:10080/1/channellist?api-key=BAByFoiEXZfnSJyE6dbXFiW_nn_SdwkclpKNz9j'
```

Some functions can take multiple parameters (for example, you can ban several ids at once). From TeamSpeak 3.13.0+, you can use JSON array syntax for this:

```shell
$ curl -d '{\"clid\":[1,2,3,4]}' -X POST http://127.0.0.1:10080/1/clientinfo?api-key=BAByFoiEXZfnSJyE6dbXFiW_nn_SdwkclpKNz9j
```

Or, you may send them as a repeated JSON array: `clientinfo clid=1|clid=2|clid=3|clid=4` becomes

```shell
$ curl -X POST -d '[ { \"clid\": \"1\" }, { \"clid\": \"2\" }, { \"clid\": \"3\" }, { \"clid\": \"4\" } ]' 'http://127.0.0.1:10080/1/clientinfo?api-key=BAByFoiEXZfnSJyE6dbXFiW_nn_SdwkclpKNz9j'\n\
```

Due to differences in operation, the following ServerQuery commands are currently unsupported in WebQuery:
* `ft*` e.g. (`ftcreatedir`, `ftdeletefile`)
* `help`
* `login` and `logout`
* `quit`
* `servernotifyregister` and `servernotifyunregister`
* `use`

# Examples

Replace the API Key with your own before trying these!

## Rename your server

```shell
echo '{"virtualserver_name":"meow"}' | http :10080/1/serveredit?api-key=BACzprQW_XYE7t6XCDJfC2EJwudNiU2T3D54HEK
```

## Set the banner url to a space image and set the aspect ratio

```shell
echo '{"virtualserver_hostbanner_mode":2,"virtualserver_hostbanner_gfx_url":"https://apod.nasa.gov/apod/image/2009/m31abtpmoon.jpg"}' | http :10080/1/serveredit?api-key=BACzprQW_XYE7t6XCDJfC2EJwudNiU2T3D54HEK
```

## (Python) Find out who is logged in to your server

```python
import requests

key = 'BACzprQW_XYE7t6XCDJfC2EJwudNiU2T3D54HEK'
url = "http://localhost:10080/1/clientlist?api-key=" + key

print("On your server, the current clients are:")

data = requests.post(url)
clients = data.json()["body"]
print("\n".join([item["client_nickname"] for item in clients]))
```
