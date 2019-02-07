.class public Lcom/amazon/ags/client/AmazonGamesStatusHandler;
.super Landroid/os/Handler;
.source "AmazonGamesStatusHandler.java"


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/AmazonGamesStatusHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/AmazonGamesCallback;)V
    .locals 0
    .param p1, "amazonGamesCallback"    # Lcom/amazon/ags/api/AmazonGamesCallback;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    .line 27
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/amazon/ags/api/AmazonGamesStatus;

    if-eqz v1, :cond_2

    .line 32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 34
    .local v0, "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    sget-object v1, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game received status update of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v1, p0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    if-nez v1, :cond_0

    .line 47
    .end local v0    # "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    :goto_0
    return-void

    .line 39
    .restart local v0    # "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    :cond_0
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGamesCallback;->onServiceReady()V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    invoke-interface {v1, v0}, Lcom/amazon/ags/api/AmazonGamesCallback;->onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0

    .line 45
    .end local v0    # "status":Lcom/amazon/ags/api/AmazonGamesStatus;
    :cond_2
    sget-object v1, Lcom/amazon/ags/client/AmazonGamesStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting message object of AmazonGamesStatus, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
