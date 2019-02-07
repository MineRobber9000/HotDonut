.class Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;
.super Ljava/lang/Object;
.source "LeaderboardsServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->showLeaderboardsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

.field final synthetic val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iput-object p4, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$replyMessengerFactory:Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;

    iget-object v3, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsReplyMessengerFactory;->getReplyHandleMessenger(Lcom/amazon/ags/client/GCResponseHandleImpl;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 168
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    invoke-static {v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->access$300(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 170
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->this$0:Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    invoke-static {v1}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;->access$000(Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy$5;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    new-instance v2, Lcom/amazon/ags/client/RequestResponseImp;

    const/16 v3, 0x12

    sget-object v4, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v1, v2}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method
