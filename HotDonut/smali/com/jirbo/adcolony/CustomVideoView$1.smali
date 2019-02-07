.class Lcom/jirbo/adcolony/CustomVideoView$1;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 848
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    .line 851
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    .line 852
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mVideoWidth:I

    iget-object v2, p0, Lcom/jirbo/adcolony/CustomVideoView$1;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/CustomVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 855
    :cond_0
    return-void
.end method
