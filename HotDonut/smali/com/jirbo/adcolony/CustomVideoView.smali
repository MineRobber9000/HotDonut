.class Lcom/jirbo/adcolony/CustomVideoView;
.super Landroid/view/SurfaceView;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field static final STATE_ERROR:I = -0x1

.field static final STATE_IDLE:I = 0x0

.field static final STATE_PAUSED:I = 0x4

.field static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESUME:I = 0x7

.field static final STATE_SUSPEND:I = 0x6

.field static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field TAG:Ljava/lang/String;

.field fd:Ljava/io/FileDescriptor;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field mCanPause:Z

.field mCanSeekBack:Z

.field mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mCurrentBufferPercentage:I

.field mCurrentState:I

.field mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mMediaController:Landroid/widget/MediaController;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field mStateWhenSuspended:I

.field mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceWidth:I

.field mTargetState:I

.field mUri:Landroid/net/Uri;

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 664
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 618
    const-string v0, "CustomVideoView"

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    .line 641
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 642
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 645
    iput-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 646
    iput-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 847
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$1;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 858
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$2;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 907
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$3;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 921
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$4;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 974
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$5;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$5;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1016
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$6;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 665
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->initVideoView()V

    .line 666
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jirbo/adcolony/CustomVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 670
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->initVideoView()V

    .line 671
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 674
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 618
    const-string v0, "CustomVideoView"

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    .line 641
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 642
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 645
    iput-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 646
    iput-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 847
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$1;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 858
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$2;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 907
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$3;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 921
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$4;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 974
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$5;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$5;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1016
    new-instance v0, Lcom/jirbo/adcolony/CustomVideoView$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/CustomVideoView$6;-><init>(Lcom/jirbo/adcolony/CustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 675
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->initVideoView()V

    .line 676
    return-void
.end method

.method static synthetic access$000(Lcom/jirbo/adcolony/CustomVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jirbo/adcolony/CustomVideoView;

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/jirbo/adcolony/CustomVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jirbo/adcolony/CustomVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/jirbo/adcolony/CustomVideoView;->release(Z)V

    return-void
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 840
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 842
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 843
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 845
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 840
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 730
    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    .line 731
    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    .line 732
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 733
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 734
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/CustomVideoView;->setFocusable(Z)V

    .line 735
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/CustomVideoView;->setFocusableInTouchMode(Z)V

    .line 736
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->requestFocus()Z

    .line 737
    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 738
    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 739
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1215
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 780
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->fd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_2

    .line 827
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 792
    invoke-direct {p0, v6}, Lcom/jirbo/adcolony/CustomVideoView;->release(Z)V

    .line 794
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 795
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 796
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 797
    const/4 v2, -0x1

    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    .line 798
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 799
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 800
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 801
    const/4 v2, 0x0

    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentBufferPercentage:I

    .line 802
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 804
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 805
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 806
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 807
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 810
    const/4 v2, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 811
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    :goto_2
    iput v5, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 816
    iput v5, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 817
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 803
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 819
    :catch_1
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    :goto_3
    iput v5, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 823
    iput v5, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 824
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 814
    .local v0, "ex":Ljava/io/IOException;
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Unable to open content"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 821
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Unable to open content"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1066
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1068
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 1069
    if-eqz p1, :cond_0

    .line 1070
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 1073
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 1129
    :goto_0
    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 777
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1209
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentBufferPercentage:I

    .line 1211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 1178
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    .line 1184
    :goto_0
    return v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    .line 1181
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    goto :goto_0

    .line 1183
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    .line 1184
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1204
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1094
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 1100
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 1101
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 1103
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->pause()V

    .line 1105
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 1120
    :goto_1
    return v1

    .line 1094
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1107
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    .line 1108
    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 1111
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1113
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->pause()V

    .line 1114
    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 1120
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 1116
    :cond_5
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 681
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/jirbo/adcolony/CustomVideoView;->getDefaultSize(II)I

    move-result v1

    .line 682
    .local v1, "width":I
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/jirbo/adcolony/CustomVideoView;->getDefaultSize(II)I

    move-result v0

    .line 683
    .local v0, "height":I
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 684
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 686
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 697
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/CustomVideoView;->setMeasuredDimension(II)V

    .line 698
    return-void

    .line 687
    :cond_1
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 689
    iget v2, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1077
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 1078
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->toggleMediaControlsVisiblity()V

    .line 1080
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->toggleMediaControlsVisiblity()V

    .line 1088
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1140
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1143
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 1146
    :cond_0
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 1147
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 701
    move v0, p1

    .line 702
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 703
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 705
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 726
    :goto_0
    return v0

    .line 710
    :sswitch_0
    move v0, p1

    .line 711
    goto :goto_0

    .line 718
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 719
    goto :goto_0

    .line 723
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 705
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1159
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 1160
    const/4 v0, 0x7

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    if-ne v0, v1, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1165
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mStateWhenSuspended:I

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 1166
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mStateWhenSuspended:I

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    goto :goto_0

    .line 1169
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1197
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    .line 1201
    :goto_0
    return-void

    .line 1199
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 833
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 834
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->attachMediaController()V

    .line 835
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1001
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1014
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 990
    return-void
.end method

.method public setVideoPath(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->fd:Ljava/io/FileDescriptor;

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    .line 750
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->openVideo()V

    .line 751
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->requestLayout()V

    .line 752
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->invalidate()V

    .line 753
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 744
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mUri:Landroid/net/Uri;

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mSeekWhenPrepared:I

    .line 762
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->openVideo()V

    .line 763
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->requestLayout()V

    .line 764
    invoke-virtual {p0}, Lcom/jirbo/adcolony/CustomVideoView;->invalidate()V

    .line 765
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1132
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1134
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 1136
    :cond_0
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 1137
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 770
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 772
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 773
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 775
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1150
    invoke-direct {p0}, Lcom/jirbo/adcolony/CustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1152
    iget v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    iput v0, p0, Lcom/jirbo/adcolony/CustomVideoView;->mStateWhenSuspended:I

    .line 1153
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 1154
    iput v1, p0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 1156
    :cond_0
    return-void
.end method
