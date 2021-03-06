.class public Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "GetLeaderboardsResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;


# instance fields
.field private final leaderboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Leaderboard;",
            ">;"
        }
    .end annotation
.end field

.field private final numLeaderboards:I


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "error"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->numLeaderboards:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->leaderboards:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Leaderboard;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/Leaderboard;>;"
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 28
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->leaderboards:Ljava/util/List;

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->numLeaderboards:I

    .line 30
    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x9

    return v0
.end method

.method public final getLeaderboards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/ags/api/leaderboards/Leaderboard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->leaderboards:Ljava/util/List;

    return-object v0
.end method

.method public final getNumLeaderboards()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->numLeaderboards:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/amazon/ags/client/RequestResponseImp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n numLeaderboards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;->numLeaderboards:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method
