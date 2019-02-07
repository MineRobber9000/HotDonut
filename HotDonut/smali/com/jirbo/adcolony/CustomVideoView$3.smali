.class Lcom/jirbo/adcolony/CustomVideoView$3;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 908
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 910
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput v1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentState:I

    .line 911
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput v1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mTargetState:I

    .line 912
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$3;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 918
    :cond_1
    return-void
.end method
