.class Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;
.super Ljava/lang/Object;
.source "FacebookFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/FacebookFragment;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;->this$0:Lcom/facebook/FacebookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/FacebookFragment;Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;-><init>(Lcom/facebook/FacebookFragment;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;->this$0:Lcom/facebook/FacebookFragment;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/FacebookFragment;->onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 263
    return-void
.end method
