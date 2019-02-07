.class Lcom/fbt/Pubnub$PubnubHttpRequest;
.super Ljava/lang/Object;
.source "Pubnub.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fbt/Pubnub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PubnubHttpRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field channel:Ljava/lang/String;

.field final synthetic this$0:Lcom/fbt/Pubnub;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fbt/Pubnub;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->this$0:Lcom/fbt/Pubnub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->url:Ljava/lang/String;

    .line 833
    iput-object p3, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->channel:Ljava/lang/String;

    .line 834
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/fbt/Pubnub$PubnubHttpRequest;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 839
    const-string v6, ""

    .local v6, "line":Ljava/lang/String;
    const-string v5, ""

    .line 840
    .local v5, "json":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 841
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v10, 0xbb8

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 842
    const v10, 0x4baf0

    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 843
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 844
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->url:Ljava/lang/String;

    invoke-direct {v8, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 845
    .local v8, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v10, "V"

    const-string v11, "3.3"

    invoke-interface {v8, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v10, "User-Agent"

    const-string v11, "Java-Android"

    invoke-interface {v8, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-interface {v8, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v10, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->channel:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 849
    iget-object v10, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->this$0:Lcom/fbt/Pubnub;

    invoke-static {v10}, Lcom/fbt/Pubnub;->access$0(Lcom/fbt/Pubnub;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->channel:Ljava/lang/String;

    invoke-virtual {v10, v11, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    :cond_0
    invoke-interface {v3, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 855
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 856
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 859
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 860
    .local v4, "instream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 864
    .local v7, "reader":Ljava/io/BufferedReader;
    const-string v10, "Content-Encoding"

    invoke-interface {v9, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 865
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_3

    .line 866
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 867
    new-instance v7, Ljava/io/BufferedReader;

    .end local v7    # "reader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    .line 868
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v11, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 867
    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 874
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 877
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 879
    .end local v0    # "contentEncoding":Lorg/apache/http/Header;
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_1
    iget-object v10, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->channel:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 880
    iget-object v10, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->this$0:Lcom/fbt/Pubnub;

    invoke-static {v10}, Lcom/fbt/Pubnub;->access$0(Lcom/fbt/Pubnub;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v11, p0, Lcom/fbt/Pubnub$PubnubHttpRequest;->channel:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    :cond_2
    return-object v5

    .line 870
    .restart local v0    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v4    # "instream":Ljava/io/InputStream;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    new-instance v7, Ljava/io/BufferedReader;

    .end local v7    # "reader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 874
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 875
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
