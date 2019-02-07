.class Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

.field final synthetic val$callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->val$callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->val$callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v2}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/whispersync/SynchronizeMultiFileCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 116
    .local v0, "callbackHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;->val$callback:Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    invoke-static {}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$100()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$200(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    .line 117
    return-void
.end method
