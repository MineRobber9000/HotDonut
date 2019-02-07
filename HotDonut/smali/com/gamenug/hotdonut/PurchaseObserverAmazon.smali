.class public Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "PurchaseObserverAmazon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;,
        Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;,
        Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;,
        Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;
    }
.end annotation


# static fields
.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final START_DATE:Ljava/lang/String; = "startDate"

.field private static final TAG:Ljava/lang/String; = "Amazon-IAP"


# instance fields
.field private final baseActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0
    .param p1, "Cocos2dxActivity"    # Lorg/cocos2dx/lib/Cocos2dxActivity;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->baseActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->baseActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->printReceipt(Lcom/amazon/inapp/purchasing/Receipt;)V

    return-void
.end method

.method private printReceipt(Lcom/amazon/inapp/purchasing/Receipt;)V
    .locals 5
    .param p1, "receipt"    # Lcom/amazon/inapp/purchasing/Receipt;

    .prologue
    .line 132
    const-string v0, "Amazon-IAP"

    .line 133
    const-string v1, "Receipt: ItemType: %s Sku: %s SubscriptionPeriod: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 134
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/Receipt;->getSubscriptionPeriod()Lcom/amazon/inapp/purchasing/SubscriptionPeriod;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 3
    .param p1, "getUserIdResponse"    # Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    .line 72
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetUserIdResponse recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 3
    .param p1, "itemDataResponse"    # Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    .line 89
    const-string v0, "Amazon-IAP"

    const-string v1, "onItemDataResponse recieved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemDataRequestStatus"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemDataRequestId"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 3
    .param p1, "purchaseResponse"    # Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    .line 105
    const-string v0, "Amazon-IAP"

    const-string v1, "onPurchaseResponse recieved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PurchaseRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 3
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    .line 121
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseUpdatesRecived recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PurchaseUpdatesRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 3
    .param p1, "isSandboxMode"    # Z

    .prologue
    .line 58
    const-string v0, "Amazon-IAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSdkAvailable recieved: Response -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 60
    return-void
.end method
