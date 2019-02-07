.class Lcom/jirbo/adcolony/AdColonyBannerAd$2;
.super Landroid/webkit/WebViewClient;
.source "AdColonyBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyBannerAd;->init()V
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
    .line 139
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBannerAd;->loaded:Z

    .line 149
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdColonyBannerAd;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBannerAd$2;->this$0:Lcom/jirbo/adcolony/AdColonyBannerAd;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdColonyBannerAd;->getHeight()I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyBannerAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failing_url"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BannerAd WebView error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    const/4 v1, 0x1

    return v1
.end method
