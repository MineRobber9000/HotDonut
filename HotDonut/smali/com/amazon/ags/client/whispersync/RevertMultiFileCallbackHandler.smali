.class public Lcom/amazon/ags/client/whispersync/RevertMultiFileCallbackHandler;
.super Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;
.source "RevertMultiFileCallbackHandler.java"


# instance fields
.field private final callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/RevertCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/RevertMultiFileCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    .line 32
    return-void
.end method


# virtual methods
.method protected processDownloadedData([B)Z
    .locals 1
    .param p1, "gameData"    # [B

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/RevertMultiFileCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;->onRevertedGameData()V

    .line 37
    const/4 v0, 0x0

    return v0
.end method
