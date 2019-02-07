.class public abstract Lcom/pubnub/httpclient/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# instance fields
.field protected _headers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient()Lcom/pubnub/httpclient/HttpClient;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/pubnub/httpclient/HttpClientCore;

    invoke-direct {v0}, Lcom/pubnub/httpclient/HttpClientCore;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract abortCurrentRequest()V
.end method

.method public abstract checkResponse(I)Z
.end method

.method public abstract checkResponseSuccess(I)Z
.end method

.method public abstract fetch(Ljava/lang/String;)Lcom/pubnub/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation
.end method

.method public abstract fetch(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/pubnub/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation
.end method

.method public getClient(I)Lcom/pubnub/httpclient/HttpClient;
    .locals 1
    .param p1, "requestTimeout"    # I

    .prologue
    .line 19
    new-instance v0, Lcom/pubnub/httpclient/HttpClientCore;

    invoke-direct {v0, p1}, Lcom/pubnub/httpclient/HttpClientCore;-><init>(I)V

    return-object v0
.end method

.method public getClient(II)Lcom/pubnub/httpclient/HttpClient;
    .locals 1
    .param p1, "requestTimeout"    # I
    .param p2, "connTimeout"    # I

    .prologue
    .line 15
    new-instance v0, Lcom/pubnub/httpclient/HttpClientCore;

    invoke-direct {v0, p1, p2}, Lcom/pubnub/httpclient/HttpClientCore;-><init>(II)V

    return-object v0
.end method

.method public abstract getConnectionTimeout()I
.end method

.method public abstract getRequestTimeout()I
.end method

.method public abstract isOk(I)Z
.end method

.method public abstract isRedirect(I)Z
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/pubnub/httpclient/HttpClient;->shutdown()V

    .line 30
    return-void
.end method

.method public abstract setConnectionTimeout(I)V
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClient;->_headers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/pubnub/httpclient/HttpClient;->_headers:Ljava/util/Hashtable;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/pubnub/httpclient/HttpClient;->_headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public abstract setRequestTimeout(I)V
.end method

.method public abstract shutdown()V
.end method
