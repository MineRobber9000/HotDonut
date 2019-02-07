.class public Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;
.super Ljava/lang/Object;
.source "PopUpManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/overlay/PopUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AGOverlayClickListener"
.end annotation


# instance fields
.field private final content:Lcom/amazon/ags/overlay/PopUpContent;

.field private final overlay:Lcom/amazon/ags/overlay/AGSToast;

.field final synthetic this$0:Lcom/amazon/ags/overlay/PopUpManager;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/overlay/PopUpManager;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/overlay/AGSToast;)V
    .locals 0
    .param p2, "content"    # Lcom/amazon/ags/overlay/PopUpContent;
    .param p3, "overlay"    # Lcom/amazon/ags/overlay/AGSToast;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->this$0:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->content:Lcom/amazon/ags/overlay/PopUpContent;

    .line 122
    iput-object p3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->overlay:Lcom/amazon/ags/overlay/AGSToast;

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 127
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->overlay:Lcom/amazon/ags/overlay/AGSToast;

    invoke-virtual {v3}, Lcom/amazon/ags/overlay/AGSToast;->destroy()V

    .line 128
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->content:Lcom/amazon/ags/overlay/PopUpContent;

    invoke-virtual {v3}, Lcom/amazon/ags/overlay/PopUpContent;->getOverlayActionCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 150
    invoke-static {}, Lcom/amazon/ags/overlay/PopUpManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No defined onClick action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->this$0:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-static {v3}, Lcom/amazon/ags/overlay/PopUpManager;->access$000(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/achievements/AchievementsService;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v4, v5}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/client/achievements/AchievementsService;->showAchievementsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->this$0:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-static {v3}, Lcom/amazon/ags/overlay/PopUpManager;->access$100(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v4, v5}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->showLeaderboardsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->content:Lcom/amazon/ags/overlay/PopUpContent;

    invoke-virtual {v3}, Lcom/amazon/ags/overlay/PopUpContent;->getOverlayData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "LEADERBOARD_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "leaderboardId":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->this$0:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-static {v3}, Lcom/amazon/ags/overlay/PopUpManager;->access$100(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    move-result-object v3

    new-instance v4, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v4, v5}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Lcom/amazon/ags/client/leaderboards/LeaderboardsService;->showRanksOverlay(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0

    .line 141
    .end local v1    # "leaderboardId":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 142
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x1d

    iput v3, v2, Landroid/os/Message;->what:I

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;->this$0:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-static {v3}, Lcom/amazon/ags/overlay/PopUpManager;->access$200(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/amazon/ags/overlay/PopUpManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending message to service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
