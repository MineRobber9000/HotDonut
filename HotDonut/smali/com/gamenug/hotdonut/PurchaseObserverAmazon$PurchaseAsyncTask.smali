.class Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;
.super Landroid/os/AsyncTask;
.source "PurchaseObserverAmazon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/PurchaseResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType()[I
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

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
    sput-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType:[I

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

.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->values()[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    .prologue
    const/4 v8, 0x0

    .line 218
    aget-object v1, p1, v8

    .line 219
    .local v1, "purchaseResponse":Lcom/amazon/inapp/purchasing/PurchaseResponse;
    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v4}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "userId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v4}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setCurrentUser(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$PurchaseResponse$PurchaseRequestStatus()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 261
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    .line 233
    :pswitch_0
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    .line 234
    .local v2, "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    const-string v0, ""

    .line 235
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$Item$ItemType()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/inapp/purchasing/Item$ItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 243
    :goto_1
    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$1(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/amazon/inapp/purchasing/Receipt;)V

    .line 244
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 237
    :pswitch_1
    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v4}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPurchaseAmazon(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "receipt":Lcom/amazon/inapp/purchasing/Receipt;
    :pswitch_2
    const-string v5, "Amazon-IAP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Failed purchase for request"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v4}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity;->requestIds:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 258
    :pswitch_3
    const-string v5, "Amazon-IAP"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Sku for request "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v4}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity;->requestIds:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 235
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/PurchaseResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 270
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$PurchaseAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
