.class public Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "SubmitScoreResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private improvedInFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rankInFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "error"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 2
    .param p3, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "improvedInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Boolean;>;"
    .local p2, "rankInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Integer;>;"
    invoke-direct {p0, p3}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->improvedInFilter:Ljava/util/Map;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->rankInFilter:Ljava/util/Map;

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->TAG:Ljava/lang/String;

    const-string v1, "Constructing SubmitScoreResponse with null improvements"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->improvedInFilter:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->rankInFilter:Ljava/util/Map;

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x8

    return v0
.end method

.method public final getNewRank()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->rankInFilter:Ljava/util/Map;

    return-object v0
.end method

.method public final getRankImproved()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/ags/constants/LeaderboardFilter;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->improvedInFilter:Ljava/util/Map;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/amazon/ags/client/RequestResponseImp;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Improvements: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->improvedInFilter:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Ranks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;->rankInFilter:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method
