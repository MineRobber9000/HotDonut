.class Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;
.super Ljava/lang/Object;
.source "FacebookActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/FacebookActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;->this$0:Lcom/facebook/FacebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/FacebookActivity;Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;-><init>(Lcom/facebook/FacebookActivity;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;->this$0:Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/FacebookActivity;->onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 325
    return-void
.end method
