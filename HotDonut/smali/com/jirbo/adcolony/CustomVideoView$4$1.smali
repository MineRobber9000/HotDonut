.class Lcom/jirbo/adcolony/CustomVideoView$4$1;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/CustomVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jirbo/adcolony/CustomVideoView$4;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/CustomVideoView$4;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$4$1;->this$1:Lcom/jirbo/adcolony/CustomVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$4$1;->this$1:Lcom/jirbo/adcolony/CustomVideoView$4;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$4$1;->this$1:Lcom/jirbo/adcolony/CustomVideoView$4;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/CustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/CustomVideoView$4$1;->this$1:Lcom/jirbo/adcolony/CustomVideoView$4;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView$4;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/CustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 965
    :cond_0
    return-void
.end method
