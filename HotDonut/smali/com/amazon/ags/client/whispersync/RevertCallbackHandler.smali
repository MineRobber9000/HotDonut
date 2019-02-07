.class public abstract Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;
.super Landroid/os/Handler;
.source "RevertCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/whispersync/RevertCallbackHandler$1;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

.field private final marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

.field private final summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/RevertCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 1
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/RevertCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;

    invoke-direct {v0}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    .line 53
    iput-object p2, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .line 54
    return-void
.end method

.method private processDownload(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    sget-object v4, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v5, "Revert Download Success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v4, "STC_DATA"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 101
    .local v1, "data":[B
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_2

    .line 102
    :cond_0
    sget-object v4, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v5, "Expected downloaded gameData"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v4, v5}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    sget-object v4, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received callback DOWNLOAD_SUCCESS data.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v4, "CLOUD_GAME_SUMMARY"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "summaryJson":Ljava/lang/String;
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->marshaller:Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;

    invoke-interface {v4, v3}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;->unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v2

    .line 113
    .local v2, "summary":Lcom/amazon/ags/client/whispersync/GameSummary;
    invoke-virtual {p0, v1, v2}, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->storePendingDownload([BLcom/amazon/ags/client/whispersync/GameSummary;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 114
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    sget-object v5, Lcom/amazon/ags/api/ErrorCode;->IO_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v4, v5}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->processDownloadedData([B)Z

    move-result v0

    .line 119
    .local v0, "applied":Z
    if-eqz v0, :cond_1

    .line 120
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4, v2}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storeSummary(Lcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 121
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingUpload()V

    .line 122
    iget-object v4, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v4}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->removePendingDownload()V

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Handling revert blob response message"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 60
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 63
    :cond_0
    const-string v5, "REVERT_RESULT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "resultString":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 65
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 66
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Received null revert result"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 71
    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/amazon/ags/constants/whispersync/RevertResultKey;->valueOf(Ljava/lang/String;)Lcom/amazon/ags/constants/whispersync/RevertResultKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .local v3, "result":Lcom/amazon/ags/constants/whispersync/RevertResultKey;
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler$1;->$SwitchMap$com$amazon$ags$constants$whispersync$RevertResultKey:[I

    invoke-virtual {v3}, Lcom/amazon/ags/constants/whispersync/RevertResultKey;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 94
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected message received.  Result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v3    # "result":Lcom/amazon/ags/constants/whispersync/RevertResultKey;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    sget-object v6, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    .line 74
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unrecognized revert result of: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "result":Lcom/amazon/ags/constants/whispersync/RevertResultKey;
    :pswitch_0
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Revert cancelled by player"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    invoke-interface {v5}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onPlayerCancelled()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->processDownload(Landroid/os/Bundle;)V

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v5, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v6, "Revert Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v5, "ERROR"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "errorCode":I
    iget-object v5, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/RevertCallback;

    invoke-static {v1}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/ags/api/whispersync/RevertCallback;->onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract processDownloadedData([B)Z
.end method

.method protected final storePendingDownload([BLcom/amazon/ags/client/whispersync/GameSummary;)Z
    .locals 4
    .param p1, "gameData"    # [B
    .param p2, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    .line 127
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;

    invoke-direct {v0, p1, p2}, Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;-><init>([BLcom/amazon/ags/client/whispersync/GameSummary;)V

    .line 129
    .local v0, "download":Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;
    :try_start_0
    iget-object v2, p0, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->summaryRepository:Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    invoke-interface {v2, v0}, Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;->storePendingDownload(Lcom/amazon/ags/client/whispersync/savedgame/PendingDownload;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v2, 0x1

    .line 133
    :goto_0
    return v2

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/amazon/ags/client/whispersync/RevertCallbackHandler;->TAG:Ljava/lang/String;

    const-string v3, "Failed storing PendingDownload"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    goto :goto_0
.end method
