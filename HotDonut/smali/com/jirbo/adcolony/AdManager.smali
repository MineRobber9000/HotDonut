.class Lcom/jirbo/adcolony/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdManager$Downloader;,
        Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;,
        Lcom/jirbo/adcolony/AdManager$VideoInfo;,
        Lcom/jirbo/adcolony/AdManager$ResourceGroup;,
        Lcom/jirbo/adcolony/AdManager$Resource;,
        Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;,
        Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    }
.end annotation


# static fields
.field static last_refresh_time_ms:J

.field static using_internal_storage:Z


# instance fields
.field activity:Landroid/app/Activity;

.field app_id:Ljava/lang/String;

.field app_version:Ljava/lang/String;

.field data_dir:Ljava/lang/String;

.field downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

.field recently_played:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile refreshing:Z

.field resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

.field storage_full:Z

.field terminated:Z

.field zone_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zone_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdManager$AdZoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jirbo/adcolony/AdManager;->last_refresh_time_ms:J

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->app_version:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;-><init>(Lcom/jirbo/adcolony/AdManager;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    .line 39
    new-instance v0, Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdManager$Downloader;-><init>(Lcom/jirbo/adcolony/AdManager;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdManager;->recently_played:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager;->activity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method static todaysDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1045
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1046
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method configure([Ljava/lang/String;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 75
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/jirbo/adcolony/AdManager;->app_id:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager;->setUpAdColonyFolder()V

    .line 85
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager;->load()V

    .line 88
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager;->startRefresh()V

    .line 89
    return-void
.end method

.method deleteUnusedFiles()V
    .locals 7

    .prologue
    .line 398
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "filenames":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 414
    :cond_0
    return-void

    .line 403
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 405
    .local v1, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 403
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_3
    const-string v5, "adc.txt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdManager$Downloader;->filenames:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting unused file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 412
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public findAdZoneInfo(ILjava/lang/String;)Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    .locals 6
    .param p1, "slot"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 518
    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    iget-object v4, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p1, v4, :cond_2

    .line 520
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 521
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v3

    .line 545
    :cond_1
    :goto_0
    return-object v1

    .line 525
    :cond_2
    iget-object v4, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    .local v2, "zone_id":Ljava/lang/String;
    iget-object v4, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 529
    .local v1, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->zone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 531
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 538
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v3

    .line 539
    goto :goto_0

    .line 544
    .end local v1    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ad for zone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is currently available."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    move-object v1, v3

    .line 545
    goto :goto_0
.end method

.method public findBannerZoneInfo(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;
    .locals 4
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v2, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 555
    .local v1, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "banner_zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->zone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    :cond_1
    check-cast v1, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    .line 565
    .end local v1    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :goto_0
    return-object v1

    .line 564
    :cond_2
    const-string v2, "No banner ads are currently available."

    invoke-static {v2}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 565
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findVideoZoneInfo()Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    .locals 5

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "found_video_zone":Z
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 487
    .local v2, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_zone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 489
    check-cast v3, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->hasLessRecentlyPlayedVideos()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    check-cast v2, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 510
    .end local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :goto_0
    return-object v2

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager;->recently_played:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 498
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 500
    .restart local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_zone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 502
    check-cast v3, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->hasLessRecentlyPlayedVideos()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    check-cast v2, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    goto :goto_0

    .line 509
    .end local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :cond_3
    const-string v3, "No video ads are currently available."

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 510
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findVideoZoneInfo(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    .locals 5
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v3, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 449
    .local v1, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->zone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video_zone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v1, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 457
    .end local v1    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :goto_0
    return-object v1

    .line 452
    .restart local v1    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists but is not a video zone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    move-object v1, v2

    .line 453
    goto :goto_0

    .line 456
    .end local v1    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such zone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    move-object v1, v2

    .line 457
    goto :goto_0
.end method

.method isVideoAvailable()Z
    .locals 7

    .prologue
    .line 465
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 467
    .local v2, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->type()Ljava/lang/String;

    move-result-object v5

    const-string v6, "video_zone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 469
    check-cast v4, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 470
    .local v4, "video_info":Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    iget-object v5, v4, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 472
    .local v3, "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->isReady()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 476
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    .end local v3    # "video":Lcom/jirbo/adcolony/AdManager$VideoInfo;
    .end local v4    # "video_info":Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method load()V
    .locals 10

    .prologue
    .line 163
    :try_start_0
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 212
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v7, "Loading zone.properties"

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 166
    const-string v7, "zone.properties"

    invoke-static {v7}, Lcom/jirbo/adcolony/JSON;->load(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    .line 168
    .local v3, "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v7, "version"

    invoke-virtual {v3, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "v1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    const-string v7, "Wrong zone.properties version, aborting load."

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v3    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "err":Ljava/lang/Exception;
    const-string v7, "Error loading ADC metadata (zone.properties):\n"

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 206
    .end local v1    # "err":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    const-string v8, "resource.properties"

    invoke-virtual {v7, v8}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v1

    .line 210
    .restart local v1    # "err":Ljava/lang/Exception;
    const-string v7, "Error loading resource.properties\n"

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v1    # "err":Ljava/lang/Exception;
    .restart local v3    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    :cond_2
    :try_start_2
    const-string v7, "zone_info"

    invoke-virtual {v3, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v6

    .line 175
    .local v6, "zones":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {v6}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v0

    .line 177
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 179
    invoke-virtual {v6, v2}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    .line 180
    .local v5, "zone":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v7, "type"

    invoke-virtual {v5, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "type":Ljava/lang/String;
    const-string v7, "video_zone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 183
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    new-instance v8, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_3
    const-string v7, "banner_zone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    new-instance v8, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;-><init>(Lcom/jirbo/adcolony/JSON$JSObject;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized zone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method queueResources(Lcom/jirbo/adcolony/JSON$JSObject;)V
    .locals 7
    .param p1, "json"    # Lcom/jirbo/adcolony/JSON$JSObject;

    .prologue
    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 378
    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    .line 379
    .local v3, "resource":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v5, "key"

    invoke-virtual {v3, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "key":Ljava/lang/String;
    const-string v5, "location"

    invoke-virtual {v3, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    invoke-virtual {v5, v2, v4}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "resource":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/AdManager$Downloader;->downloadAll()Z

    .line 384
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->missing_resources:Z

    .line 386
    const-string v5, "Saving resource.properties"

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 387
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    const-string v6, "resource.properties"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->save(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "err":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error queuing resources:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method runRefresh()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    .line 256
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdManager$Downloader;->downloadAll()Z

    .line 258
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v10

    if-nez v10, :cond_1

    .line 261
    const-wide/16 v10, 0x1f4

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v10

    if-nez v10, :cond_1

    .line 266
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    :goto_1
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v10

    if-nez v10, :cond_1

    .line 271
    const-wide/16 v10, 0x1388

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 273
    :goto_2
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->isConnected()Z

    move-result v10

    if-nez v10, :cond_1

    .line 275
    const-string v10, "Not connected to network."

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_3
    return-void

    .line 282
    :cond_1
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 284
    const-string v10, "No Zone IDs defined."

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_3

    .line 289
    :cond_2
    const-string v8, "http://www.adtilt.com/clients/skins/resource_json_iphone.json"

    .line 292
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Lcom/jirbo/adcolony/DataDownloader;->download(Ljava/lang/String;)[B

    move-result-object v4

    .line 293
    .local v4, "json_bytes":[B
    if-eqz v4, :cond_0

    array-length v10, v4

    if-le v10, v12, :cond_0

    .line 294
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v10}, Lcom/jirbo/adcolony/JSON;->parse(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v10

    const-string v11, "resources"

    invoke-virtual {v10, v11}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    .line 295
    .local v3, "json":Lcom/jirbo/adcolony/JSON$JSObject;
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/AdManager;->queueResources(Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v5, "new_ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jirbo/adcolony/AdManager$AdZoneInfo;>;"
    const/4 v9, 0x0

    .local v9, "zone_index":I
    :goto_4
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v6, "query":Ljava/lang/StringBuilder;
    const-string v10, "&app_version="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->app_version:Ljava/lang/String;

    invoke-static {v10}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v10, "&dev_id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->getDeviceID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v10, "&appzid="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->app_id:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v10, "&network_status="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->status()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v10, "&zid="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->zone_ids:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v10, "&network="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    sget-object v10, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v10, "&language="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    sget-object v10, Lcom/jirbo/adcolony/AdColony;->language:Ljava/lang/String;

    invoke-static {v10}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v10, "&imei="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v10, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    invoke-static {v10}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v10, "&android_id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    sget-object v10, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    invoke-static {v10}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://www.adtilt.com/clients/index.php?section=serve&action=adConfig"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "dinosaur"

    invoke-static {v10, v11}, Lcom/jirbo/adcolony/URLSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    invoke-static {v8}, Lcom/jirbo/adcolony/DataDownloader;->download(Ljava/lang/String;)[B

    move-result-object v4

    .line 326
    if-eqz v4, :cond_0

    .line 327
    array-length v10, v4

    if-ge v10, v12, :cond_3

    .line 329
    const-string v10, "*** Received empty JSON ***"

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 332
    :cond_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 340
    .local v7, "raw_json":Ljava/lang/String;
    invoke-static {v7}, Lcom/jirbo/adcolony/JSON;->parse(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_0

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    :try_start_3
    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 348
    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v10

    invoke-static {v10}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->create_from(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    move-result-object v2

    .line 349
    .local v2, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 346
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 352
    .end local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "err":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing zone info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_3

    .line 301
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 361
    .end local v1    # "i":I
    .end local v6    # "query":Ljava/lang/StringBuilder;
    .end local v7    # "raw_json":Ljava/lang/String;
    :cond_6
    iput-object v5, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    .line 364
    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdManager$Downloader;->downloadAll()Z

    .line 367
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager;->save()V

    .line 369
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdManager;->deleteUnusedFiles()V

    goto/16 :goto_3

    .line 261
    .end local v3    # "json":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v4    # "json_bytes":[B
    .end local v5    # "new_ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jirbo/adcolony/AdManager$AdZoneInfo;>;"
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "zone_index":I
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 266
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 271
    :catch_3
    move-exception v10

    goto/16 :goto_2
.end method

.method save()V
    .locals 7

    .prologue
    .line 420
    :try_start_0
    const-string v5, "Saving zone.properties"

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logDebug(Ljava/lang/String;)V

    .line 422
    new-instance v3, Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-direct {v3}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    .line 423
    .local v3, "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    const-string v5, "version"

    const-string v6, "v1"

    invoke-virtual {v3, v5, v6}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v4, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v4}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    .line 426
    .local v4, "zones":Lcom/jirbo/adcolony/JSON$JSArray;
    const-string v5, "zone_info"

    invoke-virtual {v3, v5, v4}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 428
    iget-object v5, p0, Lcom/jirbo/adcolony/AdManager;->zone_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;

    .line 430
    .local v2, "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdManager$AdZoneInfo;->toJSObject()Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/JSON$JSArray;->add(Lcom/jirbo/adcolony/JSON$JSObject;)Lcom/jirbo/adcolony/JSON$JSArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/jirbo/adcolony/AdManager$AdZoneInfo;
    .end local v3    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    .end local v4    # "zones":Lcom/jirbo/adcolony/JSON$JSArray;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "err":Ljava/lang/Exception;
    const-string v5, "Error saving zone.properties."

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 439
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 433
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "properties":Lcom/jirbo/adcolony/JSON$JSObject;
    .restart local v4    # "zones":Lcom/jirbo/adcolony/JSON$JSArray;
    :cond_0
    :try_start_1
    const-string v5, "zone.properties"

    invoke-virtual {v3, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->save(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method setUpAdColonyFolder()V
    .locals 12

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "storage_state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 102
    const-string v9, "Storing ADC data externally."

    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/.adc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    .line 104
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 107
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/jirbo/adcolony/AdManager;->activity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/.adc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/jirbo/adcolony/Dir;->delete(Ljava/io/File;)Z

    .line 109
    const/4 v9, 0x0

    sput-boolean v9, Lcom/jirbo/adcolony/AdManager;->using_internal_storage:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v8    # "storage_state":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v9, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 131
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 132
    .local v2, "block_size":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 133
    .local v0, "available_blocks":J
    mul-long v4, v0, v2

    .line 134
    .local v4, "bytes_free":J
    const-wide/32 v9, 0x1400000

    cmp-long v9, v4, v9

    if-gez v9, :cond_0

    .line 136
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/jirbo/adcolony/AdManager;->storage_full:Z

    .line 137
    const-string v9, "Running out of storage space on device - no new video downloads."

    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v0    # "available_blocks":J
    .end local v2    # "block_size":J
    .end local v4    # "bytes_free":J
    .end local v7    # "stat":Landroid/os/StatFs;
    :cond_0
    :goto_1
    return-void

    .line 113
    .restart local v8    # "storage_state":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v9, "Storing ADC data internally."

    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/.adc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    .line 115
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/jirbo/adcolony/AdManager;->data_dir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 117
    const/4 v9, 0x1

    sput-boolean v9, Lcom/jirbo/adcolony/AdManager;->using_internal_storage:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 120
    .end local v8    # "storage_state":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 122
    .local v6, "err":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception while inspecting filesystem:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v6    # "err":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 142
    .restart local v6    # "err":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception during StatFs:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method startRefresh()V
    .locals 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    monitor-enter v1

    .line 222
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jirbo/adcolony/AdManager;->last_refresh_time_ms:J

    .line 223
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdManager;->refreshing:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 251
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->ads_disabled:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdManager;->refreshing:Z

    .line 226
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdManager$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdManager$1;-><init>(Lcom/jirbo/adcolony/AdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdManager;->terminated:Z

    .line 153
    return-void
.end method
