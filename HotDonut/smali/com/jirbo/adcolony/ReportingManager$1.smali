.class final Lcom/jirbo/adcolony/ReportingManager$1;
.super Ljava/lang/Object;
.source "ReportingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ReportingManager;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 212
    :try_start_0
    sget-object v9, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    :try_start_1
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 216
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    sget-object v10, Lcom/jirbo/adcolony/ReportingManager;->pending_entries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/PendingEntry;

    .line 218
    .local v1, "entry":Lcom/jirbo/adcolony/PendingEntry;
    iget-object v8, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    const-string v10, "ext_tracking_url"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v11}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 221
    :cond_0
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->url:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->add(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSArray;

    .line 224
    :cond_1
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v11}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 225
    :cond_2
    sget-object v8, Lcom/jirbo/adcolony/ReportingManager;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    iget-object v10, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v4

    .line 227
    .local v4, "props":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v8, "zone_data"

    invoke-virtual {v4, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "zone_data"

    new-instance v10, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v10}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    invoke-virtual {v4, v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 229
    :cond_3
    const-string v8, "zone_data"

    invoke-virtual {v4, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v7

    .line 231
    .local v7, "zone_data":Lcom/jirbo/adcolony/JSON$JSObject;
    iget-object v6, v1, Lcom/jirbo/adcolony/PendingEntry;->zone_id:Ljava/lang/String;

    .line 232
    .local v6, "zid":Ljava/lang/String;
    iget-object v0, v1, Lcom/jirbo/adcolony/PendingEntry;->ad_id:Ljava/lang/String;

    .line 234
    .local v0, "aid":Ljava/lang/String;
    iget-object v8, v1, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    const-string v10, "request"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 235
    .local v3, "is_request":Z
    iget-object v8, v1, Lcom/jirbo/adcolony/PendingEntry;->zone_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 237
    new-instance v8, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v8}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    invoke-virtual {v7, v6, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 238
    if-eqz v3, :cond_5

    .line 240
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "count"

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSNumber;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 241
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "times"

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v11}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 255
    :cond_4
    :goto_1
    if-eqz v3, :cond_8

    .line 257
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .line 270
    .local v5, "times":Lcom/jirbo/adcolony/JSON$JSObject;
    :goto_2
    const-string v8, "count"

    const-string v10, "count"

    invoke-virtual {v5, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-virtual {v5, v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;J)V

    .line 271
    const-string v8, "times"

    invoke-virtual {v5, v8}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    new-instance v10, Lcom/jirbo/adcolony/JSON$JSString;

    iget-object v11, v1, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/jirbo/adcolony/JSON$JSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;

    goto/16 :goto_0

    .line 273
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "entry":Lcom/jirbo/adcolony/PendingEntry;
    .end local v3    # "is_request":Z
    .end local v4    # "props":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v5    # "times":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v6    # "zid":Ljava/lang/String;
    .end local v7    # "zone_data":Lcom/jirbo/adcolony/JSON$JSObject;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    :catch_0
    move-exception v2

    .line 298
    .local v2, "err":Ljava/lang/Exception;
    const-string v8, "Reporting failed to submit"

    invoke-static {v8}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 302
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_3
    const/4 v8, 0x0

    sput-boolean v8, Lcom/jirbo/adcolony/ReportingManager;->submitting_entries:Z

    .line 303
    return-void

    .line 245
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v1    # "entry":Lcom/jirbo/adcolony/PendingEntry;
    .restart local v3    # "is_request":Z
    .restart local v4    # "props":Lcom/jirbo/adcolony/JSON$JSObject;
    .restart local v6    # "zid":Ljava/lang/String;
    .restart local v7    # "zone_data":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_5
    :try_start_3
    iget-boolean v8, v1, Lcom/jirbo/adcolony/PendingEntry;->for_vc:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "is_vc_zone"

    const-string v11, "YES"

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_4
    iget-boolean v8, v1, Lcom/jirbo/adcolony/PendingEntry;->vc_client_side:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "vc_client_side"

    const-string v11, "YES"

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_5
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v11}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "is_vc_zone"

    const-string v11, "NO"

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 249
    :cond_7
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "vc_client_side"

    const-string v11, "NO"

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 261
    :cond_8
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 263
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    new-instance v10, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v10}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    invoke-virtual {v8, v0, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 264
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "count"

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSNumber;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Lcom/jirbo/adcolony/JSON$JSNumber;-><init>(J)V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 265
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "times"

    new-instance v11, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v11}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    invoke-virtual {v8, v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 268
    :cond_9
    invoke-virtual {v7, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    const-string v10, "adinfo"

    invoke-virtual {v8, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .restart local v5    # "times":Lcom/jirbo/adcolony/JSON$JSObject;
    goto/16 :goto_2

    .line 273
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "entry":Lcom/jirbo/adcolony/PendingEntry;
    .end local v3    # "is_request":Z
    .end local v4    # "props":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v5    # "times":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v6    # "zid":Ljava/lang/String;
    .end local v7    # "zone_data":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_a
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :try_start_4
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "request"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidRequestTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v8, "start"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidStartTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v8, "info_click"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidInfoTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v8, "buy_click"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidDownloadTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v8, "continue_click"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidContinueTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v8, "impression"

    const-string v9, "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

    invoke-static {v8, v9}, Lcom/jirbo/adcolony/ReportingManager;->processVideoEvents(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->processExtTracking()V

    .line 294
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->saveProperties()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3
.end method
