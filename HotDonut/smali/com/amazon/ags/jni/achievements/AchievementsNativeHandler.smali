.class public Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;
.super Ljava/lang/Object;
.source "AchievementsNativeHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "AchievementsNativeHandler"

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    .line 44
    return-void
.end method

.method public static requestAchievement(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 65
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievement - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/ags/jni/achievements/GetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementHandle(Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestAchievements(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 47
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievements - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/achievements/GetAchievementsJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestAchievementsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestAchievementsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetAchievement(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 117
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievement - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static resetAchievementHandle(Ljava/lang/String;I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievementHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetAchievements(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 101
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievements - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/achievements/ResetAchievementJniRespHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static resetAchievementsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "resetAchievementsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->resetAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAchievementsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public static updateProgress(Ljava/lang/String;FIJ)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 83
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgress - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/amazon/ags/jni/achievements/UpdateProgressJniRespHandler;-><init>(Ljava/lang/String;IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static updateProgressHandle(Ljava/lang/String;FI)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "updateProgressHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/AchievementsNativeHandler;->m_AchievementsClient:Lcom/amazon/ags/api/achievements/AchievementsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
