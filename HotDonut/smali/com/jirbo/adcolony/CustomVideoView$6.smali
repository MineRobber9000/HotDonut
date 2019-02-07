.class Lcom/jirbo/adcolony/CustomVideoView$6;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 1017
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1021
    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput p3, v4, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceWidth:I

    .line 1022
    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput p4, v4, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHeight:I

    .line 1023
    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 1024
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 1025
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1026
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    if-eqz v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v3, v3, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/CustomVideoView;->seekTo(I)V

    .line 1029
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    .line 1030
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_1

    .line 1031
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 1034
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 1023
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 1024
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput-object p1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1040
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1043
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->resume()V

    .line 1047
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-static {v0}, Lcom/jirbo/adcolony/CustomVideoView;->access$000(Lcom/jirbo/adcolony/CustomVideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1053
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$6;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/CustomVideoView;->access$100(Lcom/jirbo/adcolony/CustomVideoView;Z)V

    .line 1057
    :cond_1
    return-void
.end method
