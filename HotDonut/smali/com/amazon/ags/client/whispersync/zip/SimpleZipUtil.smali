.class public Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;
.super Ljava/lang/Object;
.source "SimpleZipUtil.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/zip/ZipUtil;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final KIBI:I = 0x400

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentFilter:Ljava/io/FilenameFilter;

.field private hasFile:Z

.field private zipInputStream:Ljava/util/zip/ZipInputStream;

.field private zipOutputStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addWithFilter(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "inPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    sget-object v5, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-object v4, p2

    .line 81
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->currentFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 88
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1, v4}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->addWithFilter(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipFileToStream(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    .line 94
    :cond_2
    return-void
.end method

.method private getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;
    .locals 5
    .param p1, "zip"    # Ljava/util/zip/ZipInputStream;

    .prologue
    const/4 v2, 0x0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 184
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "efo":Ljava/io/EOFException;
    sget-object v3, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v4, "Ignoring EOFException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v1    # "efo":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private unzipFile(Ljava/io/File;)V
    .locals 6
    .param p1, "entryFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 190
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 192
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 194
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 202
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw v4

    .line 201
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "count":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :cond_1
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 202
    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 206
    :cond_2
    return-void

    .line 201
    .end local v1    # "count":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private zipFileToStream(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-direct {v4, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 102
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 103
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 104
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 107
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_2

    .line 108
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catchall_0
    move-exception v5

    move-object v1, v2

    .line 112
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 113
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :cond_0
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_1
    throw v5

    .line 112
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v2, :cond_3

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :cond_3
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v5, :cond_4

    .line 117
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 121
    :cond_4
    return-void

    .line 116
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_5
    throw v5

    .line 116
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    if-eqz v6, :cond_6

    .line 117
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_6
    throw v5

    .line 111
    :catchall_3
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public final unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 5
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "source cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "destinationDir cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_1
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering unzip() with destination directory ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 151
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->getNextEntry(Ljava/util/zip/ZipInputStream;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_4

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v1, "entryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "entryFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_2
    throw v2

    .line 159
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "entryFile":Ljava/io/File;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, v1}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->unzipFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v1    # "entryFile":Ljava/io/File;
    :cond_4
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    if-eqz v2, :cond_5

    .line 166
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 169
    :cond_5
    return-void
.end method

.method public final unzip([BLjava/io/File;)V
    .locals 2
    .param p1, "source"    # [B
    .param p2, "destinationDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 132
    return-void
.end method

.method public final zipToByteArray(Ljava/io/File;Ljava/io/FilenameFilter;)[B
    .locals 10
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "baseDir cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "filter cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 52
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    .line 53
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->currentFilter:Ljava/io/FilenameFilter;

    .line 54
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v8, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 58
    .local v1, "child":Ljava/io/File;
    const-string v8, ""

    invoke-direct {p0, v1, v8}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->addWithFilter(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "child":Ljava/io/File;
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 64
    .local v2, "data":[B
    :try_start_0
    iget-object v8, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-boolean v8, p0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->hasFile:Z

    if-nez v8, :cond_3

    .line 71
    sget-object v8, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v9, "No files, cannot create zip file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    .line 74
    .end local v2    # "data":[B
    :cond_3
    :goto_1
    return-object v2

    .line 65
    .restart local v2    # "data":[B
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/util/zip/ZipException;
    sget-object v8, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;->TAG:Ljava/lang/String;

    const-string v9, "No files found.  Returning null"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v7

    .line 67
    goto :goto_1
.end method
