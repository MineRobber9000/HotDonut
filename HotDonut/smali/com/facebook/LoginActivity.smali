.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# instance fields
.field private errorDialog:Landroid/app/Dialog;

.field private loginDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/facebook/LoginActivity;->errorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/LoginActivity;->errorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/LoginActivity;->errorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/LoginActivity;->loginDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/LoginActivity;->loginDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/LoginActivity;->loginDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    const-string v6, "android.permission.INTERNET"

    invoke-virtual {p0, v6}, Lcom/facebook/LoginActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 31
    .local v3, "permissionCheck":I
    if-eqz v3, :cond_0

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "AndroidManifest Error"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 34
    const-string v7, "WebView login requires INTERNET permission"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 35
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 36
    sget v7, Lcom/facebook/android/R$string;->com_facebook_dialogloginactivity_ok_button:I

    .line 37
    new-instance v8, Lcom/facebook/LoginActivity$1;

    invoke-direct {v8, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    .line 36
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 43
    new-instance v7, Lcom/facebook/LoginActivity$2;

    invoke-direct {v7, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/LoginActivity;->errorDialog:Landroid/app/Dialog;

    .line 50
    iget-object v6, p0, Lcom/facebook/LoginActivity;->errorDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 51
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/facebook/LoginActivity;->setResult(I)V

    .line 115
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v2, "parameters":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "scope"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "permissions":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 58
    const-string v6, "scope"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/facebook/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 64
    new-instance v1, Lcom/facebook/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$3;-><init>(Lcom/facebook/LoginActivity;)V

    .line 107
    .local v1, "listener":Lcom/facebook/android/Facebook$DialogListener;
    const-string v6, "display"

    const-string v7, "touch"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v6, "redirect_uri"

    const-string v7, "fbconnect://success"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v6, "type"

    const-string v7, "user_agent"

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v6, "client_id"

    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "client_id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v6, "m.facebook.com"

    const-string v7, "dialog/oauth"

    invoke-static {v6, v7, v2}, Lcom/facebook/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v5

    .line 113
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/facebook/android/FbDialog;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    iput-object v6, p0, Lcom/facebook/LoginActivity;->loginDialog:Landroid/app/Dialog;

    .line 114
    iget-object v6, p0, Lcom/facebook/LoginActivity;->loginDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
