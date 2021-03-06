.class public Lcom/amazon/ags/client/GCResponseHandleImpl;
.super Ljava/lang/Object;
.source "GCResponseHandleImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseHandle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/ags/api/AGResponseHandle",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/amazon/ags/api/AGResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private response:Lcom/amazon/ags/api/RequestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private status:Lcom/amazon/ags/api/AGHandleStatus;

.field private final userData:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "userData"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    .line 21
    sget-object v0, Lcom/amazon/ags/api/AGHandleStatus;->WAITING:Lcom/amazon/ags/api/AGHandleStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->status:Lcom/amazon/ags/api/AGHandleStatus;

    .line 22
    iput-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    .line 26
    iput-object p1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->userData:[Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private callCallback()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    iget-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseCallback;->onComplete(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getResponse()Lcom/amazon/ags/api/RequestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()Lcom/amazon/ags/api/AGHandleStatus;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->status:Lcom/amazon/ags/api/AGHandleStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    .local p1, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<TT;>;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 44
    .local v0, "existingCallback":Z
    :goto_0
    iput-object p1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->callback:Lcom/amazon/ags/api/AGResponseCallback;

    .line 46
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/amazon/ags/client/GCResponseHandleImpl;->callCallback()V

    .line 49
    :cond_0
    monitor-exit p0

    .line 50
    return-void

    .line 42
    .end local v0    # "existingCallback":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setResponse(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    .local p1, "requestResponse":Lcom/amazon/ags/api/RequestResponse;, "TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    .line 54
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    iget-object v1, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->userData:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/RequestResponse;->setUserData([Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->response:Lcom/amazon/ags/api/RequestResponse;

    invoke-interface {v0}, Lcom/amazon/ags/api/RequestResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/ags/api/AGHandleStatus;->ERROR:Lcom/amazon/ags/api/AGHandleStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->status:Lcom/amazon/ags/api/AGHandleStatus;

    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/amazon/ags/client/GCResponseHandleImpl;->callCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/ags/api/AGHandleStatus;->SUCCESS:Lcom/amazon/ags/api/AGHandleStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/GCResponseHandleImpl;->status:Lcom/amazon/ags/api/AGHandleStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
