.class Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

.field final synthetic val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    invoke-virtual {v2}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->getCallback()Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    move-result-object v0

    .line 104
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    new-instance v1, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v2}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 105
    .local v1, "callbackHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    invoke-virtual {v3}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$200(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 106
    return-void
.end method
