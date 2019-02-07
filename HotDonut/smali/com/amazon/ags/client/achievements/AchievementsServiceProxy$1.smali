.class Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;
.super Ljava/lang/Object;
.source "AchievementsServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->loadIcon(Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;ZLcom/amazon/ags/client/GCResponseHandleImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

.field final synthetic val$achievementId:Ljava/lang/String;

.field final synthetic val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

.field final synthetic val$iconSize:Lcom/amazon/ags/constants/IconSize;

.field final synthetic val$msg:Landroid/os/Message;

.field final synthetic val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

.field final synthetic val$unlocked:Z


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;Z)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iput-object p4, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    iput-object p5, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$achievementId:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$iconSize:Lcom/amazon/ags/constants/IconSize;

    iput-boolean p7, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$unlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$replyMessengerFactory:Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    iget-object v3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-virtual {v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->getReplyHandleMessenger(Lcom/amazon/ags/client/GCResponseHandleImpl;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 78
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$msg:Landroid/os/Message;

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iget-object v3, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$achievementId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$iconSize:Lcom/amazon/ags/constants/IconSize;

    invoke-virtual {v4}, Lcom/amazon/ags/constants/IconSize;->name()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$unlocked:Z

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->access$000(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 80
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->this$0:Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    invoke-static {v1}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;->access$100(Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$msg:Landroid/os/Message;

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy$1;->val$handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    new-instance v2, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    const/16 v3, 0x14

    sget-object v4, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v2, v3, v4}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v1, v2}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method
