<p align="center">
     <h3 align="center">NetLine</h3>
     <p align="center">A simple and lightweight network library for Java.</p>
</p>

## Dependency
The libs are hosted on the Sonatype Nexus Repository. You can add the following dependency to your project.

### 0.1 Maven
```xml
<repository>
    <id>netline-central-snapshot</id>
    <url>https://s01.oss.sonatype.org/content/repositories/snapshots/</url>
</repository>

<dependency>
    <groupId>dev.httpmarco</groupId>
    <artifactId>netline</artifactId>
    <version>1.0.0-SNAPSHOT</version>
</dependency>
```

### 0.2 Gradle
```groovy
maven {
    url = uri("https://s01.oss.sonatype.org/content/repositories/snapshots/")
}

compile "dev.httpmarco:netline:1.0.0-SNAPSHOT"
```

### 0.3 Gradle Kotlin DSL
```kotlin
maven("https://s01.oss.sonatype.org/content/repositories/snapshots/")

implementation("dev.httpmarco:netline:1.0.0-SNAPSHOT")
```

## 1. Generell

### 1.1 Create a new comp component
Below is an example of a simple server component. The API is similar for a client or, in the future, a node.
```java
Net.line()
    // Set the type of the component.
    // You can also use: client or, in the future, a node.
    .server()
    // If you want to configure your component, you can do the following:
    .config(it -> {
        // Set the hostname for binding. The default is '0.0.0.0'.
        it.hostname("xx.xx.xx.xx");
        // Set the port for binding. The default is '9091'.
        it.port(1234);
    })
    // Register a new channel tracking. See the tracking table for more details.
    .track(YourExamplePacket.class, (channel, packet) -> {
        // Add your logic here when 'YourExamplePacket' is received.
        System.out.println("Packet received! Hello!");
    });
```

### 1.2 Request and Response
With Netline, you can easily send a request packet to a component (comp) and receive a response. This can be used either asynchronously or synchronously.
```java
// For every request, you need a responder to handle the request and send back a response. 
// You can create it as follows:
// Important: The request ID and responder ID must match for each request-response pair!
server.responderOf("your_custom_request_id", (channel, id) -> new ResponsePacketType());

var request = client.request("your_custom_request_id", ResponsePacketType.class);

// Get the response of your request synchronously.
// The default timeout limit is 5 seconds. You can customize this in your component configuration.
ResponsePacketType response = request.sync();

// The same request but handled asynchronously.
request.async().whenComplete((result, throwable) -> {
    if (throwable != null) {
        // The request failed. You must check the cause of the exception!
        throwable.printStackTrace();
        return;
    }
    // The request was successfully answered.
    ResponsePacketType asyncResponse = result;
});

```

## 2. Custom comp 

### 2.1 Custom client comp methods
```java
var client = Net.line().client();

```

### 2.2 Custom server comp methods
```java
var server = Net.line().server();
server.bootSync();
// alert a packet to all connected clients
server.broadcast(new YourPacketType());
// alert a packet to a specific client
server.send("clientA", new YourPacketType());
// alert a packet to all clients with an id starting with "stats"
server.send(it -> it.id().startWith("stats"), new YourPacketType());
// get all connected clients
server.clients();
```

## 3. Security

### 3.1 Blacklist and Whitelist
```java
var server = Net.line().server();
server.config(it -> {
    // blacklist a specific address
    it.blacklist().add("xx.xx.xx.xx");
    // whitelist a specific address 
    it.whitelist().add("xx.xx.xx.xx");
});
server.bootSync();
```

### 3.2 Custom security adapter
The security provider allow you, to manage your clients with a custom security policy. Block or allow clients, based on your custom logic. A simpler way are the blacklist and whitelist. 
```java
// set your custom security provider -> child of @SecurityProvider
server.withSecurityPolicy(new YourCustomSecurityProvider());
```
Example of a simple security provider:
```java
public class YourCustomSecurityProvider implement SecurityProvider {

    @Override
    public void detectUnauthorizedAccess(NetChannel netChannel) {
        // alert if a client tries to connect without permission
        // Channel closed automatically after this method.
        System.err.println("Unauthorized access detected");
    }

    @Override
    public boolean authenticate(NetChannel netChannel) {
        // check the id of the client. Here you can implement your custom logic.
        return netChannel.id().equals("testA");
    }
}
```

4.0 Tracking table

| Tracking                         | Description                                                                 |
|----------------------------------|-----------------------------------------------------------------------------|
| ClientConnectedTracking.class    | If the client connects to the server, this tracking will be triggered.      |
| ClientDisconnectedTracking.class | If the client disconnects from the server, this tracking will be triggered. |


5.0 Future features :)
- [ ] Node implementation