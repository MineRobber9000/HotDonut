.class public Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "GetScoresResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/GetScoresResponse;


# instance fields
.field private displayText:Ljava/lang/String;

.field private leaderboardId:Ljava/lang/String;

.field private leaderboardName:Ljava/lang/String;

.field private numScores:I

.field private scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

.field private scores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Score;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scores:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->numScores:I

    .line 49
    return-void
.end method

.method public constructor <init>([Lcom/amazon/ags/api/leaderboards/Score;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "scores"    # [Lcom/amazon/ags/api/leaderboards/Score;
    .param p2, "displayText"    # Ljava/lang/String;
    .param p3, "scoreFormat"    # Lcom/amazon/ags/constants/ScoreFormat;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "uniqueId"    # Ljava/lang/String;
    .param p6, "responseCode"    # I

    .prologue
    .line 35
    invoke-direct {p0, p6}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 37
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scores:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->numScores:I

    .line 39
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->displayText:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

    .line 41
    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardName:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardId:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x7

    return v0
.end method

.method public final getLeaderboardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLeaderboardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumScores()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->numScores:I

    return v0
.end method

.method public final getScoreFormat()Lcom/amazon/ags/constants/ScoreFormat;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

    return-object v0
.end method

.method public final getScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Score;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scores:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/amazon/ags/client/RequestResponseImp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n numScores: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->numScores:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n displayText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->displayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n dataFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n leaderboardName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n leaderboardID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;->leaderboardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method
