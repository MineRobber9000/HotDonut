.class Lcom/jirbo/adcolony/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/Analytics$MonitorThread;,
        Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;
    }
.end annotation


# static fields
.field static final AUTOREFRESH_INTERVAL_MS:J = 0x927c0L

.field static instance:Lcom/jirbo/adcolony/Analytics;


# instance fields
.field active:Z

.field properties:Lcom/jirbo/adcolony/JSON$JSObject;

.field start_time_ms:J

.field update_thread:Lcom/jirbo/adcolony/Analytics$MonitorThread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sput-object p0, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    .line 32
    return-void
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_version"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 37
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    if-nez v1, :cond_0

    .line 41
    :try_start_0
    const-string v1, "analytics.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v1}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_session_times"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_session_times"

    new-instance v3, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v3}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "device_os"

    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "appver"

    invoke-virtual {v1, v2, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "device_id"

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "imei"

    sget-object v3, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "android_id"

    sget-object v3, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "device_type"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "app_id"

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v3

    iget-object v3, v3, Lcom/jirbo/adcolony/AdManager;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_plays"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_plays"

    invoke-virtual {v1, v2, v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_time"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "d_time"

    invoke-virtual {v1, v2, v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 67
    :cond_3
    iget-boolean v1, p0, Lcom/jirbo/adcolony/Analytics;->active:Z

    if-eqz v1, :cond_4

    .line 69
    const-string v1, "Activity monitor restarted."

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 72
    :cond_4
    iput-boolean v4, p0, Lcom/jirbo/adcolony/Analytics;->active:Z

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/Analytics;->start_time_ms:J

    .line 74
    const-string v1, "Activity monitor started."

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->update_thread:Lcom/jirbo/adcolony/Analytics$MonitorThread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->update_thread:Lcom/jirbo/adcolony/Analytics$MonitorThread;

    iput-boolean v4, v1, Lcom/jirbo/adcolony/Analytics$MonitorThread;->terminate:Z

    .line 77
    :cond_5
    new-instance v1, Lcom/jirbo/adcolony/Analytics$MonitorThread;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/Analytics$MonitorThread;-><init>(Lcom/jirbo/adcolony/Analytics;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/Analytics;->update_thread:Lcom/jirbo/adcolony/Analytics$MonitorThread;

    .line 78
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/jirbo/adcolony/Analytics;->update_thread:Lcom/jirbo/adcolony/Analytics$MonitorThread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 79
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Failed to load analytics.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method saveProperties()V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "analytics.properties"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->save(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Failed to save analytics.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateActiveStatus(Z)V
    .locals 8
    .param p1, "new_status"    # Z

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, "json_data":Ljava/lang/String;
    monitor-enter p0

    .line 100
    if-eqz p1, :cond_0

    .line 102
    :try_start_0
    sget-boolean v4, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->synchronizedSubmit()V

    .line 108
    :cond_0
    iget-boolean v4, p0, Lcom/jirbo/adcolony/Analytics;->active:Z

    if-ne v4, p1, :cond_2

    monitor-exit p0

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    if-eqz p1, :cond_3

    const-string v4, "User session started."

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 113
    :goto_1
    iput-boolean p1, p0, Lcom/jirbo/adcolony/Analytics;->active:Z

    .line 114
    iget-boolean v4, p0, Lcom/jirbo/adcolony/Analytics;->active:Z

    if-eqz v4, :cond_4

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/jirbo/adcolony/Analytics;->start_time_ms:J

    .line 117
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->clearCurPlays()V

    .line 118
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdManager;->startRefresh()V

    .line 119
    monitor-exit p0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 111
    :cond_3
    :try_start_1
    const-string v4, "User session finished."

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    .local v0, "end_time_ms":J
    iget-wide v4, p0, Lcom/jirbo/adcolony/Analytics;->start_time_ms:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 125
    .local v3, "seconds":I
    iget-object v4, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v5, "d_plays"

    iget-object v6, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "d_plays"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 126
    iget-object v4, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v5, "d_time"

    iget-object v6, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "d_time"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 127
    iget-object v4, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v5, "d_session_times"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/JSON$JSArray;

    new-instance v5, Lcom/jirbo/adcolony/JSON$JSNumber;

    int-to-long v6, v3

    invoke-direct {v5, v6, v7}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    .line 129
    iget-object v4, p0, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON()Ljava/lang/String;

    move-result-object v2

    .line 130
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v2, :cond_1

    new-instance v4, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;

    invoke-direct {v4, p0, v2}, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;-><init>(Lcom/jirbo/adcolony/Analytics;Ljava/lang/String;)V

    goto :goto_0
.end method
