.class Lcom/facebook/SessionTracker;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;,
        Lcom/facebook/SessionTracker$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "session"    # Lcom/facebook/Session;

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "session"    # Lcom/facebook/Session;
    .param p4, "startTracking"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    .line 70
    new-instance v0, Lcom/facebook/SessionTracker$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/facebook/SessionTracker$CallbackWrapper;-><init>(Lcom/facebook/SessionTracker;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    .line 71
    iput-object p3, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    .line 72
    new-instance v0, Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/SessionTracker;Lcom/facebook/SessionTracker$ActiveSessionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 75
    if-eqz p4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->startTracking()V

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/SessionTracker;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/SessionTracker;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method private addBroadcastReceiver()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/facebook/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 199
    return-void
.end method


# virtual methods
.method getOpenSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 97
    .local v0, "openSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    .end local v0    # "openSession":Lcom/facebook/Session;
    :goto_0
    return-object v0

    .restart local v0    # "openSession":Lcom/facebook/Session;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    goto :goto_0
.end method

.method isTracking()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    return v0
.end method

.method isTrackingActiveSession()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSession(Lcom/facebook/Session;)V
    .locals 3
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    .line 115
    invoke-direct {p0}, Lcom/facebook/SessionTracker;->addBroadcastReceiver()V

    .line 116
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v1, :cond_3

    .line 124
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 125
    .local v0, "activeSession":Lcom/facebook/Session;
    if-eqz v0, :cond_2

    .line 126
    iget-object v1, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/facebook/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    .end local v0    # "activeSession":Lcom/facebook/Session;
    :goto_1
    iput-object p1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    .line 136
    iget-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_1
.end method

.method startTracking()V
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/facebook/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/facebook/SessionTracker;->addBroadcastReceiver()V

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 154
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    goto :goto_0
.end method

.method stopTracking()V
    .locals 3

    .prologue
    .line 162
    iget-boolean v1, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 166
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/facebook/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/facebook/SessionTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/SessionTracker;->isTracking:Z

    goto :goto_0
.end method
