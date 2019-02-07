.class Lcom/pubnub/api/NonSubscribeManager;
.super Lcom/pubnub/api/RequestManager;
.source "RequestManager.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/pubnub/api/RequestManager;-><init>(Ljava/lang/String;)V

    .line 312
    return-void
.end method


# virtual methods
.method public getWorker()Lcom/pubnub/api/Worker;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/pubnub/api/NonSubscribeWorker;

    iget-object v1, p0, Lcom/pubnub/api/NonSubscribeManager;->_waiting:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lcom/pubnub/api/NonSubscribeWorker;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method
