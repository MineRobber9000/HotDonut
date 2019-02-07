.class public Lcom/pubnub/examples/PubnubExample;
.super Ljava/lang/Object;
.source "PubnubExample.java"


# instance fields
.field _pubnub:Lcom/pubnub/api/Pubnub;

.field channel:Ljava/lang/String;

.field channels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "hello_world1"

    iput-object v0, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hello_world1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "hello_world2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hello_world3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hello_world4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pubnub/examples/PubnubExample;->channels:[Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/pubnub/api/Pubnub;

    const-string v1, "demo"

    const-string v2, "demo"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubnub/api/Pubnub;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    .line 21
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-static {p0}, Lcom/pubnub/examples/PubnubExample;->notifyUser(Ljava/lang/Object;)V

    return-void
.end method

.method private detailedHistory()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    const/4 v2, 0x2

    new-instance v3, Lcom/pubnub/examples/PubnubExample$7;

    invoke-direct {v3, p0}, Lcom/pubnub/examples/PubnubExample$7;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;ILcom/pubnub/api/Callback;)V

    .line 204
    return-void
.end method

.method private hereNow()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    new-instance v2, Lcom/pubnub/examples/PubnubExample$5;

    invoke-direct {v2, p0}, Lcom/pubnub/examples/PubnubExample$5;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/Pubnub;->hereNow(Ljava/lang/String;Lcom/pubnub/api/Callback;)V

    .line 175
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "counter":I
    new-instance v2, Lcom/pubnub/examples/PubnubExample;

    invoke-direct {v2}, Lcom/pubnub/examples/PubnubExample;-><init>()V

    .line 33
    .local v2, "pex":Lcom/pubnub/examples/PubnubExample;
    iget-object v3, v2, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    const v4, 0x4baf0

    invoke-virtual {v3, v4}, Lcom/pubnub/api/Pubnub;->setSubscribeTimeout(I)V

    .line 34
    iget-object v3, v2, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    const/16 v4, 0x3a98

    invoke-virtual {v3, v4}, Lcom/pubnub/api/Pubnub;->setNonSubscribeTimeout(I)V

    .line 59
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\nRunning subscribe()"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hello_world-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/pubnub/examples/PubnubExample;->subscribe([Ljava/lang/String;)V

    .line 63
    :goto_0
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v0, v3, 0x9

    .line 66
    const-wide/16 v3, 0x4e20

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Calling disconnect and resubscribe"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget-object v3, v2, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v3}, Lcom/pubnub/api/Pubnub;->disconnectAndResubscribe()V

    .line 73
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hello_world-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/pubnub/examples/PubnubExample;->subscribe([Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private static notifyUser(Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private presence()V
    .locals 3

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    new-instance v2, Lcom/pubnub/examples/PubnubExample$6;

    invoke-direct {v2, p0}, Lcom/pubnub/examples/PubnubExample$6;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/Pubnub;->presence(Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    :try_end_0
    .catch Lcom/pubnub/api/PubnubException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public history()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    const/4 v2, 0x2

    new-instance v3, Lcom/pubnub/examples/PubnubExample$4;

    invoke-direct {v3, p0}, Lcom/pubnub/examples/PubnubExample$4;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pubnub/api/Pubnub;->history(Ljava/lang/String;ILcom/pubnub/api/Callback;)V

    .line 163
    return-void
.end method

.method public publish()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v1, "message":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "some_key"

    const-string v3, "Java says hello, world!"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 89
    .local v0, "args":Ljava/util/Hashtable;
    const-string v2, "channel"

    iget-object v3, p0, Lcom/pubnub/examples/PubnubExample;->channel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v2, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v3, Lcom/pubnub/examples/PubnubExample$1;

    invoke-direct {v3, p0}, Lcom/pubnub/examples/PubnubExample$1;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v2, v0, v3}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V

    .line 100
    return-void

    .line 86
    .end local v0    # "args":Ljava/util/Hashtable;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public subscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 104
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channels"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v2, Lcom/pubnub/examples/PubnubExample$2;

    invoke-direct {v2, p0}, Lcom/pubnub/examples/PubnubExample$2;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v1, v0, v2}, Lcom/pubnub/api/Pubnub;->subscribe(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public time()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    new-instance v1, Lcom/pubnub/examples/PubnubExample$3;

    invoke-direct {v1, p0}, Lcom/pubnub/examples/PubnubExample$3;-><init>(Lcom/pubnub/examples/PubnubExample;)V

    invoke-virtual {v0, v1}, Lcom/pubnub/api/Pubnub;->time(Lcom/pubnub/api/Callback;)V

    .line 150
    return-void
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 135
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channels"

    iget-object v2, p0, Lcom/pubnub/examples/PubnubExample;->channels:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/pubnub/examples/PubnubExample;->_pubnub:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v1, v0}, Lcom/pubnub/api/Pubnub;->unsubscribe(Ljava/util/Hashtable;)V

    .line 138
    return-void
.end method
