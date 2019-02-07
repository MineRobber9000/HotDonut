.class public Lcom/amazon/ags/jni/AGSJniHandler;
.super Ljava/lang/Object;
.source "AGSJniHandler.java"


# static fields
.field private static final JNI_LIBRARY_NAME:Ljava/lang/String; = "AmazonGamesJni"

.field public static final TAG:Ljava/lang/String; = "AGSJniHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeJni(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 5
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 37
    const-string v2, "AGSJniHandler"

    const-string v3, "Loading Jni library"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p0}, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 40
    invoke-static {p0}, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 41
    invoke-static {p0}, Lcom/amazon/ags/jni/whispersync/WhisperSyncNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 42
    invoke-static {p0}, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 47
    :try_start_0
    invoke-static {}, Lcom/amazon/ags/jni/AGSJniHandler;->isLoaded()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "AGSJniHandler"

    const-string v3, "AmazonGamesJni is not loaded, trying to load library"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_1
    const-string v2, "AmazonGamesJni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    .line 56
    .local v1, "ule2":Ljava/lang/UnsatisfiedLinkError;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load AmazonGamesJni: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native isLoaded()V
.end method
