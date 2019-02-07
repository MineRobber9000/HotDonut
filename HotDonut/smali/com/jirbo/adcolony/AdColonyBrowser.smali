.class public Lcom/jirbo/adcolony/AdColonyBrowser;
.super Landroid/app/Activity;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;
    }
.end annotation


# static fields
.field static url:Ljava/lang/String;


# instance fields
.field layout:Landroid/widget/FrameLayout;

.field page_loaded:Z

.field web_view:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    .line 112
    return-void
.end method

.method private onCreateAdColonyBrowser(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/AdColonyBrowser;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 45
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setVolumeControlStream(I)V

    .line 50
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    .line 51
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 55
    move-object v0, p0

    .line 57
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyBrowser$1;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/AdColonyBrowser$1;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyBrowser$2;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/AdColonyBrowser$2;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->layout:Landroid/widget/FrameLayout;

    .line 96
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->layout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;

    invoke-direct {v2, p0, p0}, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    sget-object v2, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 103
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

    invoke-direct {p0, p1}, Lcom/jirbo/adcolony/AdColonyBrowser;->onCreateAdColonyBrowser(Landroid/os/Bundle;)V

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

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 109
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser;->finish()V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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
