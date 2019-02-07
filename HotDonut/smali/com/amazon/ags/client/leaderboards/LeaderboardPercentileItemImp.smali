.class public Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;
.super Ljava/lang/Object;
.source "LeaderboardPercentileItemImp.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;


# instance fields
.field private final percentile:I

.field private final playerAlias:Ljava/lang/String;

.field private final playerScore:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "playerAlias"    # Ljava/lang/String;
    .param p2, "playerScore"    # J
    .param p4, "percentile"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->playerAlias:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->playerScore:J

    .line 22
    iput p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->percentile:I

    .line 23
    return-void
.end method


# virtual methods
.method public getPercentile()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->percentile:I

    return v0
.end method

.method public getPlayerAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->playerAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerScore()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;->playerScore:J

    return-wide v0
.end method
