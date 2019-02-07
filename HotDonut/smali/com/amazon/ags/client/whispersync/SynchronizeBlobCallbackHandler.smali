.class public Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;
.super Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;
.source "SynchronizeBlobCallbackHandler.java"


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V
    .locals 0
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    .param p2, "summaryRepository"    # Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/whispersync/SynchronizeCallbackHandler;-><init>(Lcom/amazon/ags/api/whispersync/SynchronizeCallback;Lcom/amazon/ags/client/whispersync/savedgame/SummaryRepository;)V

    .line 34
    iput-object p1, p0, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .line 35
    return-void
.end method


# virtual methods
.method protected final processDownloadedData([B)Z
    .locals 1
    .param p1, "gameData"    # [B

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/ags/client/whispersync/SynchronizeBlobCallbackHandler;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    invoke-interface {v0, p1}, Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;->onNewGameData([B)Z

    move-result v0

    return v0
.end method
