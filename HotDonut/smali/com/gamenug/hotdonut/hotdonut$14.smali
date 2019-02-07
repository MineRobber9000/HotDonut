.class Lcom/gamenug/hotdonut/hotdonut$14;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamenug/hotdonut/hotdonut;->getPendingRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$14;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 19
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 1146
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/GraphObject;

    move-result-object v12

    .line 1147
    .local v12, "graphObject":Lcom/facebook/GraphObject;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v10

    .line 1149
    .local v10, "error":Lcom/facebook/FacebookException;
    const-string v16, "Incoming request"

    .line 1151
    .local v16, "message":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 1154
    const-string v5, "data"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1159
    :try_start_0
    const-string v5, "data"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 1158
    check-cast v17, Lorg/json/JSONArray;

    .line 1161
    .local v17, "requests":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v13, v5, :cond_1

    .line 1216
    .end local v13    # "i":I
    .end local v17    # "requests":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 1166
    .restart local v13    # "i":I
    .restart local v17    # "requests":Lorg/json/JSONArray;
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1167
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1171
    .local v8, "dataObject":Lorg/json/JSONObject;
    const-string v5, "t"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1174
    .local v18, "time":Ljava/lang/String;
    const-string v5, "lt"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1177
    .local v14, "lasttime":Ljava/lang/String;
    const-string v5, "l"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1179
    .local v15, "level":Ljava/lang/String;
    const-string v5, "xp"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "xpos":Ljava/lang/String;
    const-string v5, "yp"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1184
    .local v4, "ypos":Ljava/lang/String;
    const-string v5, "from"

    invoke-interface {v12, v5}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1183
    check-cast v11, Lorg/json/JSONObject;

    .line 1186
    .local v11, "fromObject":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "sender":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "senderid":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1196
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1197
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 1190
    invoke-static/range {v1 .. v7}, Lcom/gamenug/hotdonut/hotdonut;->nativeSubmitRace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFF)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gamenug/hotdonut/hotdonut$14;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    .line 1201
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1202
    const-string v7, "id"

    .line 1201
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1200
    invoke-static {v5, v6}, Lcom/gamenug/hotdonut/hotdonut;->access$15(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1204
    .end local v1    # "sender":Ljava/lang/String;
    .end local v2    # "senderid":Ljava/lang/String;
    .end local v3    # "xpos":Ljava/lang/String;
    .end local v4    # "ypos":Ljava/lang/String;
    .end local v8    # "dataObject":Lorg/json/JSONObject;
    .end local v11    # "fromObject":Lorg/json/JSONObject;
    .end local v13    # "i":I
    .end local v14    # "lasttime":Ljava/lang/String;
    .end local v15    # "level":Ljava/lang/String;
    .end local v17    # "requests":Lorg/json/JSONArray;
    .end local v18    # "time":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1205
    .local v9, "e":Lorg/json/JSONException;
    const-string v16, "Error getting request info"

    goto :goto_1

    .line 1207
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    if-eqz v10, :cond_0

    .line 1208
    const-string v16, "Error getting request info"

    goto :goto_1
.end method
