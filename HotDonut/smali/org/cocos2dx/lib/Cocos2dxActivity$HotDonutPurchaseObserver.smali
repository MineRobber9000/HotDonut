.class Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;
.super Lcom/gamenug/hotdonut/PurchaseObserver;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotDonutPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/gamenug/hotdonut/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 248
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 3
    .param p1, "supported"    # Z

    .prologue
    .line 253
    const-string v0, "Cocos2dxActivityIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public onPurchaseStateChange(Lcom/gamenug/hotdonut/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 3
    .param p1, "purchaseState"    # Lcom/gamenug/hotdonut/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "Cocos2dxActivityIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object v0, Lcom/gamenug/hotdonut/Consts$PurchaseState;->PURCHASED:Lcom/gamenug/hotdonut/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 280
    const-string v0, "crystals20"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(I)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const-string v0, "crystals50"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    const/16 v0, 0x32

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(I)V

    goto :goto_0

    .line 284
    :cond_2
    const-string v0, "crystals200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(I)V

    goto :goto_0

    .line 286
    :cond_3
    const-string v0, "crystals500"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    const/16 v0, 0x1f4

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(I)V

    goto :goto_0

    .line 288
    :cond_4
    const-string v0, "crystals2000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$0(I)V

    goto :goto_0

    .line 293
    :cond_5
    const-string v0, "Cocos2dxActivityIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    const-string v2, " Doesn\'t match any thing!! :P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Lcom/gamenug/hotdonut/BillingService$RequestPurchase;Lcom/gamenug/hotdonut/Consts$ResponseCode;)V
    .locals 3
    .param p1, "request"    # Lcom/gamenug/hotdonut/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/gamenug/hotdonut/Consts$ResponseCode;

    .prologue
    .line 306
    const-string v0, "Cocos2dxActivityIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gamenug/hotdonut/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v0, Lcom/gamenug/hotdonut/Consts$ResponseCode;->RESULT_OK:Lcom/gamenug/hotdonut/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 310
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "purchase was successfully sent to server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Lcom/gamenug/hotdonut/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/gamenug/hotdonut/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 316
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_1
    const-string v0, "Cocos2dxActivityIAP"

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;Lcom/gamenug/hotdonut/Consts$ResponseCode;)V
    .locals 5
    .param p1, "request"    # Lcom/gamenug/hotdonut/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/gamenug/hotdonut/Consts$ResponseCode;

    .prologue
    .line 332
    sget-object v2, Lcom/gamenug/hotdonut/Consts$ResponseCode;->RESULT_OK:Lcom/gamenug/hotdonut/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 334
    const-string v2, "Cocos2dxActivityIAP"

    const-string v3, "completed RestoreTransactions request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 344
    :cond_0
    const-string v2, "Cocos2dxActivityIAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RestoreTransactions error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
