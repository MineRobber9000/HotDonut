.class public final Lcom/jirbo/adcolony/AdColonyVideoAd;
.super Ljava/lang/Object;
.source "AdColonyVideoAd.java"


# static fields
.field static vc_amount:I

.field static vc_name:Ljava/lang/String;

.field static volatile video_playing:Z


# instance fields
.field for_vc:Z

.field listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

.field tracking_rand:Ljava/lang/String;

.field tracking_timestamp:Ljava/lang/String;

.field video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

.field zone_id:Ljava/lang/String;

.field zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager;->findVideoZoneInfo()Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 38
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->zone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getV4VCAmount()I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->refreshZoneInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardAmount()I

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getV4VCAvailable()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->refreshZoneInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->V4VCAvailable()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getV4VCName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->refreshZoneInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardName()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "undefined"

    goto :goto_0
.end method

.method public getV4VCPlayCap()I
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->refreshZoneInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcPlaycap()I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getV4VCPlays()I
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->refreshZoneInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurVCPlays()I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager;->isVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public offerV4VC(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyVideoListener;
    .param p2, "show_result"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->getV4VCAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_name:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardAmount()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_amount:I

    .line 65
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    .line 66
    sput-boolean p2, Lcom/jirbo/adcolony/AdColony;->vc_post_popup:Z

    .line 67
    new-instance v0, Lcom/jirbo/adcolony/AdColonyDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/jirbo/adcolony/AdColonyDialog;->pre_popup:I

    invoke-direct {v0, v1, v2, p0}, Lcom/jirbo/adcolony/AdColonyDialog;-><init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/jirbo/adcolony/AdColonyDialog;

    const-string v1, ""

    sget v2, Lcom/jirbo/adcolony/AdColonyDialog;->maxed_out:I

    invoke-direct {v0, v1, v2, p0}, Lcom/jirbo/adcolony/AdColonyDialog;-><init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyVideoAd;)V

    goto :goto_0
.end method

.method onFinished(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_playing:Z

    .line 199
    if-eqz p1, :cond_1

    .line 201
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->awardVirtualCurrency()V

    .line 204
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->vc_post_popup:Z

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->on_vc_success_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    invoke-interface {v0}, Lcom/jirbo/adcolony/AdColonyVideoListener;->onAdColonyVideoFinished()V

    goto :goto_0
.end method

.method refreshZoneInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdManager;->findVideoZoneInfo(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 193
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "placeholder"    # Ljava/lang/String;
    .param p3, "new_value"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 264
    :cond_0
    return-object p1
.end method

.method public show(Lcom/jirbo/adcolony/AdColonyVideoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyVideoListener;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z

    move-result v0

    return v0
.end method

.method show(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z
    .locals 8
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyVideoListener;
    .param p2, "for_vc"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    .line 101
    iput-boolean p2, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->for_vc:Z

    .line 103
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 105
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager;->findVideoZoneInfo()Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    .line 112
    :goto_0
    sget-boolean v3, Lcom/jirbo/adcolony/AdColony;->ads_disabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_playing:Z

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->chooseVideo()Lcom/jirbo/adcolony/AdManager$VideoInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    .line 116
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->updateCurInterval()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->tracking_timestamp:Ljava/lang/String;

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->tracking_rand:Ljava/lang/String;

    .line 124
    invoke-static {p0}, Lcom/jirbo/adcolony/ReportingManager;->logVideoRequest(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 127
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->getCurPlays()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->setCurPlays(I)V

    .line 130
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_playing:Z

    .line 131
    invoke-static {p0}, Lcom/jirbo/adcolony/ReportingManager;->logVideoStart(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 132
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    sput-object p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 134
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    .line 135
    sput v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    .line 136
    sput v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    .line 137
    sput v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    .line 138
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->is_replay:Z

    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/jirbo/adcolony/AdColonyVideoListener;->onAdColonyVideoStarted()V

    .line 143
    :cond_0
    sget-boolean v2, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    return v1

    .line 109
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/AdManager;->findVideoZoneInfo(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    goto/16 :goto_0

    .line 149
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 158
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    move v1, v2

    .line 159
    goto :goto_1
.end method

.method public showV4VC(Lcom/jirbo/adcolony/AdColonyVideoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyVideoListener;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->showV4VC(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z

    move-result v0

    return v0
.end method

.method public showV4VC(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z
    .locals 2
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyVideoListener;
    .param p2, "show_result"    # Z

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-boolean p2, Lcom/jirbo/adcolony/AdColony;->vc_post_popup:Z

    .line 85
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->getV4VCAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    .line 88
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_name:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_info:Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager$VideoZoneInfo;->vcRewardAmount()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_amount:I

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z

    move-result v0

    goto :goto_0
.end method

.method track(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdManager$VideoInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/JSON$JSObject;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v2

    .line 245
    .local v2, "urls":Lcom/jirbo/adcolony/JSON$JSObject;
    if-nez v2, :cond_1

    .line 254
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/jirbo/adcolony/JSON$JSObject;->count()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 249
    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/JSON$JSObject;->get(I)Lcom/jirbo/adcolony/JSON$JSObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/JSON$JSObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "url":Ljava/lang/String;
    const-string v3, "[ADCOLONY_TIMESTAMP]"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->tracking_timestamp:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4}, Lcom/jirbo/adcolony/AdColonyVideoAd;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    const-string v3, "[ADCOLONY_RAND]"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideoAd;->tracking_rand:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v4}, Lcom/jirbo/adcolony/AdColonyVideoAd;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->submitTrackingURL(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
