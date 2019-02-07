.class Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

.field final synthetic val$callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->val$callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/amazon/ags/client/whispersync/RevertMultiFileCallbackHandler;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->val$callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-static {v2}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/whispersync/RevertMultiFileCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 250
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->this$0:Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;->val$callback:Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    invoke-static {v1, v2, v0}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->access$500(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/RevertCallback;Landroid/os/Handler;)V

    .line 251
    return-void
.end method
