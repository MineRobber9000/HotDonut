.class Lcom/facebook/LoginButton$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginButton;->fetchUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginButton;

.field private final synthetic val$currentSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/LoginButton;Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    iput-object p2, p0, Lcom/facebook/LoginButton$1;->val$currentSession:Lcom/facebook/Session;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .param p1, "me"    # Lcom/facebook/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/facebook/LoginButton$1;->val$currentSession:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v1}, Lcom/facebook/LoginButton;->access$0(Lcom/facebook/LoginButton;)Lcom/facebook/SessionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/LoginButton;->access$9(Lcom/facebook/LoginButton;Lcom/facebook/GraphUser;)V

    .line 421
    iget-object v0, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v0}, Lcom/facebook/LoginButton;->access$10(Lcom/facebook/LoginButton;)Lcom/facebook/LoginButton$UserInfoChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v0}, Lcom/facebook/LoginButton;->access$10(Lcom/facebook/LoginButton;)Lcom/facebook/LoginButton$UserInfoChangedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v1}, Lcom/facebook/LoginButton;->access$2(Lcom/facebook/LoginButton;)Lcom/facebook/GraphUser;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/GraphUser;)V

    .line 425
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/facebook/LoginButton$1;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 428
    :cond_1
    return-void
.end method
