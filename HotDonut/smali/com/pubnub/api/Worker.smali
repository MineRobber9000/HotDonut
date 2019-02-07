.class abstract Lcom/pubnub/api/Worker;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static log:Lorg/apache/log4j/Logger;


# instance fields
.field private volatile _die:Z

.field private _requestQueue:Ljava/util/Vector;

.field protected httpclient:Lcom/pubnub/httpclient/HttpClient;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/pubnub/api/RequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/pubnub/api/Worker;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .param p1, "_requestQueue"    # Ljava/util/Vector;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    .line 48
    invoke-static {}, Lcom/pubnub/httpclient/HttpClient;->getClient()Lcom/pubnub/httpclient/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    .line 49
    return-void
.end method


# virtual methods
.method die()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubnub/api/Worker;->_die:Z

    .line 69
    return-void
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Worker;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method interruptWorker()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pubnub/api/Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 40
    return-void
.end method

.method abstract process(Lcom/pubnub/http/HttpRequest;)V
.end method

.method resetConnection()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v0}, Lcom/pubnub/httpclient/HttpClient;->reset()V

    .line 44
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    .local v1, "hreq":Lcom/pubnub/http/HttpRequest;
    :goto_0
    iget-boolean v2, p0, Lcom/pubnub/api/Worker;->_die:Z

    if-nez v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/pubnub/http/HttpRequest;

    move-object v1, v0

    .line 82
    iget-object v2, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 83
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    if-eqz v1, :cond_2

    .line 92
    iget-boolean v2, p0, Lcom/pubnub/api/Worker;->_die:Z

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {p0, v1}, Lcom/pubnub/api/Worker;->process(Lcom/pubnub/http/HttpRequest;)V

    .line 96
    :cond_2
    iget-boolean v2, p0, Lcom/pubnub/api/Worker;->_die:Z

    if-eqz v2, :cond_0

    .line 97
    return-void

    .line 86
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/pubnub/api/Worker;->_requestQueue:Ljava/util/Vector;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 87
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method setConnectionTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v0, p1}, Lcom/pubnub/httpclient/HttpClient;->setConnectionTimeout(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/pubnub/httpclient/HttpClient;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method setRequestTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/pubnub/api/Worker;->httpclient:Lcom/pubnub/httpclient/HttpClient;

    invoke-virtual {v0, p1}, Lcom/pubnub/httpclient/HttpClient;->setRequestTimeout(I)V

    .line 65
    :cond_0
    return-void
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pubnub/api/Worker;->thread:Ljava/lang/Thread;

    .line 32
    return-void
.end method

.method startWorker()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pubnub/api/Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    return-void
.end method
