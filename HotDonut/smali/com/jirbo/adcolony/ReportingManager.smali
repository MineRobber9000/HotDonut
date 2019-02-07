.class Lcom/jirbo/adcolony/ReportingManager;
.super Ljava/lang/Object;
.source "ReportingManager.java"


# static fields
.field static pending_entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/PendingEntry;",
            ">;"
        }
    .end annotation
.end field

.field static properties:Lcom/jirbo/adcolony/JSON$JSObject;

.field static volatile submitting_entries:Z

.field static volatile urgent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static configure()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->loadProperties()V

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 34
    return-void
.end method

.method static flush()V
    .locals 2

    .prologue
    .line 116
    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 123
    :goto_1
    return-void

    .line 120
    :cond_0
    sget-boolean v0, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 123
    monitor-exit v1

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static handleResult(Ljava/lang/String;IZZ)Z
    .locals 7
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "playcount"    # I
    .param p2, "for_vc"    # Z
    .param p3, "vc_client_side"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 400
    const-string v5, "ERROR"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    :goto_0
    return v4

    .line 402
    :cond_0
    const-string v5, "Success"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    const/4 v2, 0x1

    .line 406
    .local v2, "success":Z
    :goto_1
    const-string v5, "{|V4VC|}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "i1":I
    if-eq v0, v6, :cond_7

    .line 409
    const-string v5, "{|V4VC|}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, "i2":I
    if-eq v1, v0, :cond_1

    .line 412
    add-int/lit8 v5, v0, 0x8

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 413
    const-string v5, "vc_failure"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 416
    const-string v5, "VC failed."

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 417
    sget-object v5, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "i2":I
    :cond_1
    :goto_2
    move v4, v2

    .line 467
    goto :goto_0

    .end local v0    # "i1":I
    .end local v2    # "success":Z
    :cond_2
    move v2, v4

    .line 402
    goto :goto_1

    .line 421
    .restart local v0    # "i1":I
    .restart local v1    # "i2":I
    .restart local v2    # "success":Z
    :cond_3
    if-eqz p3, :cond_4

    .line 424
    const-string v4, "Client-side VC success!."

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 425
    sget-object v4, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 433
    :cond_4
    invoke-static {p0}, Lcom/jirbo/adcolony/DataDownloader;->download(Ljava/lang/String;)[B

    move-result-object v3

    .line 434
    .local v3, "vc_data":[B
    if-nez v3, :cond_5

    .line 436
    const-string v5, "No response from bank server."

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 437
    sget-object v5, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 441
    :cond_5
    new-instance p0, Ljava/lang/String;

    .end local p0    # "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    .line 442
    .restart local p0    # "result":Ljava/lang/String;
    const-string v5, "vc_success"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 444
    const-string v5, "VC failed."

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 445
    sget-object v5, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 449
    :cond_6
    const-string v4, "VC success!."

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 450
    sget-object v4, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 460
    .end local v1    # "i2":I
    .end local v3    # "vc_data":[B
    :cond_7
    if-eqz p2, :cond_1

    .line 462
    const-string v5, "Expected |V4VC| in result, got:"

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 463
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static loadProperties()V
    .locals 3

    .prologue
    .line 505
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    if-nez v1, :cond_0

    .line 509
    :try_start_0
    const-string v1, "reporting.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/JSON;->load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v1

    sput-object v1, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    .line 510
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v2, "impression"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    .line 513
    const-string v1, "There are urgent V4VC impressions to deliver."

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .local v0, "err":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 516
    .end local v0    # "err":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 518
    .restart local v0    # "err":Ljava/lang/Exception;
    const-string v1, "Failed to load reporting.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 519
    new-instance v1, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v1}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    sput-object v1, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    goto :goto_0
.end method

.method static logVideoBuyClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 84
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 87
    .local v0, "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v3, Lcom/jirbo/adcolony/PendingEntry;

    const-string v4, "buy_click"

    iget-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-boolean v1, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 89
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const-string v1, "ext_tracking_download"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->track(Ljava/lang/String;)V

    .line 91
    return-void

    .line 89
    .end local v0    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static logVideoContinueClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 95
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 98
    .local v0, "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v3, Lcom/jirbo/adcolony/PendingEntry;

    const-string v4, "continue_click"

    iget-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-boolean v1, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 100
    :cond_0
    monitor-exit v2

    .line 101
    return-void

    .line 100
    .end local v0    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static logVideoImpression(Lcom/jirbo/adcolony/AdColonyVideoAd;Z)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;
    .param p1, "is_replay"    # Z

    .prologue
    const/4 v0, 0x1

    .line 59
    sget-object v3, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 62
    .local v0, "for_vc":Z
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 65
    .local v1, "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v4, Lcom/jirbo/adcolony/PendingEntry;

    const-string v5, "impression"

    invoke-direct {v4, v5, p0, v1, v0}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-boolean v2, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 67
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const-string v2, "ext_tracking_impression"

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideoAd;->track(Ljava/lang/String;)V

    .line 69
    return-void

    .line 61
    .end local v0    # "for_vc":Z
    .end local v1    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static logVideoInfoClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 73
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 76
    .local v0, "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v3, Lcom/jirbo/adcolony/PendingEntry;

    const-string v4, "info_click"

    iget-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-boolean v1, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 78
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const-string v1, "ext_tracking_info"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->track(Ljava/lang/String;)V

    .line 80
    return-void

    .line 78
    .end local v0    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static logVideoRequest(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 38
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v2, Lcom/jirbo/adcolony/PendingEntry;

    const-string v3, "request"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static logVideoStart(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 6
    .param p0, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 48
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 51
    .local v0, "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v3, Lcom/jirbo/adcolony/PendingEntry;

    const-string v4, "start"

    iget-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    invoke-direct {v3, v4, p0, v0, v5}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-boolean v1, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 53
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string v1, "ext_tracking_start"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->track(Ljava/lang/String;)V

    .line 55
    return-void

    .line 53
    .end local v0    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static processExtTracking()V
    .locals 8

    .prologue
    .line 472
    sget-object v6, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "ext_tracking_url"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .line 473
    .local v5, "urls":Lcom/jirbo/adcolony/JSON$JSObject;
    if-nez v5, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 477
    sget-object v6, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "ext_tracking_url"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->remove(Ljava/lang/String;)V

    .line 478
    new-instance v2, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v2}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    .line 479
    .local v2, "remaining_urls":Lcom/jirbo/adcolony/JSON$JSArray;
    const/4 v0, 0x0

    .line 481
    .local v0, "error":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 483
    invoke-virtual {v5, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 485
    .local v3, "result":[B
    if-nez v0, :cond_2

    .line 487
    invoke-static {v4}, Lcom/jirbo/adcolony/DataDownloader;->download(Ljava/lang/String;)[B

    move-result-object v3

    .line 489
    :cond_2
    if-nez v3, :cond_3

    .line 491
    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSArray;

    .line 492
    const/4 v0, 0x1

    .line 481
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    .end local v3    # "result":[B
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 498
    const-string v6, "ADC track failed - will retry later."

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 499
    sget-object v6, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "ext_tracking_url"

    invoke-virtual {v6, v7, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_0
.end method

.method static processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "modified_type"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-object v14, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v10

    .line 314
    .local v10, "submission":Lcom/jirbo/adcolony/JSON$JSObject;
    if-nez v10, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->isFinishing()Z

    move-result v14

    if-nez v14, :cond_0

    .line 318
    const-string v14, "ad_col_version"

    const-string v15, "1.9.11"

    invoke-virtual {v10, v14, v15}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v14, "time_offset"

    invoke-static {}, Lcom/jirbo/adcolony/PendingEntry;->timeOffset()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v14, "app_id"

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v15

    iget-object v15, v15, Lcom/jirbo/adcolony/AdManager;->app_id:Ljava/lang/String;

    invoke-virtual {v10, v14, v15}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v14, "device_id"

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->getDeviceID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v14, "network_type"

    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->status()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v14, "tracking_type"

    move-object/from16 v0, p0

    invoke-virtual {v10, v14, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v10}, Lcom/jirbo/adcolony/JSON$JSObject;->toJSON()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "json_data":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&adcol_version="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "1.9.11"

    invoke-static {v15}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&dev_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->getDeviceID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&imei="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    invoke-static {v15}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 330
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&android_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    invoke-static {v15}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&hash="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "dinosaur"

    invoke-static {v8, v15}, Lcom/jirbo/adcolony/URLSigner;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    const-string v14, "is_vc_zone"

    invoke-virtual {v10, v14}, Lcom/jirbo/adcolony/JSON$JSObject;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .line 334
    .local v5, "for_vc_zone":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "YES"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v4, 0x1

    .line 335
    .local v4, "for_vc":Z
    :goto_1
    if-eqz v4, :cond_2

    const-string v14, "impression"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    sput-boolean v14, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    .line 337
    :cond_2
    const-string v14, "vc_client_side"

    invoke-virtual {v10, v14}, Lcom/jirbo/adcolony/JSON$JSObject;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v12

    .line 338
    .local v12, "vc_client_side_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "YES"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v11, 0x1

    .line 346
    .local v11, "vc_client_side":Z
    :goto_2
    const/4 v2, 0x0

    .line 347
    .local v2, "count":I
    const-string v14, "request"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 349
    const/4 v2, 0x1

    .line 369
    :cond_3
    :goto_3
    const-string v14, "impression"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v4, 0x0

    .line 376
    :cond_4
    const-string v14, "text/json"

    move-object/from16 v0, p1

    invoke-static {v0, v8, v14}, Lcom/jirbo/adcolony/HTTPRequest;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "result":Ljava/lang/String;
    invoke-static {v9, v2, v4, v11}, Lcom/jirbo/adcolony/ReportingManager;->handleResult(Ljava/lang/String;IZZ)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 384
    sget-object v14, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->remove(Ljava/lang/String;)V

    .line 385
    if-eqz v4, :cond_0

    const/4 v14, 0x0

    sput-boolean v14, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    goto/16 :goto_0

    .line 334
    .end local v2    # "count":I
    .end local v4    # "for_vc":Z
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "vc_client_side":Z
    .end local v12    # "vc_client_side_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 338
    .restart local v4    # "for_vc":Z
    .restart local v12    # "vc_client_side_obj":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 355
    .restart local v2    # "count":I
    .restart local v11    # "vc_client_side":Z
    :cond_7
    :try_start_0
    const-string v14, "zone_data"

    invoke-virtual {v10, v14}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jirbo/adcolony/JSON$JSObject;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 357
    .local v13, "zone_info":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v14, "adinfo"

    invoke-virtual {v13, v14}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jirbo/adcolony/JSON$JSObject;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/JSON$JSObject;

    .line 359
    .local v1, "ad_info":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v14, "count"

    invoke-virtual {v1, v14}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    add-int/2addr v2, v14

    goto :goto_4

    .line 363
    .end local v1    # "ad_info":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "zone_info":Lcom/jirbo/adcolony/JSON$JSObject;
    :catch_0
    move-exception v3

    .line 365
    .local v3, "err":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_3

    .line 390
    .end local v3    # "err":Ljava/lang/Exception;
    .restart local v9    # "result":Ljava/lang/String;
    :cond_9
    const-string v14, "ADC event submission failed."

    invoke-static {v14}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 391
    invoke-static/range {p1 .. p1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 392
    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 393
    sget-object v14, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->remove(Ljava/lang/String;)V

    .line 394
    if-eqz v4, :cond_0

    const/4 v14, 0x0

    sput-boolean v14, Lcom/jirbo/adcolony/ReportingManager;->urgent:Z

    goto/16 :goto_0
.end method

.method static saveProperties()V
    .locals 4

    .prologue
    .line 526
    sget-object v2, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    monitor-enter v2

    .line 531
    :try_start_0
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v3, "reporting.properties"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/JSON$JSObject;->save(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .local v0, "err":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 538
    return-void

    .line 533
    .end local v0    # "err":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 535
    .restart local v0    # "err":Ljava/lang/Exception;
    const-string v1, "Failed to save reporting.properties"

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static submit()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/ReportingManager$1;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ReportingManager$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static submitTrackingURL(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    new-instance v2, Lcom/jirbo/adcolony/PendingEntry;

    const-string v3, "ext_tracking_url"

    invoke-direct {v2, v3, p0}, Lcom/jirbo/adcolony/PendingEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-boolean v0, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synchronizedSubmit()V
    .locals 2

    .prologue
    .line 140
    sget-object v1, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-boolean v0, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->submit()V

    .line 143
    :cond_0
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
