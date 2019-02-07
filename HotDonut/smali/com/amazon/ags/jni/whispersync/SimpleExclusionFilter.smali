.class public Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;
.super Ljava/lang/Object;
.source "SimpleExclusionFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private mExclusionRegex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exclusionRegex"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 28
    .local v0, "isDir":Z
    if-nez v0, :cond_2

    .line 29
    iget-object v3, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    iget-object v3, p0, Lcom/amazon/ags/jni/whispersync/SimpleExclusionFilter;->mExclusionRegex:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "cache"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "lib"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".amazonGamesService"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 32
    goto :goto_0
.end method
