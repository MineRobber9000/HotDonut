.class Lcom/gamenug/hotdonut/hotdonut$15;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->getRequestData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;

.field private final synthetic val$inRequestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$15;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    iput-object p2, p0, Lcom/gamenug/hotdonut/hotdonut$15;->val$inRequestId:Ljava/lang/String;

    .line 1227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 17
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1232
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/GraphObject;

    move-result-object v12

    .line 1233
    .local v12, "graphObject":Lcom/facebook/GraphObject;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v10

    .line 1235
    .local v10, "error":Lcom/facebook/FacebookException;
    const-string v15, "Incoming request"

    .line 1236
    .local v15, "message":Ljava/lang/String;
    const-string v5, "hoverreq"

    const-string v6, "inc req"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    if-eqz v12, :cond_0

    .line 1239
    const-string v5, "hoverreq"

    const-string v6, "inc req2"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v5, "data"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1242
    :try_start_0
    const-string v5, "hoverreq"

    const-string v6, "inc req3"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance v8, Lorg/json/JSONObject;

    .line 1247
    const-string v5, "data"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1246
    check-cast v5, Ljava/lang/String;

    .line 1245
    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v8, "dataObject":Lorg/json/JSONObject;
    const-string v5, "t"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1254
    .local v16, "time":Ljava/lang/String;
    const-string v5, "lt"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1257
    .local v13, "lasttime":Ljava/lang/String;
    const-string v5, "l"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1259
    .local v14, "level":Ljava/lang/String;
    const-string v5, "xp"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1261
    .local v3, "xpos":Ljava/lang/String;
    const-string v5, "yp"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1264
    .local v4, "ypos":Ljava/lang/String;
    const-string v5, "from"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1263
    check-cast v11, Lorg/json/JSONObject;

    .line 1266
    .local v11, "fromObject":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "sender":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "senderid":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1276
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1277
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 1270
    invoke-static/range {v1 .. v7}, Lcom/gamenug/hotdonut/hotdonut;->nativeSubmitRace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFF)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    .end local v1    # "sender":Ljava/lang/String;
    .end local v2    # "senderid":Ljava/lang/String;
    .end local v3    # "xpos":Ljava/lang/String;
    .end local v4    # "ypos":Ljava/lang/String;
    .end local v8    # "dataObject":Lorg/json/JSONObject;
    .end local v11    # "fromObject":Lorg/json/JSONObject;
    .end local v13    # "lasttime":Ljava/lang/String;
    .end local v14    # "level":Ljava/lang/String;
    .end local v16    # "time":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gamenug/hotdonut/hotdonut$15;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gamenug/hotdonut/hotdonut$15;->val$inRequestId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/gamenug/hotdonut/hotdonut;->access$15(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    .line 1294
    return-void

    .line 1281
    :catch_0
    move-exception v9

    .line 1282
    .local v9, "e":Lorg/json/JSONException;
    const-string v15, "Error getting request info"

    goto :goto_0

    .line 1284
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_1
    if-eqz v10, :cond_0

    .line 1285
    const-string v15, "Error getting request info"

    goto :goto_0
.end method
