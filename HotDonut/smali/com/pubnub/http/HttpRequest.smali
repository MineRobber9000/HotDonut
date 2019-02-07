.class public Lcom/pubnub/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private headers:Ljava/util/Hashtable;

.field private params:Ljava/util/Hashtable;

.field private responseHandler:Lcom/pubnub/http/ResponseHandler;

.field private url:Ljava/lang/String;

.field private urlComponents:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/pubnub/http/ResponseHandler;)V
    .locals 0
    .param p1, "urlComponents"    # [Ljava/lang/String;
    .param p2, "rh"    # Lcom/pubnub/http/ResponseHandler;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/pubnub/http/HttpRequest;->setUrlComponents([Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/pubnub/http/HttpRequest;->setResponseHandler(Lcom/pubnub/http/ResponseHandler;)V

    .line 31
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Hashtable;Lcom/pubnub/http/ResponseHandler;)V
    .locals 0
    .param p1, "urlComponents"    # [Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Hashtable;
    .param p3, "rh"    # Lcom/pubnub/http/ResponseHandler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/pubnub/http/HttpRequest;->setUrlComponents([Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/pubnub/http/HttpRequest;->setParams(Ljava/util/Hashtable;)V

    .line 25
    invoke-virtual {p0, p3}, Lcom/pubnub/http/HttpRequest;->setResponseHandler(Lcom/pubnub/http/ResponseHandler;)V

    .line 26
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;Lcom/pubnub/http/ResponseHandler;)V
    .locals 0
    .param p1, "urlComponents"    # [Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Hashtable;
    .param p3, "headers"    # Ljava/util/Hashtable;
    .param p4, "rh"    # Lcom/pubnub/http/ResponseHandler;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/pubnub/http/HttpRequest;->setUrlComponents([Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/pubnub/http/HttpRequest;->setParams(Ljava/util/Hashtable;)V

    .line 18
    invoke-virtual {p0, p3}, Lcom/pubnub/http/HttpRequest;->setHeaders(Ljava/util/Hashtable;)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/pubnub/http/HttpRequest;->setResponseHandler(Lcom/pubnub/http/ResponseHandler;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pubnub/http/HttpRequest;->headers:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getParams()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pubnub/http/HttpRequest;->params:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getResponseHandler()Lcom/pubnub/http/ResponseHandler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pubnub/http/HttpRequest;->responseHandler:Lcom/pubnub/http/ResponseHandler;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 63
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->url:Ljava/lang/String;

    .line 92
    :goto_0
    return-object v5

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->urlComponents:[Ljava/lang/String;

    const-string v6, "/"

    invoke-static {v5, v6}, Lcom/pubnub/api/PubnubUtil;->joinString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->params:Ljava/util/Hashtable;

    if-eqz v5, :cond_3

    .line 70
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 74
    .local v2, "paramsKeys":Ljava/util/Enumeration;
    const/4 v0, 0x1

    .line 75
    .local v0, "first":Z
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    if-nez v0, :cond_1

    .line 77
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 79
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .end local v0    # "first":Z
    .end local v2    # "paramsKeys":Ljava/util/Enumeration;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    iput-object v4, p0, Lcom/pubnub/http/HttpRequest;->url:Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lcom/pubnub/http/HttpRequest;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pubnub/http/HttpRequest;->urlComponents:[Ljava/lang/String;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/Hashtable;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pubnub/http/HttpRequest;->headers:Ljava/util/Hashtable;

    .line 60
    return-void
.end method

.method public setParams(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Hashtable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pubnub/http/HttpRequest;->params:Ljava/util/Hashtable;

    .line 47
    return-void
.end method

.method public setResponseHandler(Lcom/pubnub/http/ResponseHandler;)V
    .locals 0
    .param p1, "responseHandler"    # Lcom/pubnub/http/ResponseHandler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pubnub/http/HttpRequest;->responseHandler:Lcom/pubnub/http/ResponseHandler;

    .line 54
    return-void
.end method

.method public setUrlComponents([Ljava/lang/String;)V
    .locals 0
    .param p1, "urlComponents"    # [Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pubnub/http/HttpRequest;->urlComponents:[Ljava/lang/String;

    .line 39
    return-void
.end method
