.class Lcom/jirbo/adcolony/Installation;
.super Ljava/lang/Object;
.source "AdColony.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/Installation;->sID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    const-class v3, Lcom/jirbo/adcolony/Installation;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/jirbo/adcolony/Installation;->sID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 409
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "INSTALLATION"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .local v1, "installation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    invoke-static {v1}, Lcom/jirbo/adcolony/Installation;->writeInstallationFile(Ljava/io/File;)V

    .line 416
    :cond_0
    invoke-static {v1}, Lcom/jirbo/adcolony/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/jirbo/adcolony/Installation;->sID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v1    # "installation":Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/jirbo/adcolony/Installation;->sID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 418
    .restart local v1    # "installation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "installation":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 430
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 431
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 432
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 3
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 438
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 440
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 441
    return-void
.end method
