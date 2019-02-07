.class Lcom/jirbo/adcolony/OnVCResultHandler;
.super Landroid/os/Handler;
.source "AdColony.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 382
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 383
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->onV4VCResult(I)V

    goto :goto_0
.end method
