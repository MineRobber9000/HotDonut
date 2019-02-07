.class Lcom/facebook/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginFragment;->fetchUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginFragment;

.field private final synthetic val$currentSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/LoginFragment;Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/LoginFragment$1;->this$0:Lcom/facebook/LoginFragment;

    iput-object p2, p0, Lcom/facebook/LoginFragment$1;->val$currentSession:Lcom/facebook/Session;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphUser;Lcom/facebook/Response;)V
    .locals 2
    .param p1, "me"    # Lcom/facebook/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/LoginFragment$1;->val$currentSession:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/LoginFragment$1;->this$0:Lcom/facebook/LoginFragment;

    invoke-virtual {v1}, Lcom/facebook/LoginFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/facebook/LoginFragment$1;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v0, p1}, Lcom/facebook/LoginFragment;->access$6(Lcom/facebook/LoginFragment;Lcom/facebook/GraphUser;)V

    .line 211
    iget-object v0, p0, Lcom/facebook/LoginFragment$1;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v0}, Lcom/facebook/LoginFragment;->access$7(Lcom/facebook/LoginFragment;)V

    .line 213
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/facebook/LoginFragment$1;->this$0:Lcom/facebook/LoginFragment;

    invoke-static {v0}, Lcom/facebook/LoginFragment;->access$8(Lcom/facebook/LoginFragment;)Lcom/facebook/LoginButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 216
    :cond_1
    return-void
.end method
