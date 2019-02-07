.class Lcom/pubnub/api/Pubnub$3;
.super Lcom/pubnub/http/ResponseHandler;
.source "Pubnub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubnub/api/Pubnub;->history(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubnub/api/Pubnub;

.field final synthetic val$callback:Lcom/pubnub/api/Callback;

.field final synthetic val$channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/pubnub/api/Pubnub$3;->this$0:Lcom/pubnub/api/Pubnub;

    iput-object p2, p0, Lcom/pubnub/api/Pubnub$3;->val$callback:Lcom/pubnub/api/Callback;

    iput-object p3, p0, Lcom/pubnub/api/Pubnub$3;->val$channel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pubnub/http/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 556
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .local v1, "jsarr":Lorg/json/JSONArray;
    :goto_0
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$3;->val$callback:Lcom/pubnub/api/Callback;

    iget-object v3, p0, Lcom/pubnub/api/Pubnub$3;->val$channel:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    return-void

    .line 557
    .end local v1    # "jsarr":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 559
    .restart local v1    # "jsarr":Lorg/json/JSONArray;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "Error: Failed JSON HTTP PubnubRequest"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 545
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .local v1, "jsarr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$3;->val$callback:Lcom/pubnub/api/Callback;

    iget-object v3, p0, Lcom/pubnub/api/Pubnub$3;->val$channel:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    .end local v1    # "jsarr":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0, p1}, Lcom/pubnub/api/Pubnub$3;->handleError(Ljava/lang/String;)V

    goto :goto_0
.end method
