.class Lcom/facebook/LoginButton$LoginButtonCallback;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginButtonCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/facebook/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/LoginButton;Lcom/facebook/LoginButton$LoginButtonCallback;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/facebook/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/facebook/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v0}, Lcom/facebook/LoginButton;->access$7(Lcom/facebook/LoginButton;)V

    .line 508
    iget-object v0, p0, Lcom/facebook/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v0}, Lcom/facebook/LoginButton;->access$8(Lcom/facebook/LoginButton;)V

    .line 509
    if-eqz p3, :cond_0

    .line 510
    iget-object v0, p0, Lcom/facebook/LoginButton$LoginButtonCallback;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v0, p3}, Lcom/facebook/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 512
    :cond_0
    return-void
.end method
