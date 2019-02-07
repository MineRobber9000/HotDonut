.class public interface abstract Lcom/amazon/ags/client/leaderboards/LeaderboardsService;
.super Ljava/lang/Object;
.source "LeaderboardsService.java"


# virtual methods
.method public abstract getLeaderboards(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPercentileRanks(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetLeaderboardPercentilesResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestLocalPlayerScore(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;IILcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "II",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/GetScoresResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLeaderboardsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showRanksOverlay(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract submitScore(Ljava/lang/String;JLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;",
            ">;)V"
        }
    .end annotation
.end method
