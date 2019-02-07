.class Lcom/jirbo/adcolony/CustomVideoView$5;
.super Ljava/lang/Object;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 975
    iput-object p1, p0, Lcom/jirbo/adcolony/CustomVideoView$5;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 977
    iget-object v0, p0, Lcom/jirbo/adcolony/CustomVideoView$5;->this$0:Lcom/jirbo/adcolony/CustomVideoView;

    iput p2, v0, Lcom/jirbo/adcolony/CustomVideoView;->mCurrentBufferPercentage:I

    .line 978
    return-void
.end method
