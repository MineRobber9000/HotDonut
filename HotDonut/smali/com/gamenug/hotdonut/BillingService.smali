.class public Lcom/gamenug/hotdonut/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamenug/hotdonut/BillingService$BillingRequest;,
        Lcom/gamenug/hotdonut/BillingService$CheckBillingSupported;,
        Lcom/gamenug/hotdonut/BillingService$ConfirmNotifications;,
        Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;,
        Lcom/gamenug/hotdonut/BillingService$RequestPurchase;,
        Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/gamenug/hotdonut/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/gamenug/hotdonut/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/gamenug/hotdonut/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sput-object v0, Lcom/gamenug/hotdonut/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 344
    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/BillingService;)Z
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/gamenug/hotdonut/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/gamenug/hotdonut/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/gamenug/hotdonut/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/gamenug/hotdonut/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/gamenug/hotdonut/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 403
    :try_start_0
    const-string v3, "BillingService"

    const-string v4, "binding to Market billing service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    const/4 v4, 0x1

    .line 405
    invoke-virtual {p0, v3, p0, v4}, Lcom/gamenug/hotdonut/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 410
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 418
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 413
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/gamenug/hotdonut/Consts$ResponseCode;)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/gamenug/hotdonut/Consts$ResponseCode;

    .prologue
    .line 527
    sget-object v1, Lcom/gamenug/hotdonut/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamenug/hotdonut/BillingService$BillingRequest;

    .line 528
    .local v0, "request":Lcom/gamenug/hotdonut/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 530
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0, p3}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;->responseCodeReceived(Lcom/gamenug/hotdonut/Consts$ResponseCode;)V

    .line 534
    :cond_0
    sget-object v1, Lcom/gamenug/hotdonut/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 465
    new-instance v0, Lcom/gamenug/hotdonut/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamenug/hotdonut/BillingService$ConfirmNotifications;-><init>(Lcom/gamenug/hotdonut/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;-><init>(Lcom/gamenug/hotdonut/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {p2, p3}, Lcom/gamenug/hotdonut/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 496
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gamenug/hotdonut/Security$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 510
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/gamenug/hotdonut/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 501
    .end local v7    # "notifyIds":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;

    .line 502
    .local v10, "vp":Lcom/gamenug/hotdonut/Security$VerifiedPurchase;
    iget-object v0, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_3
    iget-object v1, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->purchaseState:Lcom/gamenug/hotdonut/Consts$PurchaseState;

    iget-object v2, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 506
    iget-object v3, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v10, Lcom/gamenug/hotdonut/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    .line 505
    invoke-static/range {v0 .. v6}, Lcom/gamenug/hotdonut/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/gamenug/hotdonut/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private runPendingRequests()V
    .locals 5

    .prologue
    .line 542
    const/4 v0, -0x1

    .line 544
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/gamenug/hotdonut/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gamenug/hotdonut/BillingService$BillingRequest;

    .local v1, "request":Lcom/gamenug/hotdonut/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 565
    if-ltz v0, :cond_1

    .line 567
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopping service, startId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0, v0}, Lcom/gamenug/hotdonut/BillingService;->stopSelf(I)V

    .line 571
    :cond_1
    :goto_1
    return-void

    .line 545
    :cond_2
    invoke-virtual {v1}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    sget-object v2, Lcom/gamenug/hotdonut/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 551
    invoke-virtual {v1}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 552
    invoke-virtual {v1}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 557
    :cond_3
    invoke-direct {p0}, Lcom/gamenug/hotdonut/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/gamenug/hotdonut/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/gamenug/hotdonut/BillingService$CheckBillingSupported;-><init>(Lcom/gamenug/hotdonut/BillingService;)V

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "action":Ljava/lang/String;
    const-string v9, "BillingService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleCommand() action: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v9, "com.gamenug.hotdonut.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 377
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/gamenug/hotdonut/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 393
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const-string v9, "com.gamenug.hotdonut.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 380
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "notifyId":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/gamenug/hotdonut/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 382
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_2
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 383
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 385
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/gamenug/hotdonut/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 387
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 388
    .local v3, "requestId":J
    const-string v9, "response_code"

    .line 389
    sget-object v10, Lcom/gamenug/hotdonut/Consts$ResponseCode;->RESULT_ERROR:Lcom/gamenug/hotdonut/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/gamenug/hotdonut/Consts$ResponseCode;->ordinal()I

    move-result v10

    .line 388
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 390
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/gamenug/hotdonut/Consts$ResponseCode;->valueOf(I)Lcom/gamenug/hotdonut/Consts$ResponseCode;

    move-result-object v5

    .line 391
    .local v5, "responseCode":Lcom/gamenug/hotdonut/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/gamenug/hotdonut/BillingService;->checkResponseCode(JLcom/gamenug/hotdonut/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 579
    const-string v0, "BillingService"

    const-string v1, "Billing service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/gamenug/hotdonut/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 582
    invoke-direct {p0}, Lcom/gamenug/hotdonut/BillingService;->runPendingRequests()V

    .line 583
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 589
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x0

    sput-object v0, Lcom/gamenug/hotdonut/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 591
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/gamenug/hotdonut/BillingService;->handleCommand(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 440
    new-instance v0, Lcom/gamenug/hotdonut/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/gamenug/hotdonut/BillingService$RequestPurchase;-><init>(Lcom/gamenug/hotdonut/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;-><init>(Lcom/gamenug/hotdonut/BillingService;)V

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 348
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 599
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/gamenug/hotdonut/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    goto :goto_0
.end method
