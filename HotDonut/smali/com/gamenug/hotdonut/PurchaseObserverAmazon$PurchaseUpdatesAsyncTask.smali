.class Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "PurchaseObserverAmazon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseUpdatesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType()[I
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/Item$ItemType;->values()[Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->CONSUMABLE:Lcom/amazon/inapp/purchasing/Item$ItemType;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->ENTITLED:Lcom/amazon/inapp/purchasing/Item$ItemType;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->values()[Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    .prologue
    const/4 v9, 0x0

    .line 281
    aget-object v1, p1, v9

    .line 283
    .local v1, "purchaseUpdatesResponse":Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;
    iget-object v5, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v5}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "userId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 285
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 334
    :goto_0
    return-object v5

    .line 291
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getRevokedSkus()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 296
    invoke-static {}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getPurchaseUpdatesRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 334
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    .local v3, "sku":Ljava/lang/String;
    const-string v6, "Amazon-IAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Revoked Sku:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v3    # "sku":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getReceipts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 321
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->getOffset()Lcom/amazon/inapp/purchasing/Offset;

    move-result-object v0

    .line 323
    .local v0, "newOffset":Lcom/amazon/inapp/purchasing/Offset;
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;->isMore()Z

    .line 327
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 298
    .end local v0    # "newOffset":Lcom/amazon/inapp/purchasing/Offset;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/inapp/purchasing/Receipt;

    .line 299
    .local v2, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 301
    .restart local v3    # "sku":Ljava/lang/String;
    invoke-static {}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType()[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 313
    :pswitch_1
    iget-object v6, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v6, v2}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$1(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/amazon/inapp/purchasing/Receipt;)V

    goto :goto_2

    .line 332
    .end local v2    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    .end local v3    # "sku":Ljava/lang/String;
    :pswitch_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 301
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 343
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseUpdatesAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
