.class public Lcom/amazon/ags/api/achievements/AGAchievements;
.super Ljava/lang/Object;
.source "AGAchievements.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static varargs getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 97
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 99
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p0, p1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getAchievement(Ljava/lang/String;Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/achievements/GetAchievementResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 80
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 82
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p0, p2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 83
    return-void
.end method

.method public static varargs getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 63
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 65
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p0}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getAchievements(Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/achievements/GetAchievementsResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 42
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 44
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->getAchievements([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 45
    return-void
.end method

.method public static showAchievementsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
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
    .line 154
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 155
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 157
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 143
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 145
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs updateProgress(Ljava/lang/String;FLcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;
    .param p1, "percentComplete"    # F
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/achievements/UpdateProgressResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v1

    .line 120
    .local v1, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 122
    .local v0, "achievementsClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    invoke-interface {v0, p0, p1, p3}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 123
    return-void
.end method
