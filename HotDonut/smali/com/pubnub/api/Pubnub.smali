.class public Lcom/pubnub/api/Pubnub;
.super Ljava/lang/Object;
.source "Pubnub.java"


# static fields
.field private static log:Lorg/apache/log4j/Logger;


# instance fields
.field private CIPHER_KEY:Ljava/lang/String;

.field private DOMAIN:Ljava/lang/String;

.field private HOSTNAME:Ljava/lang/String;

.field private HOSTNAME_SUFFIX:I

.field private ORIGIN_STR:Ljava/lang/String;

.field private PRESENCE_SUFFIX:Ljava/lang/String;

.field private PUBLISH_KEY:Ljava/lang/String;

.field private SECRET_KEY:Ljava/lang/String;

.field private SSL:Z

.field private SUBSCRIBE_KEY:Ljava/lang/String;

.field private UUID:Ljava/lang/String;

.field private _saved_timetoken:Ljava/lang/String;

.field private _timetoken:Ljava/lang/String;

.field private nonSubscribeManager:Lcom/pubnub/api/RequestManager;

.field private resumeOnReconnect:Z

.field private subscribeManager:Lcom/pubnub/api/RequestManager;

.field private subscriptions:Lcom/pubnub/api/Subscriptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/pubnub/api/Pubnub;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/pubnub/api/Pubnub;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "pubsub"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 31
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 40
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 48
    const-string v0, "-pnpres"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    .line 203
    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/pubnub/api/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "pubsub"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 31
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 40
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 48
    const-string v0, "-pnpres"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    .line 232
    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/pubnub/api/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "cipher_key"    # Ljava/lang/String;
    .param p5, "ssl_on"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "pubsub"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 31
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 40
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 48
    const-string v0, "-pnpres"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    .line 170
    invoke-direct/range {p0 .. p5}, Lcom/pubnub/api/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "ssl_on"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "pubsub"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 31
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 40
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 48
    const-string v0, "-pnpres"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    .line 189
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pubnub/api/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "ssl"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "pubsub"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 31
    const-string v0, "pubnub.com"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 40
    iput-object v2, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 48
    const-string v0, "-pnpres"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    .line 217
    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pubnub/api/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method private _request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V
    .locals 1
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;
    .param p2, "simpleConnManager"    # Lcom/pubnub/api/RequestManager;

    .prologue
    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;Z)V

    .line 1097
    return-void
.end method

.method private _request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;Z)V
    .locals 0
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;
    .param p2, "connManager"    # Lcom/pubnub/api/RequestManager;
    .param p3, "abortExisting"    # Z

    .prologue
    .line 1087
    if-eqz p3, :cond_0

    .line 1088
    invoke-virtual {p2}, Lcom/pubnub/api/RequestManager;->resetHttpManager()V

    .line 1089
    :cond_0
    invoke-virtual {p2, p1}, Lcom/pubnub/api/RequestManager;->queue(Lcom/pubnub/http/HttpRequest;)V

    .line 1090
    return-void
.end method

.method private _subscribe(Ljava/util/Hashtable;)V
    .locals 10
    .param p1, "args"    # Ljava/util/Hashtable;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 903
    const-string v7, "channels"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v3, v7

    check-cast v3, [Ljava/lang/String;

    .line 904
    .local v3, "channelList":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 905
    new-array v3, v9, [Ljava/lang/String;

    .end local v3    # "channelList":[Ljava/lang/String;
    const-string v7, "channel"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v8

    .line 907
    .restart local v3    # "channelList":[Ljava/lang/String;
    :cond_0
    const-string v7, "callback"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Callback;

    .line 908
    .local v0, "callback":Lcom/pubnub/api/Callback;
    const-string v7, "timetoken"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 910
    .local v6, "timetoken":Ljava/lang/String;
    if-nez v6, :cond_1

    const-string v6, "0"

    .end local v6    # "timetoken":Ljava/lang/String;
    :cond_1
    iput-object v6, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 918
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_4

    .line 919
    aget-object v2, v3, v5

    .line 920
    .local v2, "channel":Ljava/lang/String;
    iget-object v7, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v7, v2}, Lcom/pubnub/api/Subscriptions;->getChannel(Ljava/lang/String;)Lcom/pubnub/api/Channel;

    move-result-object v4

    .line 922
    .local v4, "channelObj":Lcom/pubnub/api/Channel;
    if-nez v4, :cond_3

    .line 923
    new-instance v1, Lcom/pubnub/api/Channel;

    invoke-direct {v1}, Lcom/pubnub/api/Channel;-><init>()V

    .line 924
    .local v1, "ch":Lcom/pubnub/api/Channel;
    iput-object v2, v1, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    .line 925
    iput-boolean v8, v1, Lcom/pubnub/api/Channel;->connected:Z

    .line 926
    iput-object v0, v1, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    .line 927
    iget-object v7, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v7, v1}, Lcom/pubnub/api/Subscriptions;->addChannel(Lcom/pubnub/api/Channel;)V

    .line 918
    .end local v1    # "ch":Lcom/pubnub/api/Channel;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 928
    :cond_3
    iget-boolean v7, v4, Lcom/pubnub/api/Channel;->connected:Z

    if-eqz v7, :cond_2

    .line 934
    .end local v2    # "channel":Ljava/lang/String;
    .end local v4    # "channelObj":Lcom/pubnub/api/Channel;
    :goto_1
    return-void

    .line 933
    :cond_4
    invoke-direct {p0, v9}, Lcom/pubnub/api/Pubnub;->_subscribe_base(Z)V

    goto :goto_1
