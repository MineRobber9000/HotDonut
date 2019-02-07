.class Lcom/facebook/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ImageDownloader$ImageDownloadTask;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static downloadAsync(Lcom/facebook/ImageRequest;)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/ImageRequest;

    .prologue
    .line 20
    new-instance v0, Lcom/facebook/ImageDownloader$ImageDownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/ImageDownloader$ImageDownloadTask;-><init>(Lcom/facebook/ImageDownloader$ImageDownloadTask;)V

    .line 21
    .local v0, "downloadTask":Lcom/facebook/ImageDownloader$ImageDownloadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/ImageRequest;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ImageDownloader$ImageDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    return-void
.end method
