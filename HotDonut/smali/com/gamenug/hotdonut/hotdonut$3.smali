.class Lcom/gamenug/hotdonut/hotdonut$3;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->doFacebookLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$3;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 283
    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$3;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v2, v1}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$3;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v2}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 287
    const-string v3, "You are now logged in to Facebook."

    .line 288
    const/4 v4, 0x0

    .line 286
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 289
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 291
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$3;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v2}, Lcom/gamenug/hotdonut/hotdonut;->requestUserData()V

    .line 292
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 300
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 296
    return-void
.end method
