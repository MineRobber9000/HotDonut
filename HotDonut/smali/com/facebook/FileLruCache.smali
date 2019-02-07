.class final Lcom/facebook/FileLruCache;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FileLruCache$BufferFile;,
        Lcom/facebook/FileLruCache$CloseCallbackOutputStream;,
        Lcom/facebook/FileLruCache$CopyingInputStream;,
        Lcom/facebook/FileLruCache$Limits;,
        Lcom/facebook/FileLruCache$ModifiedFile;,
        Lcom/facebook/FileLruCache$StreamCloseCallback;,
        Lcom/facebook/FileLruCache$StreamHeader;
    }
.end annotation


# static fields
.field private static final HEADER_CACHEKEY_KEY:Ljava/lang/String; = "key"

.field private static final HEADER_CACHE_CONTENT_TAG_KEY:Ljava/lang/String; = "tag"

.field static final TAG:Ljava/lang/String;

.field private static final bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final directory:Ljava/io/File;

.field private final limits:Lcom/facebook/FileLruCache$Limits;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/FileLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/facebook/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/FileLruCache$Limits;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "limits"    # Lcom/facebook/FileLruCache$Limits;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/facebook/FileLruCache;->tag:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/facebook/FileLruCache;->limits:Lcom/facebook/FileLruCache$Limits;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    .line 49
    iget-object v0, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    iget-object v0, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/FileLruCache$BufferFile;->deleteAll(Ljava/io/File;)V

    .line 53
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/FileLruCache;->bufferIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/FileLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/FileLruCache;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/facebook/FileLruCache;->trim()V

    return-void
.end method

