.class public interface abstract Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;
.super Ljava/lang/Object;
.source "SummaryRepository.java"


# virtual methods
.method public abstract hasPendingDownload()Z
.end method

.method public abstract removePendingDownload()V
.end method

.method public abstract removePendingUpload()V
.end method

.method public abstract removeSummary()V
.end method

.method public abstract retrievePendingDownload()Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract retrievePendingUpload()Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract retrieveSummary()Lcom/amazon/ags/client/whispersync/GameSummary;
.end method

.method public abstract storePendingDownload(Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract storePendingUpload(Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V
.end method
