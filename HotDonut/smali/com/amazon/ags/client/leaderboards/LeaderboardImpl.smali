.class public Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;
.super Ljava/lang/Object;
.source "LeaderboardImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/Leaderboard;


# instance fields
.field private final displayText:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayText"    # Ljava/lang/String;
    .param p4, "scoreFormat"    # Lcom/amazon/ags/constants/ScoreFormat;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->id:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->name:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->displayText:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

    .line 30
    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreFormat()Lcom/amazon/ags/constants/ScoreFormat;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;->scoreFormat:Lcom/amazon/ags/constants/ScoreFormat;

    return-object v0
.end method
