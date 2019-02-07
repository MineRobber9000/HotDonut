.class Lcom/amazon/ags/client/whispersync/GameSavePackager$1;
.super Ljava/lang/Object;
.source "GameSavePackager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/GameSavePackager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/GameSavePackager;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/GameSavePackager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/GameSavePackager$1;->this$0:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 55
    .local v0, "isDir":Z
    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    const-string v2, "cache"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lib"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".amazonGamesService"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
