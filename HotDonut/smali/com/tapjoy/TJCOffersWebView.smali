.class public Lcom/tapjoy/TJCOffersWebView;
.super Landroid/app/Activity;
.source "TJCOffersWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;
    }
.end annotation


# instance fields
.field final TAPJOY_OFFERS:Ljava/lang/String;

.field private clientPackage:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private offersURL:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private skipOfferWall:Z

.field private urlParams:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    .line 39
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    .line 48
    const-string v0, "Offers"

    iput-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->TAPJOY_OFFERS:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCOffersWebView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TJCOffersWebView;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$2(Lcom/tapjoy/TJCOffersWebView;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tapjoy/TJCOffersWebView;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    return v0
.end method

.method private onCreateTJCOffersWebView(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/tapjoy/TJCOffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 62
    const-string v4, "DISPLAY_AD_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 64
    iput-boolean v7, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    .line 65
    const-string v4, "DISPLAY_AD_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    .line 101
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clientPackage: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TJCOffersWebView;->clientPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v7}, Lcom/tapjoy/TJCOffersWebView;->requestWindowFeature(I)Z

    .line 108
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v1, "layout":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    .line 113
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;

    invoke-direct {v5, p0, v11}, Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;-><init>(Lcom/tapjoy/TJCOffersWebView;Lcom/tapjoy/TJCOffersWebView$TapjoyWebViewClient;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 116
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    new-instance v4, Landroid/widget/ProgressBar;

    const v5, 0x101007a

    invoke-direct {v4, p0, v11, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 121
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4, v9, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 130
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCOffersWebView;->setContentView(Landroid/view/View;)V

    .line 135
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opening URL = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 70
    .end local v1    # "layout":Landroid/widget/RelativeLayout;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :cond_0
    iput-boolean v10, p0, Lcom/tapjoy/TJCOffersWebView;->skipOfferWall:Z

    .line 72
    const-string v4, "URL_PARAMS"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 73
    const-string v4, "USER_ID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    .line 76
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&publisher_user_id="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->userID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoIDs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&video_offer_ids="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoIDs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    .line 82
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getVideoIDs: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getVideoIDs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    const-string v4, "Offers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "urlParams: ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://ws.tapjoyads.com/get_offers/webpage?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TJCOffersWebView;->urlParams:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_2
    const-string v4, "Offers"

    const-string v5, "Tapjoy offers meta data initialization fail."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDestroyTJCOffersWebView()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 164
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 165
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 167
    :cond_0
    return-void
.end method

.method private onResumeTJCOffersWebView()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tapjoy/TJCOffersWebView;->offersURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/android/Kiwi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffersWebView;->onCreateTJCOffersWebView(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJCOffersWebView;->onDestroyTJCOffersWebView()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/tapjoy/TJCOffersWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 381
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJCOffersWebView;->onResumeTJCOffersWebView()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    return-void
.end method
