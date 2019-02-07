.class Lcom/gamenug/hotdonut/hotdonut$9;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->doPostToWall()V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$9;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 907
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut$9;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v1, v0}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 912
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut$9;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    const-string v3, "feed"

    iget-object v4, p0, Lcom/gamenug/hotdonut/hotdonut$9;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    iget-object v4, v4, Lcom/gamenug/hotdonut/hotdonut;->currentParams:Landroid/os/Bundle;

    .line 913
    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;

    iget-object v6, p0, Lcom/gamenug/hotdonut/hotdonut$9;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {v5, v6}, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 912
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 914
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 922
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 918
    return-void
.end method
