# http push vs pull

{% embed url="https://medium.com/nlgn/http-push-and-pull-introduction-nlogn-c726c012662" %}

{% embed url="http://www.ruanyifeng.com/blog/2018/03/http2\_server\_push.html" %}



Pull:

api calls, short live connection close after response

Client request for resource and need to keep checking, which can cause extra bandwidth and make server busy



Push:

Example push notification and nginx server \( check 阮一峰）

{% embed url="https://developers.google.com/web/fundamentals/push-notifications/how-push-works" %}



Long persistent connection between c/s

Client send request to init and maintain connection with server, when server has update, it sends updates to client. Client need to define listener to handle update

Pub/Sub model

Benefit, server side notify client when resource available.