.end method

.method private _subscribe_base(Z)V
    .locals 8
    .param p1, "fresh"    # Z

    .prologue
    .line 941
    iget-object v5, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v5}, Lcom/pubnub/api/Subscriptions;->getChannelString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "channelString":Ljava/lang/String;
    iget-object v5, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v5}, Lcom/pubnub/api/Subscriptions;->getChannelNames()[Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "channelsArray":[Ljava/lang/String;
    array-length v5, v1

    if-gtz v5, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 947
    :cond_0
    if-nez v0, :cond_1

    .line 948
    const-string v5, "Parsing Error"

    invoke-direct {p0, v1, v5}, Lcom/pubnub/api/Pubnub;->callErrorCallbacks([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    :cond_1
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "subscribe"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 954
    .local v4, "urlComponents":[Ljava/lang/String;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 955
    .local v3, "params":Ljava/util/Hashtable;
    const-string v5, "uuid"

    iget-object v6, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v5, Lcom/pubnub/api/Pubnub;->log:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscribing with timetoken : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 958
    new-instance v2, Lcom/pubnub/http/HttpRequest;

    new-instance v5, Lcom/pubnub/api/Pubnub$6;

    invoke-direct {v5, p0}, Lcom/pubnub/api/Pubnub$6;-><init>(Lcom/pubnub/api/Pubnub;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lcom/pubnub/http/ResponseHandler;)V

    .line 1078
    .local v2, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v5, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v2, v5, p1}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;
    .locals 1
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/pubnub/api/Pubnub;->log:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pubnub/api/Pubnub;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/pubnub/api/Pubnub;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pubnub/api/Pubnub;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/pubnub/api/Pubnub;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/pubnub/api/Pubnub;->_subscribe_base(Z)V

    return-void
.end method

.method private callErrorCallbacks([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "channelList"    # [Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/pubnub/api/Subscriptions;->getChannel(Ljava/lang/String;)Lcom/pubnub/api/Channel;

    move-result-object v2

    iget-object v0, v2, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    .line 893
    .local v0, "cb":Lcom/pubnub/api/Callback;
    aget-object v2, p1, v1

    invoke-virtual {v0, v2, p2}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "cb":Lcom/pubnub/api/Callback;
    :cond_0
    return-void
.end method

.method private changeOrigin()V
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 1101
    iget v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    .line 1102
    return-void
.end method

.method private getOrigin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    iget-boolean v0, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pubnub/api/Pubnub;->HOSTNAME_SUFFIX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->ORIGIN_STR:Ljava/lang/String;

    goto :goto_0
.end method

.method private history(Ljava/util/Hashtable;)V
    .locals 7
    .param p1, "args"    # Ljava/util/Hashtable;

    .prologue
    .line 533
    const-string v5, "channel"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "channel":Ljava/lang/String;
    const-string v5, "limit"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 535
    .local v3, "limit":Ljava/lang/String;
    const-string v5, "callback"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Callback;

    .line 537
    .local v0, "callback":Lcom/pubnub/api/Callback;
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "history"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v5, 0x4

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v3, v4, v5

    .line 540
    .local v4, "urlargs":[Ljava/lang/String;
    new-instance v2, Lcom/pubnub/http/HttpRequest;

    new-instance v5, Lcom/pubnub/api/Pubnub$3;

    invoke-direct {v5, p0, v0, v1}, Lcom/pubnub/api/Pubnub$3;-><init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;Ljava/lang/String;)V

    invoke-direct {v2, v4, v5}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Lcom/pubnub/http/ResponseHandler;)V

    .line 567
    .local v2, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v5, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v2, v5}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V

    .line 568
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "cipher_key"    # Ljava/lang/String;
    .param p5, "ssl_on"    # Z

    .prologue
    .line 247
    iput-object p1, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 251
    iput-boolean p5, p0, Lcom/pubnub/api/Pubnub;->SSL:Z

    .line 253
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/pubnub/api/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->UUID:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Lcom/pubnub/api/Subscriptions;

    invoke-direct {v0}, Lcom/pubnub/api/Subscriptions;-><init>()V

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    if-nez v0, :cond_2

    .line 260
    new-instance v0, Lcom/pubnub/api/SubscribeManager;

    const-string v1, "Subscribe Manager"

    invoke-direct {v0, v1}, Lcom/pubnub/api/SubscribeManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Lcom/pubnub/api/NonSubscribeManager;

    const-string v1, "Non Subscribe Manager"

    invoke-direct {v0, v1}, Lcom/pubnub/api/NonSubscribeManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    const v1, 0x4baf0

    invoke-virtual {v0, v1}, Lcom/pubnub/api/RequestManager;->setRequestTimeout(I)V

    .line 266
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/pubnub/api/RequestManager;->setRequestTimeout(I)V

    .line 269
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "V"

    const-string v2, "3.4"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "Accept-Encoding"

    const-string v2, "deflate"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "User-Agent"

    const-string v2, "JAVA"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "V"

    const-string v2, "3.4"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "Accept-Encoding"

    const-string v2, "deflate"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    const-string v1, "User-Agent"

    const-string v2, "JAVA"

    invoke-virtual {v0, v1, v2}, Lcom/pubnub/api/RequestManager;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private inputsValid(Ljava/util/Hashtable;)Z
    .locals 5
    .param p1, "args"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 759
    const-string v3, "callback"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pubnub/api/Callback;

    if-nez v3, :cond_0

    .line 760
    new-instance v3, Lcom/pubnub/api/PubnubException;

    const-string v4, "Invalid Callback"

    invoke-direct {v3, v4}, Lcom/pubnub/api/PubnubException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 762
    :cond_0
    const-string v3, "channels"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 763
    .local v1, "_channels":Ljava/lang/Object;
    const-string v3, "channel"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    .local v0, "_channel":Ljava/lang/Object;
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v2, v4

    .line 768
    .local v2, "channelMissing":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 769
    new-instance v3, Lcom/pubnub/api/PubnubException;

    const-string v4, "Channel Missing"

    invoke-direct {v3, v4}, Lcom/pubnub/api/PubnubException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 765
    .end local v2    # "channelMissing":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 771
    .restart local v2    # "channelMissing":Z
    :cond_4
    return v4
.end method

.method public static stringToJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    move-object v3, p0

    .line 91
    .local v3, "obj":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .local v1, "jsarr":Lorg/json/JSONArray;
    move-object v3, v1

    .line 100
    .end local v1    # "jsarr":Lorg/json/JSONArray;
    .end local v3    # "obj":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 93
    .restart local v3    # "obj":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .local v2, "jsobj":Lorg/json/JSONObject;
    move-object v3, v2

    .local v3, "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 97
    .end local v2    # "jsobj":Lorg/json/JSONObject;
    .local v3, "obj":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static uuid()Ljava/lang/String;
    .locals 19

    .prologue
    .line 112
    new-instance v6, Lorg/bouncycastle/util/SecureRandom;

    invoke-direct {v6}, Lorg/bouncycastle/util/SecureRandom;-><init>()V

    .line 113
    .local v6, "mySecureRand":Lorg/bouncycastle/util/SecureRandom;
    const-class v17, Lcom/pubnub/api/Pubnub;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "s_id":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v12, "sbValueBeforeMD5":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 117
    .local v13, "time":J
    const-wide/16 v7, 0x0

    .line 118
    .local v7, "rand":J
    invoke-virtual {v6}, Lorg/bouncycastle/util/SecureRandom;->nextLong()J

    move-result-wide v7

    .line 119
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 125
    .local v16, "valueBeforeMD5":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/pubnub/crypto/PubnubCrypto;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 126
    .local v2, "array":[B
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v11, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 128
    aget-byte v17, v2, v5

    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    .line 129
    .local v3, "b":I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v3, v0, :cond_0

    .line 130
    const/16 v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "b":I
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 135
    .local v15, "valueAfterMD5":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "raw":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11    # "sb":Ljava/lang/StringBuffer;
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .restart local v11    # "sb":Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const/16 v17, 0x8

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const/16 v17, 0xc

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const/16 v17, 0x10

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const/16 v17, 0x14

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 148
    .end local v2    # "array":[B
    .end local v5    # "j":I
    .end local v7    # "rand":J
    .end local v9    # "raw":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuffer;
    .end local v13    # "time":J
    .end local v15    # "valueAfterMD5":Ljava/lang/String;
    .end local v16    # "valueBeforeMD5":Ljava/lang/String;
    :goto_1
    return-object v17

    .line 147
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_1
.end method


# virtual methods
.method public detailedHistory(Ljava/lang/String;ILcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    const-wide/16 v2, -0x1

    .line 731
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 732
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;IZLcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "reverse"    # Z
    .param p4, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    const-wide/16 v2, -0x1

    .line 702
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 703
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V
    .locals 7
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "count"    # I
    .param p7, "reverse"    # Z
    .param p8, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    const-wide/16 v5, -0x1

    .line 588
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 589
    .local v1, "parameters":Ljava/util/Hashtable;
    const/4 v3, -0x1

    if-ne p6, v3, :cond_0

    .line 590
    const/16 p6, 0x64

    .line 592
    :cond_0
    const-string v3, "count"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v3, "reverse"

    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    cmp-long v3, p2, v5

    if-eqz v3, :cond_1

    .line 596
    const-string v3, "start"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_1
    cmp-long v3, p4, v5

    if-eqz v3, :cond_2

    .line 599
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_2
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "v2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "history"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "sub-key"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "channel"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p1, v2, v3

    .line 604
    .local v2, "urlargs":[Ljava/lang/String;
    new-instance v0, Lcom/pubnub/http/HttpRequest;

    new-instance v3, Lcom/pubnub/api/Pubnub$4;

    invoke-direct {v3, p0, p8, p1}, Lcom/pubnub/api/Pubnub$4;-><init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lcom/pubnub/http/ResponseHandler;)V

    .line 632
    .local v0, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v3, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v0, v3}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V

    .line 633
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;JJLcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 666
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 667
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;JJZLcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "reverse"    # Z
    .param p7, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 685
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 686
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;JZLcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "reverse"    # Z
    .param p5, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 649
    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 650
    return-void
.end method

.method public detailedHistory(Ljava/lang/String;ZLcom/pubnub/api/Callback;)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "reverse"    # Z
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    const-wide/16 v2, -0x1

    .line 717
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/pubnub/api/Pubnub;->detailedHistory(Ljava/lang/String;JJIZLcom/pubnub/api/Callback;)V

    .line 718
    return-void
.end method

.method public disconnectAndResubscribe()V
    .locals 3

    .prologue
    .line 1105
    sget-object v0, Lcom/pubnub/api/Pubnub;->log:Lorg/apache/log4j/Logger;

    const-string v1, "Received disconnectAndResubscribe"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v0}, Lcom/pubnub/api/Subscriptions;->invokeDisconnectCallbackOnChannels()V

    .line 1107
    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->changeOrigin()V

    .line 1108
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    .line 1109
    sget-object v0, Lcom/pubnub/api/Pubnub;->log:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timetoken saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pubnub/api/Pubnub;->_saved_timetoken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 1110
    const-string v0, "0"

    iput-object v0, p0, Lcom/pubnub/api/Pubnub;->_timetoken:Ljava/lang/String;

    .line 1111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pubnub/api/Pubnub;->_subscribe_base(Z)V

    .line 1112
    return-void
.end method

.method public getCurrentlySubscribedChannelNames()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v1}, Lcom/pubnub/api/Subscriptions;->getChannelString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "currentChannels":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "no channels."

    .end local v0    # "currentChannels":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSubscribedChannelsArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    invoke-virtual {v0}, Lcom/pubnub/api/Subscriptions;->getChannelNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hereNow(Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 467
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "v2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "presence"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "sub_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "channel"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p1, v1, v2

    .line 470
    .local v1, "urlargs":[Ljava/lang/String;
    new-instance v0, Lcom/pubnub/http/HttpRequest;

    new-instance v2, Lcom/pubnub/api/Pubnub$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/pubnub/api/Pubnub$2;-><init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Lcom/pubnub/http/ResponseHandler;)V

    .line 497
    .local v0, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v2, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v0, v2}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V

    .line 498
    return-void
.end method

.method public history(Ljava/lang/String;ILcom/pubnub/api/Callback;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 513
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 514
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-direct {p0, v0}, Lcom/pubnub/api/Pubnub;->history(Ljava/util/Hashtable;)V

    .line 518
    return-void
.end method

.method public isResumeOnReconnect()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/pubnub/api/Pubnub;->resumeOnReconnect:Z

    return v0
.end method

.method public presence(Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 451
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->subscribe(Ljava/util/Hashtable;)V

    .line 454
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 338
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 339
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;)V

    .line 343
    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/json/JSONArray;Lcom/pubnub/api/Callback;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 320
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 321
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;)V

    .line 325
    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/json/JSONObject;Lcom/pubnub/api/Callback;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;
    .param p3, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 302
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 303
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;)V

    .line 307
    return-void
.end method

.method public publish(Ljava/util/Hashtable;)V
    .locals 14
    .param p1, "args"    # Ljava/util/Hashtable;

    .prologue
    const/16 v13, 0x2f

    .line 367
    const-string v11, "channel"

    invoke-virtual {p1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    .local v1, "channel":Ljava/lang/String;
    const-string v11, "message"

    invoke-virtual {p1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 369
    .local v5, "message":Ljava/lang/Object;
    const-string v11, "callback"

    invoke-virtual {p1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Callback;

    .line 370
    .local v0, "callback":Lcom/pubnub/api/Callback;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "msgStr":Ljava/lang/String;
    iget-object v11, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 373
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 375
    new-instance v7, Lcom/pubnub/crypto/PubnubCrypto;

    iget-object v11, p0, Lcom/pubnub/api/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    invoke-direct {v7, v11}, Lcom/pubnub/crypto/PubnubCrypto;-><init>(Ljava/lang/String;)V

    .line 377
    .local v7, "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v6}, Lcom/pubnub/crypto/PubnubCrypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 389
    .end local v7    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :cond_0
    const-string v8, "0"

    .line 391
    .local v8, "signature":Ljava/lang/String;
    iget-object v11, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 392
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 393
    .local v9, "string_to_sign":Ljava/lang/StringBuffer;
    iget-object v11, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    iget-object v12, p0, Lcom/pubnub/api/Pubnub;->SECRET_KEY:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pubnub/crypto/PubnubCrypto;->md5(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 401
    .end local v9    # "string_to_sign":Ljava/lang/StringBuffer;
    :cond_1
    const/16 v11, 0x8

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "publish"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/pubnub/api/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    invoke-static {v12}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/pubnub/api/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-static {v12}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v8}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v1}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "0"

    invoke-static {v12}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v6}, Lcom/pubnub/api/PubnubUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 406
    .local v10, "urlComponents":[Ljava/lang/String;
    new-instance v3, Lcom/pubnub/http/HttpRequest;

    new-instance v11, Lcom/pubnub/api/Pubnub$1;

    invoke-direct {v11, p0, v0, v1}, Lcom/pubnub/api/Pubnub$1;-><init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;Ljava/lang/String;)V

    invoke-direct {v3, v10, v11}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Lcom/pubnub/http/ResponseHandler;)V

    .line 433
    .local v3, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v11, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v3, v11}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V

    .line 434
    .end local v3    # "hreq":Lcom/pubnub/http/HttpRequest;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v10    # "urlComponents":[Ljava/lang/String;
    :goto_0
    return-void

    .line 378
    .restart local v7    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :catch_0
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 381
    .local v4, "jsarr":Lorg/json/JSONArray;
    const-string v11, "0"

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v12, "Error: Encryption Failure"

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 382
    invoke-virtual {v0, v1, v4}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public publish(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V
    .locals 1
    .param p1, "args"    # Ljava/util/Hashtable;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 354
    const-string v0, "callback"

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p0, p1}, Lcom/pubnub/api/Pubnub;->publish(Ljava/util/Hashtable;)V

    .line 356
    return-void
