.class Lcom/jirbo/adcolony/OnVCSuccessHandler;
.super Landroid/os/Handler;
.source "AdColony.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 391
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 392
    .local v0, "ad":Lcom/jirbo/adcolony/AdColonyVideoAd;
    sget v1, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_amount:I

    .line 393
    .local v1, "amount":I
    sget-object v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_name:Ljava/lang/String;

    .line 395
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lcom/jirbo/adcolony/AdColonyDialog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/jirbo/adcolony/AdColonyDialog;->post_popup:I

    invoke-direct {v3, v4, v5, v0}, Lcom/jirbo/adcolony/AdColonyDialog;-><init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 396
    return-void
.end method
