.class public interface abstract Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
.super Ljava/lang/Object;
.source "WhisperSyncClient.java"


# virtual methods
.method public abstract hasNewMultiFileGameData()Z
.end method

.method public abstract requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V
.end method

.method public abstract requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
.end method

.method public abstract setFilter(Ljava/io/FilenameFilter;)V
.end method

.method public abstract synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
.end method

.method public abstract synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
.end method

.method public abstract synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
.end method

.method public abstract synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V
.end method

.method public abstract synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
.end method

.method public abstract synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
.end method

.method public abstract unpackNewMultiFileGameData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
