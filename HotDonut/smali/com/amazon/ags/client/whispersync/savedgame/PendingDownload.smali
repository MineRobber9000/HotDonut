.class public Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
.super Ljava/lang/Object;
.source "PendingDownload.java"


# instance fields
.field private final data:[B

.field private final summary:Lcom/amazon/ags/client/whispersync/GameSummary;


# direct methods
.method public constructor <init>([BLcom/amazon/ags/client/whispersync/GameSummary;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->data:[B

    .line 22
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->summary:Lcom/amazon/ags/client/whispersync/GameSummary;

    .line 23
    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->data:[B

    return-object v0
.end method

.method public final getSummary()Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->summary:Lcom/amazon/ags/client/whispersync/GameSummary;

    return-object v0
.end method
