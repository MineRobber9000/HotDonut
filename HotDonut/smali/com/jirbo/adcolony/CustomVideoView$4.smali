.class Lcom/jirbo/adcolony/CustomVideoView$4;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/CustomVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/CustomVideoView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/CustomVideoView;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 924
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput v5, v2, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 926
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput v5, v2, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 927
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v2, :cond_2

    .line 933
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v3, v3, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 970
    :cond_1
    :goto_0
    return v6

    .line 943
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/CustomVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 944
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/CustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 947
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 948
    const-string v0, "Invalid progressive playback"

    .line 953
    .local v0, "messageId":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/CustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OKAY"

    new-instance v4, Lcom/jirbo/adcolony/CustomVideoView$4$1;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/CustomVideoView$4$1;-><init>(Lcom/jirbo/adcolony/CustomVideoView$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 950
    .end local v0    # "messageId":Ljava/lang/String;
    :cond_3
    const-string v0, "Unknown error"

    .restart local v0    # "messageId":Ljava/lang/String;
    goto :goto_1
.end method
