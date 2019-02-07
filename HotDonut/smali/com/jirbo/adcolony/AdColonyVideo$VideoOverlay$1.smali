.class Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;
.super Landroid/os/Handler;
.source "AdColonyVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;->this$1:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 472
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;->this$1:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;->this$1:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->onButton(I)V

    goto :goto_0
.end method
