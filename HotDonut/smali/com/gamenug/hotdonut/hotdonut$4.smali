.class Lcom/gamenug/hotdonut/hotdonut$4;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->doFacebookLoginLike()V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$4;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 323
    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$4;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v2, v0}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 327
    new-instance v1, Landroid/content/Intent;

    .line 328
    const-string v2, "android.intent.action.VIEW"

    .line 329
    const-string v3, "http://www.facebook.com/hotdonut"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 327
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 330
    .local v1, "urlIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$4;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v2, v1}, Lcom/gamenug/hotdonut/hotdonut;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 339
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 335
    return-void
.end method
