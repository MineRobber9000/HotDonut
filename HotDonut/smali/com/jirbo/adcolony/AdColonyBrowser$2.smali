.class Lcom/jirbo/adcolony/AdColonyBrowser$2;
.super Landroid/webkit/WebViewClient;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    .line 80
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failing_url"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error viewing URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 75
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v1, "market:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyBrowser;->startActivity(Landroid/content/Intent;)V

    .line 88
    const/4 v1, 0x1

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
