.class public Lcom/pubnub/httpclient/HttpClientCore;
.super Lcom/pubnub/httpclient/HttpClient;
.source "HttpClientCore.java"


# instance fields
.field private connectionTimeout:I

.field private defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private httpClient:Lorg/apache/http/impl/client/DecompressingHttpClient;

.field private httpGet:Lorg/apache/http/client/methods/HttpGet;

.field private httpParams:Lorg/apache/http/params/HttpParams;

.field private requestTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/pubnub/httpclient/HttpClient;-><init>()V

    .line 23
    const v0, 0x4baf0

    iput v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->requestTimeout:I

    .line 24
    const/16 v0, 0x1388

    iput v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->connectionTimeout:I

    .line 48
    invoke-direct {p0}, Lcom/pubnub/httpclient/HttpClientCore;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "requestTimeout"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/pubnub/httpclient/HttpClientCore;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/pubnub/httpclient/HttpClientCore;->setRequestTimeout(I)V

    .line 62
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "requestTimeout"    # I
    .param p2, "connTimeout"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/pubnub/httpclient/HttpClientCore;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/pubnub/httpclient/HttpClientCore;->setRequestTimeout(I)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/pubnub/httpclient/HttpClientCore;->setConnectionTimeout(I)V

    .line 55
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    iget v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->connectionTimeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 37
    .local v0, "retryHandler":Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 38
    iget-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 39
    new-instance v1, Lorg/apache/http/impl/client/DecompressingHttpClient;

    iget-object v2, p0, Lcom/pubnub/httpclient/HttpClientCore;->defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DecompressingHttpClient;-><init>(Lorg/apache/http/client/HttpClient;)V

    iput-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpClient:Lorg/apache/http/impl/client/DecompressingHttpClient;

    .line 40
    iget-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpClient:Lorg/apache/http/impl/client/DecompressingHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DecompressingHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    iput-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    .line 41
    iget-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    iget v2, p0, Lcom/pubnub/httpclient/HttpClientCore;->requestTimeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    iget-object v1, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    iget v2, p0, Lcom/pubnub/httpclient/HttpClientCore;->connectionTimeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    const-string v1, "org.apache.commons.logging.Log"

    const-string v2, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    const-string v1, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v2, "error"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    return-void
.end method

.method private static readInput(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 101
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 103
    .local v1, "n":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 104
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public abortCurrentRequest()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 33
    :cond_0
    return-void
.end method

.method public checkResponse(I)Z
    .locals 1
    .param p1, "rc"    # I

    .prologue
    .line 90
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pubnub/httpclient/HttpClientCore;->isRedirect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkResponseSuccess(I)Z
    .locals 1
    .param p1, "rc"    # I

    .prologue
    .line 94
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetch(Ljava/lang/String;)Lcom/pubnub/httpclient/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pubnub/httpclient/HttpClientCore;->fetch(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/pubnub/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized fetch(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/pubnub/httpclient/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 118
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->_headers:Ljava/util/Hashtable;

    if-eqz v6, :cond_0

    .line 119
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->_headers:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 120
    .local v0, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->_headers:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    .local v5, "val":Ljava/lang/String;
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6, v2, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "en":Ljava/util/Enumeration;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 126
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 128
    .restart local v0    # "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .restart local v5    # "val":Ljava/lang/String;
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6, v2, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    .end local v0    # "en":Ljava/util/Enumeration;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpClient:Lorg/apache/http/impl/client/DecompressingHttpClient;

    iget-object v7, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DecompressingHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 135
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 136
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/pubnub/httpclient/HttpClientCore;->readInput(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "page":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 139
    new-instance v6, Lcom/pubnub/httpclient/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/pubnub/httpclient/HttpResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->connectionTimeout:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->requestTimeout:I

    return v0
.end method

.method public isOk(I)Z
    .locals 1
    .param p1, "rc"    # I

    .prologue
    .line 143
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedirect(I)Z
    .locals 1
    .param p1, "rc"    # I

    .prologue
    .line 84
    const/16 v0, 0x12d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x133

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/pubnub/httpclient/HttpClientCore;->connectionTimeout:I

    .line 80
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 1
    .param p1, "requestTimeout"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/pubnub/httpclient/HttpClientCore;->requestTimeout:I

    .line 71
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClientCore;->defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 147
    invoke-direct {p0}, Lcom/pubnub/httpclient/HttpClientCore;->init()V

    .line 148
    return-void
.end method
