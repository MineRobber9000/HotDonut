.class Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

.field final synthetic val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 138
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-virtual {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->getCallback()Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    move-result-object v0

    .line 140
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-virtual {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->getData()[B

    move-result-object v3

    .line 141
    .local v3, "gameData":[B
    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No data to be saved"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v0, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 157
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v4, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-virtual {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;-><init>([BLjava/lang/String;)V

    .line 149
    .local v4, "pendingUpload":Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    :try_start_0
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v5}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storePendingUpload(Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    new-instance v1, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v5}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 156
    .local v1, "callbackHandler":Landroid/os/Handler;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    invoke-virtual {v6}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;->getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v6

    invoke-static {v5, v1, v0, v6}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$200(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    goto :goto_0

    .line 150
    .end local v1    # "callbackHandler":Landroid/os/Handler;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v0, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0
.end method