.end method

.method public setNonSubscribeTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/pubnub/api/RequestManager;->setConnectionTimeout(I)V

    .line 286
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-virtual {v0, p1}, Lcom/pubnub/api/RequestManager;->setRequestTimeout(I)V

    .line 287
    return-void
.end method

.method public setResumeOnReconnect(Z)V
    .locals 0
    .param p1, "resumeOnReconnect"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/pubnub/api/Pubnub;->resumeOnReconnect:Z

    .line 81
    return-void
.end method

.method public setSubscribeTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/pubnub/api/RequestManager;->setConnectionTimeout(I)V

    .line 281
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-virtual {v0, p1}, Lcom/pubnub/api/RequestManager;->setRequestTimeout(I)V

    .line 282
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-virtual {v0}, Lcom/pubnub/api/RequestManager;->stop()V

    .line 55
    iget-object v0, p0, Lcom/pubnub/api/Pubnub;->subscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-virtual {v0}, Lcom/pubnub/api/RequestManager;->stop()V

    .line 56
    return-void
.end method

.method public subscribe(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "args"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/pubnub/api/Pubnub;->inputsValid(Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-direct {p0, p1}, Lcom/pubnub/api/Pubnub;->_subscribe(Ljava/util/Hashtable;)V

    goto :goto_0
.end method

.method public subscribe(Ljava/util/Hashtable;Lcom/pubnub/api/Callback;)V
    .locals 1
    .param p1, "args"    # Ljava/util/Hashtable;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 831
    const-string v0, "callback"

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-virtual {p0, p1}, Lcom/pubnub/api/Pubnub;->subscribe(Ljava/util/Hashtable;)V

    .line 833
    return-void
.end method

.method public subscribe([Ljava/lang/String;Lcom/pubnub/api/Callback;)V
    .locals 1
    .param p1, "channelsArr"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 865
    const-string v0, "0"

    invoke-virtual {p0, p1, p2, v0}, Lcom/pubnub/api/Pubnub;->subscribe([Ljava/lang/String;Lcom/pubnub/api/Callback;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public subscribe([Ljava/lang/String;Lcom/pubnub/api/Callback;Ljava/lang/String;)V
    .locals 2
    .param p1, "channelsArr"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/pubnub/api/Callback;
    .param p3, "timetoken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pubnub/api/PubnubException;
        }
    .end annotation

    .prologue
    .line 882
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 884
    .local v0, "args":Ljava/util/Hashtable;
    const-string v1, "channels"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v1, "timetoken"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->subscribe(Ljava/util/Hashtable;)V

    .line 888
    return-void
.end method

.method public time(Lcom/pubnub/api/Callback;)V
    .locals 4
    .param p1, "cb"    # Lcom/pubnub/api/Callback;

    .prologue
    .line 741
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/pubnub/api/Pubnub;->getOrigin()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 742
    .local v1, "url":[Ljava/lang/String;
    new-instance v0, Lcom/pubnub/http/HttpRequest;

    new-instance v2, Lcom/pubnub/api/Pubnub$5;

    invoke-direct {v2, p0, p1}, Lcom/pubnub/api/Pubnub$5;-><init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;)V

    invoke-direct {v0, v1, v2}, Lcom/pubnub/http/HttpRequest;-><init>([Ljava/lang/String;Lcom/pubnub/http/ResponseHandler;)V

    .line 754
    .local v0, "hreq":Lcom/pubnub/http/HttpRequest;
    iget-object v2, p0, Lcom/pubnub/api/Pubnub;->nonSubscribeManager:Lcom/pubnub/api/RequestManager;

    invoke-direct {p0, v0, v2}, Lcom/pubnub/api/Pubnub;->_request(Lcom/pubnub/http/HttpRequest;Lcom/pubnub/api/RequestManager;)V

    .line 755
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 801
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->unsubscribe([Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public unsubscribe(Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "args"    # Ljava/util/Hashtable;

    .prologue
    .line 811
    const-string v1, "channels"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 812
    .local v0, "channelList":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 813
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "channelList":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v1, "channel"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 815
    .restart local v0    # "channelList":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->unsubscribe([Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/pubnub/api/Pubnub;->subscriptions:Lcom/pubnub/api/Subscriptions;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/pubnub/api/Subscriptions;->removeChannel(Ljava/lang/String;)V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method

.method public unsubscribePresence(Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 792
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pubnub/api/Pubnub;->PRESENCE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/pubnub/api/Pubnub;->unsubscribe([Ljava/lang/String;)V

    .line 793
    return-void
.end method
