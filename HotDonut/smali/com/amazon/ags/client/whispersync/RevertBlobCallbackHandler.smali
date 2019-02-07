.class public Lcom/amazon/ags/client/whispersync/RevertBlobCallbackHandler;
.super Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;
.source "RevertBlobCallbackHandler.java"


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/RevertBlobCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertBlobCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/RevertCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/RevertBlobCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertBlobCallback;

    .line 33
    return-void
.end method


# virtual methods
.method protected processDownloadedData([B)Z
    .locals 1
    .param p1, "gameData"    # [B

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/RevertBlobCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertBlobCallback;

    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/RevertBlobCallback;->onRevertedGameData([B)Z

    move-result v0

    return v0
.end method
