.class Lcom/pubnub/api/Pubnub$6;
.super Lcom/pubnub/http/ResponseHandler;
.source "Pubnub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubnub/api/Pubnub;->_subscribe_base(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubnub/api/Pubnub;


# direct methods
.method constructor <init>(Lcom/pubnub/api/Pubnub;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-direct {p0}, Lcom/pubnub/http/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimetoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v0}, Lcom/pubnub/api/Pubnub;->access$200(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v0}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubnub/api/Subscriptions;->invokeDisconnectCallbackOnChannels()V

    .line 1055
    iget-object v0, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubnub/api/Pubnub;->access$600(Lcom/pubnub/api/Pubnub;Z)V

    .line 1056
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 14
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 963
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pubnub/api/Subscriptions;->invokeConnectCallbackOnChannels()V

    .line 976
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 977
    .local v4, "jsa":Lorg/json/JSONArray;
    invoke-static {}, Lcom/pubnub/api/Pubnub;->access$100()Lorg/apache/log4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RESUME_ON_RECONNECT is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v11}, Lcom/pubnub/api/Pubnub;->isResumeOnReconnect()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 978
    iget-object v10, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$300(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-virtual {v9}, Lcom/pubnub/api/Pubnub;->isResumeOnReconnect()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$300(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-static {v10, v9}, Lcom/pubnub/api/Pubnub;->access$202(Lcom/pubnub/api/Pubnub;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    invoke-static {}, Lcom/pubnub/api/Pubnub;->access$100()Lorg/apache/log4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Saved Timetoken : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v11}, Lcom/pubnub/api/Pubnub;->access$300(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 981
    invoke-static {}, Lcom/pubnub/api/Pubnub;->access$100()Lorg/apache/log4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In sub 0 Response Timetoken : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 982
    invoke-static {}, Lcom/pubnub/api/Pubnub;->access$100()Lorg/apache/log4j/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timetoken : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v11}, Lcom/pubnub/api/Pubnub;->access$200(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 983
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    const-string v10, "0"

    invoke-static {v9, v10}, Lcom/pubnub/api/Pubnub;->access$302(Lcom/pubnub/api/Pubnub;Ljava/lang/String;)Ljava/lang/String;

    .line 984
    new-instance v7, Lorg/json/JSONArray;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 987
    .local v7, "messages":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-le v9, v12, :cond_3

    .line 992
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-static {v9, v10}, Lcom/pubnub/api/PubnubUtil;->splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "_channels":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_5

    .line 996
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v9

    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Lcom/pubnub/api/Subscriptions;->getChannel(Ljava/lang/String;)Lcom/pubnub/api/Channel;

    move-result-object v0

    .line 998
    .local v0, "_channel":Lcom/pubnub/api/Channel;
    if-eqz v0, :cond_0

    .line 999
    const/4 v5, 0x0

    .line 1000
    .local v5, "jsobj":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$400(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v10}, Lcom/pubnub/api/Pubnub;->access$500(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1001
    new-instance v8, Lcom/pubnub/crypto/PubnubCrypto;

    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$400(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/pubnub/crypto/PubnubCrypto;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1003
    .local v8, "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :try_start_1
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pubnub/crypto/PubnubCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, "message":Ljava/lang/String;
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/pubnub/api/Pubnub;->stringToJSON(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 995
    .end local v5    # "jsobj":Lorg/json/JSONObject;
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 978
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "_channels":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v7    # "messages":Lorg/json/JSONArray;
    :cond_1
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1006
    .restart local v0    # "_channel":Lcom/pubnub/api/Channel;
    .restart local v1    # "_channels":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "jsobj":Lorg/json/JSONObject;
    .restart local v7    # "messages":Lorg/json/JSONArray;
    .restart local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message Decryption Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1047
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "_channels":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "jsa":Lorg/json/JSONArray;
    .end local v5    # "jsobj":Lorg/json/JSONObject;
    .end local v7    # "messages":Lorg/json/JSONArray;
    .end local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :catch_1
    move-exception v2

    .line 1048
    .local v2, "e":Lorg/json/JSONException;
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9, v13}, Lcom/pubnub/api/Pubnub;->access$600(Lcom/pubnub/api/Pubnub;Z)V

    .line 1051
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 1011
    .restart local v0    # "_channel":Lcom/pubnub/api/Channel;
    .restart local v1    # "_channels":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "jsa":Lorg/json/JSONArray;
    .restart local v5    # "jsobj":Lorg/json/JSONObject;
    .restart local v7    # "messages":Lorg/json/JSONArray;
    :cond_2
    :try_start_3
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1022
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v1    # "_channels":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "jsobj":Lorg/json/JSONObject;
    :cond_3
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pubnub/api/Subscriptions;->getFirstChannel()Lcom/pubnub/api/Channel;

    move-result-object v0

    .line 1025
    .restart local v0    # "_channel":Lcom/pubnub/api/Channel;
    if-eqz v0, :cond_5

    .line 1026
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 1027
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$400(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v10}, Lcom/pubnub/api/Pubnub;->access$500(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1028
    new-instance v8, Lcom/pubnub/crypto/PubnubCrypto;

    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v9}, Lcom/pubnub/api/Pubnub;->access$400(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/pubnub/crypto/PubnubCrypto;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1030
    .restart local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :try_start_4
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pubnub/crypto/PubnubCrypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1031
    .restart local v6    # "message":Ljava/lang/String;
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/pubnub/api/Pubnub;->stringToJSON(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1026
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1033
    .restart local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :catch_2
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Message Decryption Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1038
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "pc":Lcom/pubnub/crypto/PubnubCrypto;
    :cond_4
    iget-object v9, v0, Lcom/pubnub/api/Channel;->callback:Lcom/pubnub/api/Callback;

    iget-object v10, v0, Lcom/pubnub/api/Channel;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1046
    .end local v0    # "_channel":Lcom/pubnub/api/Channel;
    .end local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/pubnub/api/Pubnub;->access$600(Lcom/pubnub/api/Pubnub;Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3
.end method

.method public handleTimeout()V
    .locals 4

    .prologue
    .line 1059
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1060
    .local v1, "jsobj":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v2}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubnub/api/Subscriptions;->invokeDisconnectCallbackOnChannels()V

    .line 1061
    invoke-static {}, Lcom/pubnub/api/Pubnub;->access$100()Lorg/apache/log4j/Logger;

    move-result-object v2

    const-string v3, "Timeout Occurred, Calling error callbacks on the channels"

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 1063
    :try_start_0
    const-string v2, "error"

    const-string v3, "Network Timeout"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string v2, "timetoken"

    iget-object v3, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v3}, Lcom/pubnub/api/Pubnub;->access$200(Lcom/pubnub/api/Pubnub;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v2}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pubnub/api/Subscriptions;->invokeErrorCallbackOnChannels(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v2}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubnub/api/Subscriptions;->removeAllChannels()V

    .line 1071
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/pubnub/api/Pubnub$6;->this$0:Lcom/pubnub/api/Pubnub;

    invoke-static {v2}, Lcom/pubnub/api/Pubnub;->access$000(Lcom/pubnub/api/Pubnub;)Lcom/pubnub/api/Subscriptions;

    move-result-object v2

    const-string v3, "Network Timeout"

    invoke-virtual {v2, v3}, Lcom/pubnub/api/Subscriptions;->invokeErrorCallbackOnChannels(Ljava/lang/Object;)V

    goto :goto_0
.end method
