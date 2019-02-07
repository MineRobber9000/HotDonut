.class public Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;
.super Ljava/lang/Object;
.source "LeaderboardsNativeHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "LeaderboardsNativeHandler"

    sput-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPercentiles(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 190
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "getPercentiles - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/leaderboards/GetPercentilesJniResponseHandler;

    invoke-direct {v1, p2, p3, p4}, Lcom/amazon/ags/jni/leaderboards/GetPercentilesJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static getPercentilesHandle(Ljava/lang/String;II)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 5
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "getPercentilesHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    .line 58
    return-void
.end method

.method public static requestLeaderboards(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 66
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLeaderboards - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/leaderboards/GetLbsJniResponseHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/leaderboards/GetLbsJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestLeaderboardsHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLeaderboardsHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLeaderboards([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestLocalPlayerScore(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "developerTag"    # I
    .param p3, "callbackPointer"    # J

    .prologue
    .line 157
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerScore - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/leaderboards/GetScoreJniResponseHandler;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/amazon/ags/jni/leaderboards/GetScoreJniResponseHandler;-><init>(Ljava/lang/String;IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestLocalPlayerScoreHandle(Ljava/lang/String;II)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 5
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerScoreHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestScores(Ljava/lang/String;IIIIJ)V
    .locals 6
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "startRank"    # I
    .param p3, "count"    # I
    .param p4, "developerTag"    # I
    .param p5, "callbackPointer"    # J

    .prologue
    .line 121
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestScores - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v2

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/leaderboards/GetScoresJniResponseHandler;

    invoke-direct {v1, p4, p5, p6}, Lcom/amazon/ags/jni/leaderboards/GetScoresJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static requestScoresHandle(Ljava/lang/String;IIII)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 6
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "filter"    # I
    .param p2, "startRank"    # I
    .param p3, "count"    # I
    .param p4, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestScoresHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    invoke-static {p1}, Lcom/amazon/ags/constants/LeaderboardFilter;->fromOrdinal(I)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v2

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->getScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static showLeaderboardOverlay(Ljava/lang/String;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 2
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
    .line 228
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardOverlay(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public static showLeaderboardsOverlay()Lcom/amazon/ags/api/AGResponseHandle;
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
    .line 220
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    return-object v0
.end method

.method public static submitLeaderboardScore(Ljava/lang/String;JIJ)V
    .locals 2
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "score"    # J
    .param p3, "developerTag"    # I
    .param p4, "callbackPointer"    # J

    .prologue
    .line 91
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "submitLeaderboardScore - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;

    invoke-direct {v1, p3, p4, p5}, Lcom/amazon/ags/jni/leaderboards/SubmitScoreJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static submitLeaderboardScoreHandle(Ljava/lang/String;JI)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "leaderboardId"    # Ljava/lang/String;
    .param p1, "score"    # J
    .param p3, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "submitLeaderboardScoreHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/leaderboards/LeaderboardsNativeHandler;->m_LeaderboardsClient:Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method
