.class Lcom/pubnub/api/SubscribeWorker;
.super Lcom/pubnub/api/Worker;
.source "RequestManager.java"


# instance fields
.field private MAX_RETRIES:I

.field private retryInterval:I


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "_requestQueue"    # Ljava/util/Vector;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/pubnub/api/Worker;-><init>(Ljava/util/Vector;)V

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lcom/pubnub/api/SubscribeWorker;->MAX_RETRIES:I

    .line 131
    const/16 v0, 0x1388

    iput v0, p0, Lcom/pubnub/api/SubscribeWorker;->retryInterval:I

    .line 134
    return-void
.end method


# virtual methods
.method process(Lcom/pubnub/http/HttpRequest;)V
    .locals 6
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;

    .prologue
    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "hresp":Lcom/pubnub/httpclient/HttpResponse;
    const/4 v0, 0x1

    .line 140
    .local v0, "currentRetryAttempt":I
    :goto_0
    iget v3, p0, Lcom/pubnub/api/SubscribeWorker;->MAX_RETRIES:I

    if-gt v0, v3, :cond_0

    .line 142
    :try_start_0
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 143
    iget-object v3, p0, Lcom/pubnub/api/SubscribeWorker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getHeaders()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/pubnub/httpclient/HttpClient;->fetch(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/pubnub/httpclient/HttpResponse;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/pubnub/api/SubscribeWorker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v2}, Lcom/pubnub/httpclient/HttpResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pubnub/httpclient/HttpClient;->checkResponseSuccess(I)Z
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    const/4 v0, 0x1

    .line 180
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 181
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in fetching url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 182
    iget v3, p0, Lcom/pubnub/api/SubscribeWorker;->MAX_RETRIES:I

    if-le v0, v3, :cond_2

    .line 183
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    const-string v4, "Exhausted number of retries"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubnub/http/ResponseHandler;->handleTimeout()V

    .line 192
    :goto_2
    return-void

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lorg/apache/http/conn/HttpHostConnectException;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry Attempt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/conn/HttpHostConnectException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 176
    .end local v1    # "e":Lorg/apache/http/conn/HttpHostConnectException;
    :cond_1
    :goto_3
    :try_start_1
    iget v3, p0, Lcom/pubnub/api/SubscribeWorker;->retryInterval:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 153
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .line 158
    .local v1, "e":Ljava/net/SocketException;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    goto :goto_2

    .line 161
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_4
    move-exception v1

    .line 162
    .local v1, "e":Ljava/net/SocketTimeoutException;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 163
    iget v3, p0, Lcom/pubnub/api/SubscribeWorker;->MAX_RETRIES:I

    add-int/lit8 v0, v3, 0x1

    .line 164
    goto/16 :goto_1

    .line 166
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_5
    move-exception v1

    .line 167
    .local v1, "e":Lorg/apache/http/NoHttpResponseException;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/NoHttpResponseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 170
    .end local v1    # "e":Lorg/apache/http/NoHttpResponseException;
    :catch_6
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry Attempt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception in Fetch : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v3

    const-string v4, "Network Error"

    invoke-virtual {v3, v4}, Lcom/pubnub/http/ResponseHandler;->handleError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 189
    :cond_3
    sget-object v3, Lcom/pubnub/api/SubscribeWorker;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lcom/pubnub/httpclient/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Lcom/pubnub/http/HttpRequest;->getResponseHandler()Lcom/pubnub/http/ResponseHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pubnub/httpclient/HttpResponse;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubnub/http/ResponseHandler;->handleResponse(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
