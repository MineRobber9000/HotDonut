.class Lcom/jirbo/adcolony/CustomVideoView$2;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 858
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 860
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    const/4 v2, 0x2

    iput v2, v1, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 862
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput-boolean v4, v3, Lcom/jirbo/adcolony/CustomVideoView;->mCanSeekForward:Z

    iput-boolean v4, v2, Lcom/jirbo/adcolony/CustomVideoView;->mCanSeekBack:Z

    iput-boolean v4, v1, Lcom/jirbo/adcolony/CustomVideoView;->mCanPause:Z

    .line 864
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iput v2, v1, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    .line 871
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    iput v2, v1, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    .line 873
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v1, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    .line 874
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 875
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/CustomVideoView;->seekTo(I)V

    .line 877
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    if-eqz v1, :cond_6

    .line 879
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v3, v3, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 880
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHeight:I

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    if-ne v1, v2, :cond_3

    .line 884
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    if-ne v1, v5, :cond_4

    .line 885
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    .line 886
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_3

    .line 887
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 904
    :cond_3
    :goto_0
    return-void

    .line 889
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 891
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_3

    .line 893
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 900
    :cond_6
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    if-ne v1, v5, :cond_3

    .line 901
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$2;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    goto :goto_0
.end method
