.class public Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;
.super Ljava/lang/Object;
.source "FileBackedSummaryRepository.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;


# static fields
.field public static final AMAZON_GAMES_DIR_NAME:Ljava/lang/String; = ".amazonGamesService"

.field private static final PENDING_DOWNLOAD_DATA_FILE_NAME:Ljava/lang/String; = "pendingDownloadData.dat"

.field private static final PENDING_DOWNLOAD_SUMMARY_FILE_NAME:Ljava/lang/String; = "pendingDownloadSummary.dat"

.field private static final PENDING_UPLOAD_DATA_FILE_NAME:Ljava/lang/String; = "pendingUploadData.dat"

.field private static final PENDING_UPLOAD_DESCRIPTION_FILE_NAME:Ljava/lang/String; = "pendingUploadDescription.txt"

.field private static final SUMMARY_FILE_NAME:Ljava/lang/String; = "latestSummary.txt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AG_WS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marshaller"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .line 42
    return-void
.end method

.method private getAmazonGamesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, ".amazonGamesService"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 181
    return-object v0
.end method

.method private lastModified(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 174
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readFromAmazonGamesDir(Ljava/lang/String;)[B
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v2, "sourceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 148
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v1, v3, [B

    .line 151
    .local v1, "gameData":[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .end local v1    # "gameData":[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v3
.end method

.method private readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v4, "summaryFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "jsonSummary":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v5, v3}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 124
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 127
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v3    # "jsonSummary":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 124
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .end local v2    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V
    .locals 4
    .param p1, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v2, p1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->marshal(Lcom/amazon/ags/client/whispersync/GameSummary;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "jsonSummary":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->TAG:Ljava/lang/String;

    const-string v3, "Could not write game summary"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeToAmazonGamesDir(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v1, "targetFile":Ljava/io/File;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method


# virtual methods
.method public final hasPendingDownload()Z
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadData.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final removePendingDownload()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadData.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingDownloadSummary.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    return-void
.end method

.method public final removePendingUpload()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pendingUploadData.dat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "pendingGameDataFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "pendingUploadDescription.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v1, "pendingGameDescription":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 85
    return-void
.end method

.method public final removeSummary()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "latestSummary.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "summaryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 48
    return-void
.end method

.method public final retrievePendingDownload()Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v2, "pendingDownloadData.dat"

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    .local v0, "gameData":[B
    const-string v2, "pendingDownloadSummary.dat"

    invoke-direct {p0, v2}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v1

    .line 102
    .local v1, "summary":Lcom/amazon/ags/client/whispersync/GameSummary;
    if-nez v0, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;

    invoke-direct {v2, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;-><init>([BLcom/amazon/ags/client/whispersync/GameSummary;)V

    goto :goto_0
.end method

.method public final retrievePendingUpload()Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v4, "pendingUploadData.dat"

    invoke-direct {p0, v4}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v2

    .line 73
    .local v2, "gameData":[B
    const-string v4, "pendingUploadDescription.txt"

    invoke-direct {p0, v4}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readFromAmazonGamesDir(Ljava/lang/String;)[B

    move-result-object v1

    .line 74
    .local v1, "descriptionBytes":[B
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 75
    .local v0, "description":Ljava/lang/String;
    :goto_0
    const-string v4, "pendingUploadData.dat"

    invoke-direct {p0, v4}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->lastModified(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 76
    .local v3, "saveDate":Ljava/util/Date;
    new-instance v4, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;

    invoke-direct {v4, v2, v0, v3}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;-><init>([BLjava/lang/String;Ljava/util/Date;)V

    return-object v4

    .line 74
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "saveDate":Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final retrieveSummary()Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 1

    .prologue
    .line 52
    const-string v0, "latestSummary.txt"

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->readGameSummary(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    return-object v0
.end method

.method public final storePendingDownload(Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;)V
    .locals 2
    .param p1, "pendingDownload"    # Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "pendingDownloadData.dat"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 90
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getSummary()Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v0

    const-string v1, "pendingDownloadSummary.dat"

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final storePendingUpload(Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;)V
    .locals 3
    .param p1, "pendingUpload"    # Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "pendingUploadData.dat"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    .line 63
    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->getAmazonGamesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "pendingUploadDescription.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v0, "pendingUploadDescription.txt"

    invoke-virtual {p1}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeToAmazonGamesDir(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V
    .locals 1
    .param p1, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    .line 57
    const-string v0, "latestSummary.txt"

    invoke-direct {p0, p1, v0}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;->writeGameSummary(Lcom/amazon/ags/client/whispersync/GameSummary;Ljava/lang/String;)V

    .line 58
    return-void
.end method
