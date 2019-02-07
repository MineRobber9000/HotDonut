.class Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;
.super Ljava/io/BufferedInputStream;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ImageResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedHttpInputStream"
.end annotation


# instance fields
.field connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 213
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 214
    iput-object p2, p0, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    .line 215
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 220
    iget-object v0, p0, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/Utility;->disconnectQuietly(Ljava/net/HttpURLConnection;)V

    .line 221
    return-void
.end method
