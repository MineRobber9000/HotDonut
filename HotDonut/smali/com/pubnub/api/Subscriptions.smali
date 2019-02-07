.class Lcom/pubnub/api/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# instance fields
.field private channels:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    .line 15
    return-void
.end method


# virtual methods
.method public addChannel(Lcom/pubnub/api/Channel;)V
    .locals 2
    .param p1, "channel"    # Lcom/pubnub/api/Channel;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public getChannel(Ljava/lang/String;)Lcom/pubnub/api/Channel;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    return-object v0
.end method

.method public getChannelNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/pubnub/api/PubnubUtil;->hashtableKeysToArray(Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/pubnub/api/PubnubUtil;->hashTableKeysToDelimitedString(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChannel()Lcom/pubnub/api/Channel;
    .locals 4

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "ch":Lcom/pubnub/api/Channel;
    iget-object v3, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/pubnub/api/Channel;

    move-object v1, v0

    .line 35
    :cond_0
    monitor-exit v3

    .line 36
    return-object v1

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public invokeConnectCallbackOnChannels()V
    .locals 5

    .prologue
    .line 60
    iget-object v3, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 62
    .local v1, "ch":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    .line 64
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    if-nez v2, :cond_0

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    .line 66
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->subscribed:Z

    if-nez v2, :cond_1

    .line 67
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v4, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pubnub/api/Callback;->connectCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "ch":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 69
    .restart local v0    # "_channel":Lcom/pubnub/api/Channel;
    .restart local v1    # "ch":Ljava/util/Enumeration;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->subscribed:Z

    .line 70
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v4, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pubnub/api/Callback;->reconnectCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    return-void
.end method

.method public invokeConnectCallbackOnChannels([Ljava/lang/String;)V
    .locals 4
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p1

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    .line 112
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    if-nez v2, :cond_0

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    .line 114
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->subscribed:Z

    if-nez v2, :cond_1

    .line 115
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v3, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pubnub/api/Callback;->connectCallback(Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->subscribed:Z

    .line 118
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v3, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pubnub/api/Callback;->reconnectCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    return-void
.end method

.method public invokeDisconnectCallbackOnChannels()V
    .locals 5

    .prologue
    .line 83
    iget-object v3, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 85
    .local v1, "ch":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    .line 87
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    .line 89
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v4, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pubnub/api/Callback;->disconnectCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "ch":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ch":Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    return-void
.end method

.method public invokeDisconnectCallbackOnChannels([Ljava/lang/String;)V
    .locals 4
    .param p1, "channels"    # [Ljava/lang/String;

    .prologue
    .line 126
    monitor-enter p1

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    .line 129
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    iget-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 130
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/pubnub/api/Channel;->connected:Z

    .line 131
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v3, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pubnub/api/Callback;->disconnectCallback(Ljava/lang/String;)V

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    :cond_1
    monitor-exit p1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public invokeErrorCallbackOnChannels(Ljava/lang/Object;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v3, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 101
    .local v1, "ch":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubnub/api/Channel;

    .line 103
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    iget-object v2, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v4, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "ch":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ch":Ljava/util/Enumeration;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method

.method public removeAllChannels()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 27
    return-void
.end method

.method public removeChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pubnub/api/Subscriptions;->channels:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
