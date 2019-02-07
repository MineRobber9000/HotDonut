.class public Lcom/amazon/ags/api/leaderboards/AGLeaderboards;
.super Ljava/lang/Object;
.source "AGLeaderboards.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static varargs getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 53
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 55
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getLeaderboards(Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 38
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 40
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 41
    return-void
.end method

.method public static varargs getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 170
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 172
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 152
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 154
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p3}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 155
    return-void
.end method

.method public static varargs getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p2, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 230
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 232
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 212
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 214
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p3}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 215
    return-void
.end method

.method public static varargs getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 7
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p2, "startRank"    # I
    .param p3, "count"    # I
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "II[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v6

    .line 132
    .local v6, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v6}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    .local v0, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 134
    invoke-interface/range {v0 .. v5}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;IILcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/amazon/ags/constants/LeaderboardFilter;
    .param p2, "startRank"    # I
    .param p3, "count"    # I
    .param p5, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "II",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p4, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/leaderboards/GetScoresResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v6

    .line 111
    .local v6, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v6}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    .local v0, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    .line 113
    invoke-interface/range {v0 .. v5}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 114
    return-void
.end method

.method public static showLeaderboardOverlay(Ljava/lang/String;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 194
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 196
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p0, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static showLeaderboardsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
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
    .line 181
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 182
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 184
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "score"    # J
    .param p3, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 89
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 91
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs submitScore(Ljava/lang/String;JLcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "score"    # J
    .param p4, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 71
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 73
    .local v1, "leaderboardsClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    invoke-interface {v1, p0, p1, p2, p4}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 74
    return-void
.end method
