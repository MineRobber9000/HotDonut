.class Lcom/jirbo/adcolony/PendingEntry;
.super Ljava/lang/Object;
.source "ReportingManager.java"


# instance fields
.field ad_id:Ljava/lang/String;

.field for_vc:Z

.field time:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field vc_client_side:Z

.field video_id:Ljava/lang/String;

.field zone_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyVideoAd;Lcom/jirbo/adcolony/AdManager$VideoInfo;Z)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;
    .param p3, "video_info"    # Lcom/jirbo/adcolony/AdManager$VideoInfo;
    .param p4, "for_vc"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    .line 567
    iput-boolean p4, p0, Lcom/jirbo/adcolony/PendingEntry;->for_vc:Z

    .line 569
    iget-object v3, p2, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 570
    .local v3, "zone_info":Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;
    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->zone_id:Ljava/lang/String;

    .line 571
    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->clientSideVC()Z

    move-result v4

    iput-boolean v4, p0, Lcom/jirbo/adcolony/PendingEntry;->vc_client_side:Z

    .line 573
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 574
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 575
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;

    .line 577
    if-eqz p3, :cond_2

    .line 579
    invoke-virtual {p3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->adID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->ad_id:Ljava/lang/String;

    .line 581
    invoke-virtual {p3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    .line 582
    iget-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 585
    .local v1, "i":I
    :try_start_0
    iget-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 586
    .local v2, "version":I
    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v2    # "version":I
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->time:Ljava/lang/String;

    .line 592
    :cond_1
    invoke-virtual {p3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->videoURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    .line 593
    iget-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jirbo/adcolony/PendingEntry;->video_id:Ljava/lang/String;

    .line 595
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 588
    .restart local v1    # "i":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    .line 561
    iput-object p2, p0, Lcom/jirbo/adcolony/PendingEntry;->url:Ljava/lang/String;

    .line 562
    return-void
.end method

.method static timeOffset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 546
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jirbo/adcolony/PendingEntry;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/PendingEntry;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