.method private trim()V
    .locals 15

    .prologue
    .line 187
    sget-object v7, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v8, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    const-string v9, "trim started"

    invoke-static {v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v3, Ljava/util/PriorityQueue;

    invoke-direct {v3}, Ljava/util/PriorityQueue;-><init>()V

    .line 189
    .local v3, "heap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/facebook/FileLruCache$ModifiedFile;>;"
    const-wide/16 v5, 0x0

    .line 190
    .local v5, "size":J
    const-wide/16 v0, 0x0

    .line 191
    .local v0, "count":J
    iget-object v7, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-static {}, Lcom/facebook/FileLruCache$BufferFile;->excludeBufferFiles()Ljava/io/FilenameFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v9, :cond_0

    .line 201
    :goto_1
    iget-object v7, p0, Lcom/facebook/FileLruCache;->limits:Lcom/facebook/FileLruCache$Limits;

    invoke-virtual {v7}, Lcom/facebook/FileLruCache$Limits;->getByteCount()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Lcom/facebook/FileLruCache;->limits:Lcom/facebook/FileLruCache$Limits;

    invoke-virtual {v7}, Lcom/facebook/FileLruCache$Limits;->getFileCount()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v0, v7

    if-gtz v7, :cond_1

    .line 208
    return-void

    .line 191
    :cond_0
    aget-object v2, v8, v7

    .line 192
    .local v2, "file":Ljava/io/File;
    new-instance v4, Lcom/facebook/FileLruCache$ModifiedFile;

    invoke-direct {v4, v2}, Lcom/facebook/FileLruCache$ModifiedFile;-><init>(Ljava/io/File;)V

    .line 193
    .local v4, "modified":Lcom/facebook/FileLruCache$ModifiedFile;
    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v10, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v11, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  trim considering time="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 195
    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/facebook/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 194
    invoke-static {v10, v11, v12}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 198
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "modified":Lcom/facebook/FileLruCache$ModifiedFile;
    :cond_1
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/FileLruCache$ModifiedFile;

    invoke-virtual {v7}, Lcom/facebook/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v2

    .line 203
    .restart local v2    # "file":Ljava/io/File;
    sget-object v7, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v8, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  trim removing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 205
    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_1
.end method


# virtual methods
.method clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    aget-object v0, v2, v1

    .line 57
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/facebook/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v5, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 70
    .local v9, "input":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v9    # "input":Ljava/io/FileInputStream;
    .local v10, "input":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v12, 0x2000

    invoke-direct {v3, v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 76
    .local v3, "buffered":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 79
    .local v11, "success":Z
    :try_start_1
    invoke-static {v3}, Lcom/facebook/FileLruCache$StreamHeader;->readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 80
    .local v7, "header":Lorg/json/JSONObject;
    if-nez v7, :cond_1

    .line 102
    if-nez v11, :cond_0

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 81
    :cond_0
    const/4 v3, 0x0

    move-object v9, v10

    .line 100
    .end local v3    # "buffered":Ljava/io/BufferedInputStream;
    .end local v7    # "header":Lorg/json/JSONObject;
    .end local v10    # "input":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    .restart local v9    # "input":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 71
    :catch_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "buffered":Ljava/io/BufferedInputStream;
    .restart local v7    # "header":Lorg/json/JSONObject;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :cond_1
    :try_start_2
    const-string v12, "key"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "foundKey":Ljava/lang/String;
    if-eqz v6, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    if-nez v12, :cond_4

    .line 102
    :cond_2
    if-nez v11, :cond_3

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 86
    :cond_3
    const/4 v3, 0x0

    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 89
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :cond_4
    :try_start_3
    const-string v12, "tag"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 90
    .local v8, "headerContentTag":Ljava/lang/String;
    move-object/from16 v0, p2

    if-eq v8, v0, :cond_6

    .line 102
    if-nez v11, :cond_5

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 91
    :cond_5
    const/4 v3, 0x0

    move-object v9, v10

    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 94
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :cond_6
    :try_start_4
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 95
    .local v1, "accessTime":J
    sget-object v12, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v13, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Setting lastModified to "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 96
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 95
    invoke-static {v12, v13, v14}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    const/4 v11, 0x1

    .line 102
    if-nez v11, :cond_7

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_7
    move-object v9, v10

    .line 100
    .end local v10    # "input":Ljava/io/FileInputStream;
    .restart local v9    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 101
    .end local v1    # "accessTime":J
    .end local v6    # "foundKey":Ljava/lang/String;
    .end local v7    # "header":Lorg/json/JSONObject;
    .end local v8    # "headerContentTag":Ljava/lang/String;
    .end local v9    # "input":Ljava/io/FileInputStream;
    .restart local v10    # "input":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v12

    .line 102
    if-nez v11, :cond_8

    .line 103
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 105
    :cond_8
    throw v12
.end method

.method interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/facebook/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 170
    .local v0, "output":Ljava/io/OutputStream;
    new-instance v1, Lcom/facebook/FileLruCache$CopyingInputStream;

    invoke-direct {v1, p2, v0}, Lcom/facebook/FileLruCache$CopyingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "contentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    .line 113
    iget-object v8, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-static {v8}, Lcom/facebook/FileLruCache$BufferFile;->newFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, "buffer":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 116
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not create file at "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 119
    :cond_0
    const/4 v4, 0x0

    .line 121
    .local v4, "file":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "file":Ljava/io/FileOutputStream;
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .restart local v4    # "file":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/facebook/FileLruCache$1;

    invoke-direct {v6, p0, p1, v0}, Lcom/facebook/FileLruCache$1;-><init>(Lcom/facebook/FileLruCache;Ljava/lang/String;Ljava/io/File;)V

    .line 138
    .local v6, "renameToTargetCallback":Lcom/facebook/FileLruCache$StreamCloseCallback;
    new-instance v2, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;

    invoke-direct {v2, v4, v6}, Lcom/facebook/FileLruCache$CloseCallbackOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/FileLruCache$StreamCloseCallback;)V

    .line 139
    .local v2, "cleanup":Lcom/facebook/FileLruCache$CloseCallbackOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 140
    .local v1, "buffered":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 144
    .local v7, "success":Z
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v5, "header":Lorg/json/JSONObject;
    const-string v8, "key"

    invoke-virtual {v5, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-static {p2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 147
    const-string v8, "tag"

    invoke-virtual {v5, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_1
    invoke-static {v1, v5}, Lcom/facebook/FileLruCache$StreamHeader;->writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v7, 0x1

    .line 159
    if-nez v7, :cond_2

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 153
    :cond_2
    return-object v1

    .line 122
    .end local v1    # "buffered":Ljava/io/BufferedOutputStream;
    .end local v2    # "cleanup":Lcom/facebook/FileLruCache$CloseCallbackOutputStream;
    .end local v4    # "file":Ljava/io/FileOutputStream;
    .end local v5    # "header":Lorg/json/JSONObject;
    .end local v6    # "renameToTargetCallback":Lcom/facebook/FileLruCache$StreamCloseCallback;
    .end local v7    # "success":Z
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v9, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error creating buffer output stream: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v12, v9, v10}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffered":Ljava/io/BufferedOutputStream;
    .restart local v2    # "cleanup":Lcom/facebook/FileLruCache$CloseCallbackOutputStream;
    .restart local v4    # "file":Ljava/io/FileOutputStream;
    .restart local v6    # "renameToTargetCallback":Lcom/facebook/FileLruCache$StreamCloseCallback;
    .restart local v7    # "success":Z
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v8, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    const/4 v9, 0x5

    sget-object v10, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error creating JSON header for cache file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v3    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v8

    .line 159
    if-nez v7, :cond_3

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 162
    :cond_3
    throw v8
.end method

.method sizeInBytes()J
    .locals 8

    .prologue
    .line 174
    iget-object v4, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 175
    .local v1, "files":[Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 176
    .local v2, "total":J
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 179
    return-wide v2

    .line 176
    :cond_0
    aget-object v0, v1, v4

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FileLruCache: tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/FileLruCache;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FileLruCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
