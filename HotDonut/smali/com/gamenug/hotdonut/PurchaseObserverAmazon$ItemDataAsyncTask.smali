.class Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;
.super Landroid/os/AsyncTask;
.source "PurchaseObserverAmazon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/ItemDataResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->values()[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus:[I

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

.method private constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/ItemDataResponse;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/ItemDataResponse;

    .prologue
    const/4 v11, 0x0

    .line 183
    aget-object v1, p1, v11

    .line 185
    .local v1, "itemDataResponse":Lcom/amazon/inapp/purchasing/ItemDataResponse;
    invoke-static {}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$ItemDataAsyncTask;->$SWITCH_TABLE$com$amazon$inapp$purchasing$ItemDataResponse$ItemDataRequestStatus()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 206
    :cond_0
    :pswitch_0
    const/4 v5, 0x0

    return-object v5

    .line 188
    :pswitch_1
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    :pswitch_2
    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v2

    .line 195
    .local v2, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Item;

    .line 197
    .local v0, "i":Lcom/amazon/inapp/purchasing/Item;
    const-string v6, "Amazon-IAP"

    const-string v7, "Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v0    # "i":Lcom/amazon/inapp/purchasing/Item;
    .end local v2    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    .local v4, "s":Ljava/lang/String;
    const-string v6, "Amazon-IAP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unavailable SKU:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
