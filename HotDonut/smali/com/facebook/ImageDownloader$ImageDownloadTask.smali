.class Lcom/facebook/ImageDownloader$ImageDownloadTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/facebook/ImageRequest;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ImageResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ImageDownloader$ImageDownloadTask;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/ImageDownloader$ImageDownloadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/facebook/ImageRequest;)Lcom/facebook/ImageResponse;
    .locals 10
    .param p1, "requests"    # [Lcom/facebook/ImageRequest;

    .prologue
    const/4 v7, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 29
    .local v2, "error":Ljava/lang/Exception;
    aget-object v4, p1, v7

    .line 30
    .local v4, "request":Lcom/facebook/ImageRequest;
    const/4 v3, 0x0

    .line 32
    .local v3, "isCachedRedirect":Z
    invoke-virtual {v4}, Lcom/facebook/ImageRequest;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 33
    invoke-virtual {v4}, Lcom/facebook/ImageRequest;->getImageUrl()Ljava/net/URL;

    move-result-object v6

    .line 34
    .local v6, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 36
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    invoke-virtual {v4}, Lcom/facebook/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 40
    sget-object v9, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    invoke-static {v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    .line 37
    invoke-static {v6, v8, v9}, Lcom/facebook/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 44
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 47
    invoke-virtual {v4}, Lcom/facebook/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 48
    sget-object v8, Lcom/facebook/ImageResponseCache$Options;->NONE:Ljava/util/EnumSet;

    .line 45
    invoke-static {v6, v7, v8}, Lcom/facebook/ImageResponseCache;->getImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;

    move-result-object v5

    .line 51
    :cond_1
    if-eqz v5, :cond_2

    .line 52
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    :cond_2
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    new-instance v7, Lcom/facebook/ImageResponse;

    invoke-direct {v7, v4, v2, v3, v0}, Lcom/facebook/ImageResponse;-><init>(Lcom/facebook/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    return-object v7

    .restart local v5    # "stream":Ljava/io/InputStream;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_4
    move v3, v7

    .line 41
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 57
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 57
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    throw v7
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/facebook/ImageRequest;

    invoke-virtual {p0, p1}, Lcom/facebook/ImageDownloader$ImageDownloadTask;->doInBackground([Lcom/facebook/ImageRequest;)Lcom/facebook/ImageResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/facebook/ImageResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/ImageResponse;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lcom/facebook/ImageResponse;->getRequest()Lcom/facebook/ImageRequest;

    move-result-object v1

    .line 69
    .local v1, "request":Lcom/facebook/ImageRequest;
    invoke-virtual {v1}, Lcom/facebook/ImageRequest;->getCallback()Lcom/facebook/ImageRequest$Callback;

    move-result-object v0

    .line 70
    .local v0, "callback":Lcom/facebook/ImageRequest$Callback;
    invoke-virtual {v1}, Lcom/facebook/ImageRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/facebook/ImageRequest$Callback;->onCompleted(Lcom/facebook/ImageResponse;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/facebook/ImageDownloader$ImageDownloadTask;->onPostExecute(Lcom/facebook/ImageResponse;)V

    return-void
.end method
