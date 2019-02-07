.class Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/SessionTracker;


# direct methods
.method private constructor <init>(Lcom/facebook/SessionTracker;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/SessionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionTracker;Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/SessionTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 210
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/SessionTracker;

    invoke-static {v1}, Lcom/facebook/SessionTracker;->access$0(Lcom/facebook/SessionTracker;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 214
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_0
    return-void
.end method
