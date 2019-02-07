.class Lcom/jirbo/adcolony/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/StateManager$ZoneState;
    }
.end annotation


# static fields
.field static volatile loaded:Z

.field static lock:Ljava/lang/Object;

.field static old_timestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static old_zone_state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/StateManager$ZoneState;",
            ">;"
        }
    .end annotation
.end field

.field static timestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static zone_state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/StateManager$ZoneState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    return-void
.end method

.method static clearCurPlays()V
    .locals 4

    .prologue
    .line 212
    sget-object v3, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 214
    :try_start_0
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->zone_state:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .line 216
    .local v1, "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    const/4 v2, 0x0

    iput v2, v1, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_plays:I

    goto :goto_0

    .line 223
    .end local v1    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 219
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->old_zone_state:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .line 221
    .restart local v1    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    const/4 v2, 0x0

    iput v2, v1, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_plays:I

    goto :goto_1

    .line 223
    .end local v1    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    return-void
.end method

.method static configure()V
    .locals 9

    .prologue
    .line 37
    sget-boolean v6, Lcom/jirbo/adcolony/StateManager;->loaded:Z

    if-eqz v6, :cond_0

    .line 74
    .local v4, "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :goto_0
    return-void

    .line 39
    .end local v4    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_0
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    .line 40
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    .line 41
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/jirbo/adcolony/StateManager;->old_timestamps:Ljava/util/HashMap;

    .line 43
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/jirbo/adcolony/StateManager;->zone_state:Ljava/util/HashMap;

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/jirbo/adcolony/StateManager;->old_zone_state:Ljava/util/HashMap;

    .line 48
    :try_start_0
    const-string v6, "state.properties"

    invoke-static {v6}, Lcom/jirbo/adcolony/JSON;->load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    .line 50
    .restart local v4    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v6, "timestamps"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    const-string v6, "timestamps"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 53
    .local v0, "data":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->keys()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcom/jirbo/adcolony/StateManager;->old_timestamps:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v0    # "data":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "err":Ljava/lang/Exception;
    const-string v6, "Failed to load state.properties"

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 73
    .end local v1    # "err":Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x1

    sput-boolean v6, Lcom/jirbo/adcolony/StateManager;->loaded:Z

    goto :goto_0

    .line 59
    :cond_2
    :try_start_1
    const-string v6, "zone_state"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    const-string v6, "zone_state"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v0

    .line 62
    .restart local v0    # "data":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/JSON$JSObject;->keys()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    .restart local v3    # "key":Ljava/lang/String;
    new-instance v5, Lcom/jirbo/adcolony/StateManager$ZoneState;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/StateManager$ZoneState;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 65
    .local v5, "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    sget-object v6, Lcom/jirbo/adcolony/StateManager;->old_zone_state:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/jirbo/adcolony/StateManager$ZoneState;->zone_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->zone_state:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .line 150
    .local v0, "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 158
    .end local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    .local v1, "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    :goto_0
    return-object v1

    .line 152
    .end local v1    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    .restart local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    :cond_0
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->old_zone_state:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    check-cast v0, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .line 153
    .restart local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .end local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/StateManager$ZoneState;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->zone_state:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 158
    .end local v0    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    .restart local v1    # "state":Lcom/jirbo/adcolony/StateManager$ZoneState;
    goto :goto_0
.end method

.method static getCurInterval(Ljava/lang/String;)I
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iget v0, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_interval:I

    monitor-exit v1

    return v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCurPlays(Ljava/lang/String;)I
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iget v0, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_plays:I

    monitor-exit v1

    return v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCurVCPlays(Ljava/lang/String;)I
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iget v0, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_vc_plays:I

    monitor-exit v1

    return v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getLastVCPlayDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getPlaylistIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iget v0, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->playlist_index:I

    monitor-exit v1

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getTimestamp(Ljava/lang/String;)J
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v3, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    monitor-exit v3

    .line 135
    :goto_0
    return-wide v0

    .line 129
    :cond_0
    const-wide/16 v0, 0x0

    .line 130
    .local v0, "result":J
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->old_timestamps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->old_timestamps:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 134
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v3

    goto :goto_0

    .line 136
    .end local v0    # "result":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static saveState()V
    .locals 13

    .prologue
    .line 88
    sget-boolean v8, Lcom/jirbo/adcolony/StateManager;->loaded:Z

    if-nez v8, :cond_0

    .line 121
    .local v5, "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :goto_0
    return-void

    .line 89
    .end local v5    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_0
    sget-object v9, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 95
    :try_start_0
    new-instance v5, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v5}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 96
    .restart local v5    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    new-instance v6, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v6}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 97
    .local v6, "tstamps":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v8, "timestamps"

    invoke-virtual {v5, v8, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 98
    sget-object v8, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "key":Ljava/lang/String;
    new-instance v10, Lcom/jirbo/adcolony/JSON$JSNumber;

    sget-object v8, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {v6, v4, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 116
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "tstamps":Lcom/jirbo/adcolony/JSON$JSObject;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "err":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "Failed to save state.properties"

    invoke-static {v8}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 120
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_2
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 104
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "tstamps":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_1
    :try_start_2
    new-instance v7, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v7}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 105
    .local v7, "zone_state_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v8, "zone_state"

    invoke-virtual {v5, v8, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 106
    sget-object v8, Lcom/jirbo/adcolony/StateManager;->zone_state:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/StateManager$ZoneState;

    .line 108
    .local v2, "info":Lcom/jirbo/adcolony/StateManager$ZoneState;
    new-instance v3, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v3}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 109
    .local v3, "info_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    iget-object v8, v2, Lcom/jirbo/adcolony/StateManager$ZoneState;->zone_id:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 110
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/StateManager$ZoneState;->store(Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_3

    .line 113
    .end local v2    # "info":Lcom/jirbo/adcolony/StateManager$ZoneState;
    .end local v3    # "info_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_2
    const-string v8, "state.properties"

    invoke-virtual {v5, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->save(Ljava/lang/String;)V

    .line 114
    const-string v8, "Saved state.properties."

    invoke-static {v8}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static setCurInterval(Ljava/lang/String;I)V
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 228
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iput p1, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_interval:I

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setCurPlays(Ljava/lang/String;I)V
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 196
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iput p1, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_plays:I

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setCurVCPlays(Ljava/lang/String;I)V
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 163
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iput p1, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->cur_vc_plays:I

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->saveState()V

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static setLastVCPlayDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iput-object p1, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->last_vc_date:Ljava/lang/String;

    .line 247
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setPlaylistIndex(Ljava/lang/String;I)V
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 180
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/StateManager;->findZoneState(Ljava/lang/String;)Lcom/jirbo/adcolony/StateManager$ZoneState;

    move-result-object v0

    iput p1, v0, Lcom/jirbo/adcolony/StateManager$ZoneState;->playlist_index:I

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setTimestamp(Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 141
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/StateManager;->timestamps:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static unload()V
    .locals 2

    .prologue
    .line 78
    sget-boolean v0, Lcom/jirbo/adcolony/StateManager;->loaded:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->saveState()V

    .line 80
    sget-object v1, Lcom/jirbo/adcolony/StateManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/jirbo/adcolony/StateManager;->loaded:Z

    .line 83
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
