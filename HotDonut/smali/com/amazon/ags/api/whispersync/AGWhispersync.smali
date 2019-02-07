.class public Lcom/amazon/ags/api/whispersync/AGWhispersync;
.super Ljava/lang/Object;
.source "AGWhispersync.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasNewMultiFileGameData()Z
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 148
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 150
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->hasNewMultiFileGameData()Z

    move-result v2

    return v2
.end method

.method public static requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/RevertBlobCallback;

    .prologue
    .line 107
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 108
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 110
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V

    .line 111
    return-void
.end method

.method public static requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    .prologue
    .line 120
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 121
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 123
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V

    .line 124
    return-void
.end method

.method public static setFilter(Ljava/io/FilenameFilter;)V
    .locals 2
    .param p0, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 136
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 137
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 139
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->setFilter(Ljava/io/FilenameFilter;)V

    .line 140
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .prologue
    .line 26
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 27
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 29
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    .line 30
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    .prologue
    .line 40
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 41
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 43
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V

    .line 44
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .prologue
    .line 53
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 54
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 56
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    .line 57
    return-void
.end method

.method public static synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;

    .prologue
    .line 67
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 68
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 70
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V

    .line 71
    return-void
.end method

.method public static synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    .prologue
    .line 81
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 82
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 84
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V

    .line 85
    return-void
.end method

.method public static synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
    .locals 2
    .param p0, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    .prologue
    .line 95
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 96
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 98
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V

    .line 99
    return-void
.end method

.method public static unpackNewMultiFileGameData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 160
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;

    move-result-object v1

    .line 162
    .local v1, "whisperSyncClient":Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    invoke-interface {v1}, Lcom/amazon/ags/api/whispersync/WhisperSyncClient;->unpackNewMultiFileGameData()V

    .line 163
    return-void
.end method
