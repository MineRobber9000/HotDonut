.class public final Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;
.super Ljava/lang/Object;
.source "WhisperSyncServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/WhisperSyncClient;


# static fields
.field private static final DEFAULT_CONFLICT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final apiHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

.field private final summaryMarshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

.field private final summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->DEFAULT_CONFLICT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p3, "apiHandler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 67
    iput-object p3, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/whispersync/GameSavePackager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    .line 69
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryMarshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .line 70
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryMarshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-direct {v0, p1, v1}, Lcom/amazon/ags/client/whispersync/savedgame/FileBackedSummaryRepository;-><init>(Landroid/content/Context;Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;)V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;)Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->DEFAULT_CONFLICT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/amazon/ags/api/whispersync/SynchronizeCallback;
    .param p3, "x3"    # Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->synchronizeInternal(Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)Lcom/amazon/ags/client/whispersync/GameSavePackager;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;
    .param p1, "x1"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->getPackager(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)Lcom/amazon/ags/client/whispersync/GameSavePackager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/RevertCallback;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;
    .param p1, "x1"    # Lcom/amazon/ags/api/whispersync/RevertCallback;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->requestRevert(Lcom/amazon/ags/api/whispersync/RevertCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private createRequestBundleWithData([BLjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "STC_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 309
    const-string v1, "STC_DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v0
.end method

.method private getPackager(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)Lcom/amazon/ags/client/whispersync/GameSavePackager;
    .locals 3
    .param p1, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Lcom/amazon/ags/client/whispersync/GameSavePackager;

    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/whispersync/GameSavePackager;-><init>(Landroid/content/Context;Ljava/io/FilenameFilter;)V

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    goto :goto_0
.end method

.method private requestRevert(Lcom/amazon/ags/api/whispersync/RevertCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertCallback;
    .param p2, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 256
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v3}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {p1, v3}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 262
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x16

    iput v3, v2, Landroid/os/Message;->what:I

    .line 264
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    :try_start_0
    iget-object v3, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v3, v2}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "Unable to send Message to Service: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {p1, v3}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0
.end method

.method private synchronizeInternal(Landroid/os/Handler;Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V
    .locals 9
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeCallback;
    .param p3, "conflictStrategy"    # Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "A Callback must be provided to synchronize"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_0
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v6}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {p2, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 231
    :goto_0
    return-void

    .line 209
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v6}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->retrievePendingUpload()Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 215
    .local v5, "pendingUpload":Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 216
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0x15

    iput v6, v4, Landroid/os/Message;->what:I

    .line 217
    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 218
    invoke-virtual {v5}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getData()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->createRequestBundleWithData([BLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "SAVE_TIME"

    invoke-virtual {v5}, Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;->getSaveTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 220
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v6}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->retrieveSummary()Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v2

    .line 221
    .local v2, "localSummary":Lcom/amazon/ags/client/whispersync/GameSummary;
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryMarshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v6, v2}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->marshal(Lcom/amazon/ags/client/whispersync/GameSummary;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "localSummaryJson":Ljava/lang/String;
    const-string v6, "LOCAL_GAME_SUMMARY"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v6, "CONFLICT_STRATEGY"

    invoke-virtual {p3}, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 226
    :try_start_1
    iget-object v6, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v6, v4}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    const-string v7, "Unable to send Message to Service: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {p2, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 210
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "localSummary":Lcom/amazon/ags/client/whispersync/GameSummary;
    .end local v3    # "localSummaryJson":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pendingUpload":Lcom/amazon/ags/client/whispersync/savedgame/PendingUpload;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {p2, v6}, Lcom/amazon/ags/api/whispersync/SynchronizeCallback;->onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0
.end method


# virtual methods
.method public final hasNewMultiFileGameData()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v0}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->hasPendingDownload()Z

    move-result v0

    return v0
.end method

.method public requestRevert(Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertBlobCallback;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$7;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/RevertBlobCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method public requestRevert(Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$8;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public setFilter(Ljava/io/FilenameFilter;)V
    .locals 1
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/client/whispersync/GameSavePackager;->setFilter(Ljava/io/FilenameFilter;)V

    .line 76
    return-void
.end method

.method public setPackager(Lcom/amazon/ags/client/whispersync/GameSavePackager;)V
    .locals 0
    .param p1, "override"    # Lcom/amazon/ags/client/whispersync/GameSavePackager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    .line 85
    return-void
.end method

.method public synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$1;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$2;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$3;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public synchronize(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$4;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$5;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeBlobProgressRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public synchronizeProgress(Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy$6;-><init>(Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileProgressRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public final unpackNewMultiFileGameData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->retrievePendingDownload()Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;

    move-result-object v0

    .line 291
    .local v0, "pendingDownload":Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->gamePackager:Lcom/amazon/ags/client/whispersync/GameSavePackager;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/ags/client/whispersync/GameSavePackager;->unpack([B)V

    .line 293
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v1}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingDownload()V

    .line 294
    iget-object v1, p0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-virtual {v0}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;->getSummary()Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 295
    sget-object v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Successfully unpacked new multi-file game data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    sget-object v1, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Tried to unpack, but no data exists.  Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
