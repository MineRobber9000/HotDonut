.class public Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;
.super Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.source "LeaderboardsReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Lcom/amazon/ags/client/BaseReplyMessengerFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "LB"

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LB_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private final generateSubmitScorePopUp(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .locals 5
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "overlayActionCode"    # I
    .param p3, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 258
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    sget-object v2, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entering generateSubmitScorePopUp with RemoteViews "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v1, "overlayDataBundle":Landroid/os/Bundle;
    const-string v2, "LEADERBOARD_ID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Lcom/amazon/ags/overlay/PopUpContent;

    invoke-direct {v0, p2, p1, v1}, Lcom/amazon/ags/overlay/PopUpContent;-><init>(ILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 264
    .local v0, "content":Lcom/amazon/ags/overlay/PopUpContent;
    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->popUpManager:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-virtual {v2, v0}, Lcom/amazon/ags/overlay/PopUpManager;->executePopUp(Lcom/amazon/ags/overlay/PopUpContent;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected final processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const/16 v7, 0x11

    .line 65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 66
    .local v2, "responseBundle":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 67
    .local v3, "responseCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing incoming service response message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 133
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value received for request type parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Received an invalid value for request type parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :sswitch_0
    if-eq v3, v7, :cond_0

    .line 73
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 74
    .local v0, "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 131
    .end local v0    # "errorCode":I
    :goto_0
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleSubmitScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 82
    :sswitch_1
    if-eq v3, v7, :cond_1

    .line 83
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 84
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 88
    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;
    goto :goto_0

    .line 90
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetLeaderboardsResponse;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestLeaderboardsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 92
    :sswitch_2
    if-eq v3, v7, :cond_2

    .line 93
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 94
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 98
    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    goto :goto_0

    .line 100
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetScoresResponse;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestScoresResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 102
    :sswitch_3
    if-eq v3, v7, :cond_3

    .line 103
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 104
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 108
    .local v1, "response":Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;
    goto/16 :goto_0

    .line 110
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/leaderboards/GetPlayerScoreResponse;
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestUserScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 113
    :sswitch_4
    if-eq v3, v7, :cond_4

    .line 114
    const/16 v0, 0x13

    .line 115
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 119
    .local v1, "response":Lcom/amazon/ags/api/RequestResponse;
    goto/16 :goto_0

    .line 121
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 123
    :sswitch_5
    if-eq v3, v7, :cond_5

    .line 124
    const/16 v0, 0x13

    .line 125
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 129
    .local v1, "response":Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;
    goto/16 :goto_0

    .line 131
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->unbundleRequestPercentilesResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0x1b -> :sswitch_4
        0x1c -> :sswitch_4
        0x1f -> :sswitch_5
    .end sparse-switch
.end method

.method protected final unbundleRequestLeaderboardsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 13
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const/16 v12, 0x13

    .line 187
    const-string v8, "LEADERBOARD_GET_BOARDS_BUNDLE_NAMES"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "names":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_GET_BOARDS_BUNDLE_IDS"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "ids":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_DISPLAY_TEXT"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "displays":[Ljava/lang/String;
    const-string v8, "LEADERBOARD_DATA_FORMAT"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "formats":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 196
    array-length v8, v4

    new-array v0, v8, [Ljava/lang/String;

    .line 197
    const-string v8, "UNKNOWN"

    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :cond_0
    if-nez v2, :cond_1

    .line 201
    array-length v8, v0

    new-array v2, v8, [Ljava/lang/String;

    .line 202
    sget-object v8, Lcom/amazon/ags/constants/ScoreFormat;->UNKNOWN:Lcom/amazon/ags/constants/ScoreFormat;

    invoke-virtual {v8}, Lcom/amazon/ags/constants/ScoreFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :cond_1
    array-length v8, v6

    array-length v9, v4

    if-ne v8, v9, :cond_2

    array-length v8, v4

    array-length v9, v0

    if-ne v8, v9, :cond_2

    array-length v8, v0

    array-length v9, v2

    if-eq v8, v9, :cond_3

    .line 206
    :cond_2
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 223
    :goto_0
    return-object v8

    .line 209
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v5, "leaderboards":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/Leaderboard;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_4

    .line 212
    :try_start_0
    aget-object v8, v2, v3

    invoke-static {v8}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v7

    .line 214
    .local v7, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    aget-object v9, v4, v3

    aget-object v10, v6, v3

    aget-object v11, v0, v3

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    .end local v7    # "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    sget-object v9, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v8, v12, v9}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    new-instance v8, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;

    invoke-direct {v8, v5, p2}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardsResponseImp;-><init>(Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected final unbundleRequestPercentilesResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 22
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v18, "LEADERBOARD_SCORES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v16

    .line 271
    .local v16, "scoreValues":[J
    const-string v18, "LEADERBOARD_PERCENTILES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v15

    .line 272
    .local v15, "percentiles":[I
    const-string v18, "LEADERBOARD_PLAYER_ALIASES_ARRAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "aliases":[Ljava/lang/String;
    const-string v18, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "leaderboardId":Ljava/lang/String;
    const-string v18, "LEADERBOARD_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, "leaderboardName":Ljava/lang/String;
    const-string v18, "LEADERBOARD_DISPLAY_TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "leaderboardDisplay":Ljava/lang/String;
    const-string v18, "LEADERBOARD_DATA_FORMAT"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "leaderboardFormat":Ljava/lang/String;
    const-string v18, "LEADERBOARD_USER_INDEX"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 279
    .local v17, "userIndex":I
    if-eqz v16, :cond_0

    if-eqz v15, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 282
    :cond_0
    new-instance v18, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v19, 0x13

    sget-object v20, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v18 .. v20}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 312
    :goto_0
    return-object v18

    .line 288
    :cond_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    array-length v0, v15

    move/from16 v18, v0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 290
    :cond_2
    new-instance v18, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v19, 0x13

    sget-object v20, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v18 .. v20}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 295
    :cond_3
    :try_start_0
    new-instance v10, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;

    invoke-static {v12}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v13, v14, v11, v0}, Lcom/amazon/ags/client/leaderboards/LeaderboardImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;)V

    .line 297
    .local v10, "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;>;"
    move-object/from16 v0, v16

    array-length v5, v0

    .line 300
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_4

    .line 301
    new-instance v8, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;

    aget-object v18, v4, v7

    aget-wide v19, v16, v7

    aget v21, v15, v7

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardPercentileItemImp;-><init>(Ljava/lang/String;JI)V

    .line 304
    .local v8, "item":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 307
    .end local v8    # "item":Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;
    :cond_4
    new-instance v18, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(Lcom/amazon/ags/api/leaderboards/Leaderboard;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 308
    .end local v5    # "count":I
    .end local v7    # "i":I
    .end local v9    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/leaderboards/LeaderboardPercentileItem;>;"
    .end local v10    # "leaderboard":Lcom/amazon/ags/api/leaderboards/Leaderboard;
    :catch_0
    move-exception v6

    .line 309
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v18, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v19, 0x13

    sget-object v20, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v18 .. v20}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 311
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 312
    .local v6, "e":Ljava/lang/NullPointerException;
    new-instance v18, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;

    const/16 v19, 0x13

    sget-object v20, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct/range {v18 .. v20}, Lcom/amazon/ags/client/leaderboards/GetLeaderboardPercentilesResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    goto/16 :goto_0
.end method

.method public final unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->NONE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, p2, v1}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method

.method protected final unbundleRequestScoresResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 19
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v1, "LEADERBOARD_SCORES_ARRAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v18

    .line 230
    .local v18, "scoreValues":[J
    const-string v1, "LEADERBOARD_RANKS_ARRAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v16

    .line 231
    .local v16, "ranks":[I
    const-string v1, "LEADERBOARD_PLAYER_ALIASES_ARRAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, "playerAliases":[Ljava/lang/String;
    const-string v1, "LEADERBOARD_DISPLAY_TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "displayText":Ljava/lang/String;
    const-string v1, "LEADERBOARD_DATA_FORMAT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 235
    .local v17, "scoreFormatString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/amazon/ags/constants/ScoreFormat;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/ScoreFormat;

    move-result-object v10

    .line 236
    .local v10, "scoreFormat":Lcom/amazon/ags/constants/ScoreFormat;
    const-string v1, "LEADERBOARD_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    .local v11, "name":Ljava/lang/String;
    const-string v1, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "leaderboardId":Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    new-array v8, v1, [Lcom/amazon/ags/api/leaderboards/Score;

    .line 240
    .local v8, "scores":[Lcom/amazon/ags/api/leaderboards/Score;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v14, v1, :cond_0

    .line 241
    new-instance v4, Lcom/amazon/ags/client/profiles/PlayerImpl;

    aget-object v1, v15, v14

    invoke-direct {v4, v1}, Lcom/amazon/ags/client/profiles/PlayerImpl;-><init>(Ljava/lang/String;)V

    .line 242
    .local v4, "player":Lcom/amazon/ags/api/profiles/Player;
    new-instance v1, Lcom/amazon/ags/client/leaderboards/ScoreImp;

    aget-wide v2, v18, v14

    aget v5, v16, v14

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ags/client/leaderboards/ScoreImp;-><init>(JLcom/amazon/ags/api/profiles/Player;ILjava/lang/String;)V

    aput-object v1, v8, v14

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 245
    .end local v4    # "player":Lcom/amazon/ags/api/profiles/Player;
    :cond_0
    new-instance v7, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    move-object v12, v6

    move/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>([Lcom/amazon/ags/api/leaderboards/Score;Ljava/lang/String;Lcom/amazon/ags/constants/ScoreFormat;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method protected final unbundleRequestUserScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 4
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v3, "LEADERBOARD_SUBMIT_SCORE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 252
    .local v1, "scoreValue":J
    const-string v3, "LEADERBOARD_USER_RANK"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "rank":I
    new-instance v3, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;

    invoke-direct {v3, v1, v2, v0, p2}, Lcom/amazon/ags/client/leaderboards/GetPlayerScoreResponseImp;-><init>(JII)V

    return-object v3
.end method

.method protected final unbundleSubmitScoreResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 22
    .param p1, "responseBundle"    # Landroid/os/Bundle;
    .param p2, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;, "Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory<TT;>;"
    const-string v19, "LEADERBOARD_SUBMIT_RESULT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "results":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v7, "improvedInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Boolean;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v13, "rankInFilter":Ljava/util/Map;, "Ljava/util/Map<Lcom/amazon/ags/constants/LeaderboardFilter;Ljava/lang/Integer;>;"
    move-object/from16 v2, v18

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v10, :cond_1

    aget-object v16, v2, v6

    .line 155
    .local v16, "result":Ljava/lang/String;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    .local v17, "resultJSON":Lorg/json/JSONObject;
    sget-object v19, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Parsing json element: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v19, "Scope"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "filterString":Ljava/lang/String;
    invoke-static {v5}, Lcom/amazon/ags/constants/LeaderboardFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v19

    if-nez v19, :cond_0

    .line 159
    sget-object v19, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Invalid filter returned from service: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v5    # "filterString":Ljava/lang/String;
    .end local v17    # "resultJSON":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 162
    .restart local v5    # "filterString":Ljava/lang/String;
    .restart local v17    # "resultJSON":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v5}, Lcom/amazon/ags/constants/LeaderboardFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/LeaderboardFilter;

    move-result-object v4

    .line 163
    .local v4, "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    const-string v19, "PlayerRank"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 164
    .local v12, "rank":I
    const-string v19, "IsImproved"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 165
    .local v8, "isImproved":Z
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    .end local v4    # "filter":Lcom/amazon/ags/constants/LeaderboardFilter;
    .end local v5    # "filterString":Ljava/lang/String;
    .end local v8    # "isImproved":Z
    .end local v12    # "rank":I
    .end local v17    # "resultJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Lorg/json/JSONException;
    sget-object v19, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    const-string v20, "Caught JSON Exception, skipping this Submit Score Result Element"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v16    # "result":Ljava/lang/String;
    :cond_1
    new-instance v15, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;

    move/from16 v0, p2

    invoke-direct {v15, v7, v13, v0}, Lcom/amazon/ags/client/leaderboards/SubmitScoreResponseImp;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    .line 173
    .local v15, "response":Lcom/amazon/ags/api/leaderboards/SubmitScoreResponse;
    sget-object v19, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Created SubmitScoreResponse: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v19, "LEADERBOARD_OVERLAY_CALLBACK_LAYOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 176
    .local v11, "overlayActionCode":I
    const-string v19, "LEADERBOARD_POP_UP_LAYOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/widget/RemoteViews;

    .line 177
    .local v14, "remoteViews":Landroid/widget/RemoteViews;
    const-string v19, "LEADERBOARD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "leaderboardId":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11, v9}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->generateSubmitScorePopUp(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    .line 181
    :cond_2
    return-object v15
.end method
