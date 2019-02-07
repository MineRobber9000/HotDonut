.class final Lcom/facebook/FileLruCache$Limits;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Limits"
.end annotation


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/FileLruCache$Limits;->fileCount:I

    .line 458
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/FileLruCache$Limits;->byteCount:I

    .line 459
    return-void
.end method


# virtual methods
.method getByteCount()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/facebook/FileLruCache$Limits;->byteCount:I

    return v0
.end method

.method getFileCount()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/facebook/FileLruCache$Limits;->fileCount:I

    return v0
.end method

.method setByteCount(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 470
    if-gez p1, :cond_0

    .line 471
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache byte-count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iput p1, p0, Lcom/facebook/FileLruCache$Limits;->byteCount:I

    .line 474
    return-void
.end method

.method setFileCount(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 477
    if-gez p1, :cond_0

    .line 478
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache file count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    iput p1, p0, Lcom/facebook/FileLruCache$Limits;->fileCount:I

    .line 481
    return-void
.end method
