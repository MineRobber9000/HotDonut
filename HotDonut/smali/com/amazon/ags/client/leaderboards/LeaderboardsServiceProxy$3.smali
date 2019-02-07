.class Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;
.super Ljava/lang/Object;
.source "LeaderboardsServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->requestScores(Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;IILcom/amazon/ags/client/GCResponseHandleImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

.field final synthetic val$count:I

.field final synthetic val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

.field final synthetic val$leaderboardFilter:Lcom/amazon/ags/constants/LeaderboardFilter;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

.field final synthetic val$startRank:I

.field final synthetic val$uniqueID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    iput-object p5, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$uniqueID:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$leaderboardFilter:Lcom/amazon/ags/constants/LeaderboardFilter;

    iput p7, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$startRank:I

    iput p8, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->getReplyHandleMessenger(Lcom/amazon/ags/client/GCResponseHandleImpl;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 117
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    iget-object v3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$uniqueID:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$leaderboardFilter:Lcom/amazon/ags/constants/LeaderboardFilter;

    iget v5, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$startRank:I

    iget v6, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$count:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->access$200(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Ljava/lang/String;Lcom/amazon/ags/constants/LeaderboardFilter;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 119
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    invoke-static {v1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->access$000(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$3;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    new-instance v2, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;

    const/16 v3, 0x12

    sget-object v4, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/amazon/ags/client/leaderboards/GetScoresResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v1, v2}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method
