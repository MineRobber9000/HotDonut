.class Lcom/facebook/FileLruCache$BufferFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferFile"
.end annotation


# static fields
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"

.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;

.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/facebook/FileLruCache$BufferFile$1;

    invoke-direct {v0}, Lcom/facebook/FileLruCache$BufferFile$1;-><init>()V

    sput-object v0, Lcom/facebook/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    .line 218
    new-instance v0, Lcom/facebook/FileLruCache$BufferFile$2;

    invoke-direct {v0}, Lcom/facebook/FileLruCache$BufferFile$2;-><init>()V

    sput-object v0, Lcom/facebook/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    .line 210
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteAll(Ljava/io/File;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;

    .prologue
    .line 226
    invoke-static {}, Lcom/facebook/FileLruCache$BufferFile;->excludeNonBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 229
    return-void

    .line 226
    :cond_0
    aget-object v0, v2, v1

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static excludeBufferFiles()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/facebook/FileLruCache$BufferFile;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static excludeNonBufferFiles()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/facebook/FileLruCache$BufferFile;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static newFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "root"    # Ljava/io/File;

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/FileLruCache;->access$0()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
