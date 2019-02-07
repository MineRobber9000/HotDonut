.class Lcom/gamenug/hotdonut/hotdonut$1;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->doLoginForFriendRequest()V
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
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$1;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 195
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "token":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamenug/hotdonut/hotdonut$1;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v3, v2}, Lcom/gamenug/hotdonut/hotdonut;->access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 208
    const-string v1, "select name, uid, is_app_user from user where uid in (select uid2 from friend where uid1=me()) and is_app_user = 1 order by name"

    .line 209
    .local v1, "query":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "params":Landroid/os/Bundle;
    const-string v3, "method"

    const-string v4, "fql.query"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const/4 v4, 0x0

    .line 213
    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;

    iget-object v6, p0, Lcom/gamenug/hotdonut/hotdonut$1;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {v5, v6}, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 212
    invoke-virtual {v3, v4, v0, v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 215
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 223
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 219
    return-void
.end method
