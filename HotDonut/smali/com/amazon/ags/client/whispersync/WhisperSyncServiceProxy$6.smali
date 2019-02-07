.class Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

.field final synthetic val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 166
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-virtual {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->getCallback()Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    move-result-object v0

    .line 170
    .local v0, "callback":Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;
    :try_start_0
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-static {v5, v6}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$400(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)Lcom/amazon/ags/client/whispersync/GameSavePackager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ags/client/whispersync/GameSavePackager;->pack()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 176
    .local v4, "zipData":[B
    if-nez v4, :cond_0

    .line 177
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No data to be saved"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v0, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 192
    .end local v4    # "zipData":[B
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception in asynchronous save: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v0, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 182
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "zipData":[B
    :cond_0
    new-instance v3, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-virtual {v5}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;-><init>([BLjava/lang/String;)V

    .line 184
    .local v3, "pendingUpload":Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    :try_start_1
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v5}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storePendingUpload(Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    new-instance v1, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;

    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v5}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 191
    .local v1, "callbackHandler":Landroid/os/Handler;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;->val$request:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    invoke-virtual {v6}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v6

    invoke-static {v5, v1, v0, v6}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$200(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    goto :goto_0

    .line 185
    .end local v1    # "callbackHandler":Landroid/os/Handler;
    :catch_1
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v0, v5}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0
.end method
