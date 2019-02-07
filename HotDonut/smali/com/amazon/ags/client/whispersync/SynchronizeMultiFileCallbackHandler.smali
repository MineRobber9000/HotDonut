.class public Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;
.super Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;
.source "SynchronizeMultiFileCallbackHandler.java"


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .line 32
    return-void
.end method


# virtual methods
.method protected final processDownloadedData([B)Z
    .locals 1
    .param p1, "gameData"    # [B

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    invoke-interface {v0}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;->onNewGameData()V

    .line 42
    const/4 v0, 0x0

    return v0
.end method
