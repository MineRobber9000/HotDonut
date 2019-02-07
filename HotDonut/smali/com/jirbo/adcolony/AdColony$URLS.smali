.class public Lcom/jirbo/adcolony/AdColony$URLS;
.super Ljava/lang/Object;
.source "AdColony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLS"
.end annotation


# static fields
.field static final app_stats_tracking:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking&action=appTrack"

.field static final combined_json:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=serve&action=adConfig"

.field static final resource_json:Ljava/lang/String; = "http://www.adtilt.com/clients/skins/resource_json_iphone.json"

.field static final server_base:Ljava/lang/String; = "http://www.adtilt.com/clients/"

.field static final track_base:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action="

.field static final track_video_continue:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidContinueTrack"

.field static final track_video_download:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidDownloadTrack"

.field static final track_video_impression:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidImpressionTrack"

.field static final track_video_info:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidInfoTrack"

.field static final track_video_request:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidRequestTrack"

.field static final track_video_skip:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidSkipTrack"

.field static final track_video_start:Ljava/lang/String; = "http://www.adtilt.com/clients/index.php?section=tracking_1_9_6&action=acVidStartTrack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
