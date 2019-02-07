.class Lcom/pubnub/api/NonSubscribeWorker;
.super Lcom/pubnub/api/Worker;
.source "RequestManager.java"


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .param p1, "_requestQueue"    # Ljava/util/Vector;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/pubnub/api/Worker;-><init>(Ljava/util/Vector;)V

    .line 104
    return-void
.end method


# virtual methods
.method process(Lcom/pubnub/http/HttpRequest;)V
    .locals 5
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "hresp":Lcom/pubnub/httpclient/HttpResponse;
    :try_start_0
    sget-object v2, Lcom/pubnub/api/NonSubscribeWorker;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/pubnub/api/NonSubscribeWorker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getHeaders()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pubnub/httpclient/HttpClient;->fetch(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/pubnub/httpclient/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pubnub/api/NonSubscribeWorker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v1}, Lcom/pubnub/httpclient/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pubnub/httpclient/HttpClient;->checkResponseSuccess(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_0
    sget-object v2, Lcom/pubnub/api/NonSubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in fetching url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v2

    const-string v3, "Network Error"

    invoke-virtual {v2, v3}, Lcom/pubnub/http/ResponseHandler;->handleError(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pubnub/api/NonSubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in Fetch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pubnub/http/ResponseHandler;->handleError(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pubnub/httpclient/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pubnub/http/ResponseHandler;->handleResponse(Ljava/lang/String;)V

    goto :goto_0
.end method
