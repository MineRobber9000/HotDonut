.class Lcom/facebook/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/LoginActivity$3;->this$0:Lcom/facebook/LoginActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setResultAndFinish(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/facebook/LoginActivity$3;->this$0:Lcom/facebook/LoginActivity;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/facebook/LoginActivity$3;->this$0:Lcom/facebook/LoginActivity;

    invoke-virtual {v1}, Lcom/facebook/LoginActivity;->finish()V

    .line 104
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/facebook/LoginActivity$3;->this$0:Lcom/facebook/LoginActivity;

    invoke-virtual {v1, p1}, Lcom/facebook/LoginActivity;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/LoginActivity$3;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 68
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/LoginActivity$3;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "com.facebook.sdk.FailingUrl"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getFailingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/LoginActivity$3;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/LoginActivity$3;->setResultAndFinish(ILandroid/os/Bundle;)V

    .line 89
    return-void
.end method
