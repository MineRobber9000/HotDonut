.class Lcom/facebook/FileLruCache$CloseCallbackOutputStream;
.super Ljava/io/OutputStream;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCallbackOutputStream"
.end annotation


# instance fields
.field final callback:Lcom/facebook/FileLruCache$StreamCloseCallback;

.field final innerStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/FileLruCache$StreamCloseCallback;)V
    .locals 0
    .param p1, "innerStream"    # Ljava/io/OutputStream;
    .param p2, "callback"    # Lcom/facebook/FileLruCache$StreamCloseCallback;

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    .line 326
    iput-object p2, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/FileLruCache$StreamCloseCallback;

    .line 327
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/FileLruCache$StreamCloseCallback;

    invoke-interface {v0}, Lcom/facebook/FileLruCache$StreamCloseCallback;->onClose()V

    .line 336
    return-void

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    iget-object v1, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/FileLruCache$StreamCloseCallback;

    invoke-interface {v1}, Lcom/facebook/FileLruCache$StreamCloseCallback;->onClose()V

    .line 335
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 341
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 356
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 351
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 346
    return-void
.end method
