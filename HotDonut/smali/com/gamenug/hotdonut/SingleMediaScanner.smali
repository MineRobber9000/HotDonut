.class public Lcom/gamenug/hotdonut/SingleMediaScanner;
.super Ljava/lang/Object;
.source "SingleMediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private mFile:Ljava/io/File;

.field private mMs:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mFile:Ljava/io/File;

    .line 16
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    .line 17
    iget-object v0, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 18
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gamenug/hotdonut/SingleMediaScanner;->mMs:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 28
    return-void
.end method
