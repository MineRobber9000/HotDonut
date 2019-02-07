.class public Lcom/amazon/ags/client/whispersync/GameSavePackager;
.super Ljava/lang/Object;
.source "GameSavePackager.java"


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private filter:Ljava/io/FilenameFilter;

.field private final zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    .line 51
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/amazon/ags/client/whispersync/GameSavePackager$1;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/whispersync/GameSavePackager$1;-><init>(Lcom/amazon/ags/client/whispersync/GameSavePackager;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filter:Ljava/io/FilenameFilter;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FilenameFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/zip/SimpleZipUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    .line 46
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filter:Ljava/io/FilenameFilter;

    .line 48
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    const-string v2, "Entering pack()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, "packageDir":Ljava/io/File;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filter:Ljava/io/FilenameFilter;

    invoke-interface {v1, v0, v2}, Lcom/amazon/ags/client/whispersync/zip/ZipUtil;->zipToByteArray(Ljava/io/File;Ljava/io/FilenameFilter;)[B

    move-result-object v1

    return-object v1
.end method

.method public final setFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "override"    # Ljava/io/FilenameFilter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->filter:Ljava/io/FilenameFilter;

    .line 71
    return-void
.end method

.method public unpack([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Lcom/amazon/ags/client/whispersync/GameSavePackager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering unpack() with bytes ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, "packageDir":Ljava/io/File;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager;->zipUtil:Lcom/amazon/ags/client/whispersync/zip/ZipUtil;

    invoke-interface {v1, p1, v0}, Lcom/amazon/ags/client/whispersync/zip/ZipUtil;->unzip([BLjava/io/File;)V

    .line 83
    return-void
.end method
