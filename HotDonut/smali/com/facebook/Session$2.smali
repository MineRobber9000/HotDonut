.class Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->tryDialogAuth(Lcom/facebook/Session$AuthorizationRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field private final synthetic val$request:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    iput-object p2, p0, Lcom/facebook/Session$2;->val$request:Lcom/facebook/Session$AuthorizationRequest;

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 1229
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    const-string v1, "User canceled log in."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/Session;->finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1231
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1207
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1208
    iget-object v1, p0, Lcom/facebook/Session$2;->val$request:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/facebook/AccessToken;->createFromDialog(Ljava/util/List;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1209
    .local v0, "newToken":Lcom/facebook/AccessToken;
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-static {v1, p1}, Lcom/facebook/Session;->access$7(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1210
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/Session;->finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1211
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 4
    .param p1, "error"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 1214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1215
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1216
    const-string v2, "com.facebook.sdk.FailingUrl"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getFailingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-static {v2, v0}, Lcom/facebook/Session;->access$7(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 1219
    new-instance v1, Lcom/facebook/FacebookAuthorizationException;

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v1, "exception":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/facebook/Session;->finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1221
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 1224
    new-instance v0, Lcom/facebook/FacebookAuthorizationException;

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v0, "exception":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/Session;->finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    .line 1226
    return-void
.end method
