.class Lcom/jirbo/adcolony/AdColonyBrowser$1;
.super Landroid/webkit/WebChromeClient;
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
    .line 58
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$1;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$1;->val$activity:Landroid/app/Activity;

    mul-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 64
    return-void
.end method
