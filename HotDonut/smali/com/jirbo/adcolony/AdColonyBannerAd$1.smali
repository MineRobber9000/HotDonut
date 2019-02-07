.class Lcom/jirbo/adcolony/AdColonyBannerAd$1;
.super Landroid/os/Handler;
.source "AdColonyBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyBannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh()V

    .line 48
    :cond_1
    return-void
.end method
