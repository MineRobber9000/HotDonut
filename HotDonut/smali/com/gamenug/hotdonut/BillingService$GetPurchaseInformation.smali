.class Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;
.super Lcom/gamenug/hotdonut/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/gamenug/hotdonut/BillingService;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "startId"    # I
    .param p3, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->this$0:Lcom/gamenug/hotdonut/BillingService;

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;-><init>(Lcom/gamenug/hotdonut/BillingService;I)V

    .line 282
    iput-object p3, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 283
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/gamenug/hotdonut/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 301
    iget-wide v0, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/gamenug/hotdonut/Security;->removeNonce(J)V

    .line 302
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-static {}, Lcom/gamenug/hotdonut/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->mNonce:J

    .line 289
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 290
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 291
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/gamenug/hotdonut/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 293
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/gamenug/hotdonut/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 294
    const-string v2, "REQUEST_ID"

    .line 295
    sget-wide v3, Lcom/gamenug/hotdonut/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 294
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
