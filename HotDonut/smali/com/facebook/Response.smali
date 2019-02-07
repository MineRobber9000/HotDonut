.class public Lcom/facebook/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookException;

.field private final graphObject:Lcom/facebook/GraphObject;

.field private final graphObjectList:Lcom/facebook/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectList",
            "<",
            "Lcom/facebook/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/Response;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 82
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 83
    iput-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    .line 84
    iput-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/GraphObjectList;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 86
    iput-object p3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookException;

    .line 87
    return-void
.end method

.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/GraphObject;Lcom/facebook/GraphObjectList;Z)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "graphObject"    # Lcom/facebook/GraphObject;
    .param p5, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphObject;",
            "Lcom/facebook/GraphObjectList",
            "<",
            "Lcom/facebook/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p4, "graphObjects":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 69
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Expected either a graphObject or multiple graphObjects, but not both."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 73
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 74
    iput-object p3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    .line 75
    iput-object p4, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/GraphObjectList;

    .line 76
    iput-boolean p5, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookException;

    .line 78
    return-void
.end method

.method private static checkResponseAndCreateException(Lorg/json/JSONObject;)Lcom/facebook/FacebookServiceErrorException;
    .locals 12
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x0

    .line 359
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 361
    .local v2, "responseCode":I
    const-string v1, "body"

    const-string v11, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v1, v11}, Lcom/facebook/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 363
    .local v7, "body":Ljava/lang/Object;
    if-eqz v7, :cond_3

    instance-of v1, v7, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 364
    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 367
    .local v6, "jsonBody":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 368
    .local v4, "errorType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 369
    .local v5, "errorMessage":Ljava/lang/String;
    const/4 v3, -0x1

    .line 371
    .local v3, "errorCode":I
    const/4 v9, 0x0

    .line 372
    .local v9, "hasError":Z
    const-string v1, "error"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    const-string v1, "error"

    const/4 v11, 0x0

    invoke-static {v6, v1, v11}, Lcom/facebook/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 376
    .local v8, "error":Lorg/json/JSONObject;
    const-string v1, "type"

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 377
    const-string v1, "message"

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    const-string v1, "code"

    const/4 v11, -0x1

    invoke-virtual {v8, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 379
    const/4 v9, 0x1

    .line 388
    .end local v8    # "error":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v9, :cond_3

    .line 389
    new-instance v1, Lcom/facebook/FacebookServiceErrorException;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/FacebookServiceErrorException;-><init>(IILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 402
    .end local v2    # "responseCode":I
    .end local v3    # "errorCode":I
    .end local v4    # "errorType":Ljava/lang/String;
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "jsonBody":Lorg/json/JSONObject;
    .end local v7    # "body":Ljava/lang/Object;
    .end local v9    # "hasError":Z
    :goto_1
    return-object v1

    .line 380
    .restart local v2    # "responseCode":I
    .restart local v3    # "errorCode":I
    .restart local v4    # "errorType":Ljava/lang/String;
    .restart local v5    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "jsonBody":Lorg/json/JSONObject;
    .restart local v7    # "body":Ljava/lang/Object;
    .restart local v9    # "hasError":Z
    :cond_1
    const-string v1, "error_code"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error_msg"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 381
    const-string v1, "error_reason"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :cond_2
    const-string v1, "error_reason"

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    const-string v1, "error_msg"

    const/4 v11, 0x0

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    const-string v1, "error_code"

    const/4 v11, -0x1

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 385
    const/4 v9, 0x1

    goto :goto_0

    .line 395
    .end local v3    # "errorCode":I
    .end local v4    # "errorType":Ljava/lang/String;
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "jsonBody":Lorg/json/JSONObject;
    .end local v9    # "hasError":Z
    :cond_3
    const/16 v1, 0xc8

    if-lt v2, v1, :cond_4

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_5

    .line 396
    :cond_4
    new-instance v1, Lcom/facebook/FacebookServiceErrorException;

    invoke-direct {v1, v2}, Lcom/facebook/FacebookServiceErrorException;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 399
    .end local v2    # "responseCode":I
    .end local v7    # "body":Ljava/lang/Object;
    :catch_0
    move-exception v1

    :cond_5
    move-object v1, v10

    .line 402
    goto :goto_1
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 408
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 413
    return-object v3

    .line 410
    :cond_0
    new-instance v2, Lcom/facebook/Response;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/Request;

    invoke-direct {v2, v4, p1, p2}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    .line 411
    .local v2, "response":Lcom/facebook/Response;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;Z)Lcom/facebook/Response;
    .locals 16
    .param p0, "request"    # Lcom/facebook/Request;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 325
    move-object/from16 v0, p2

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    move-object/from16 v14, p2

    .line 326
    check-cast v14, Lorg/json/JSONObject;

    .line 328
    .local v14, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v14}, Lcom/facebook/Response;->checkResponseAndCreateException(Lorg/json/JSONObject;)Lcom/facebook/FacebookServiceErrorException;

    move-result-object v13

    .line 329
    .local v13, "exception":Lcom/facebook/FacebookServiceErrorException;
    if-eqz v13, :cond_1

    .line 330
    invoke-virtual {v13}, Lcom/facebook/FacebookServiceErrorException;->getFacebookErrorCode()I

    move-result v1

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_0

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v15

    .line 332
    .local v15, "session":Lcom/facebook/Session;
    if-eqz v15, :cond_0

    .line 333
    invoke-virtual {v15}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 336
    .end local v15    # "session":Lcom/facebook/Session;
    :cond_0
    throw v13

    .line 339
    :cond_1
    const-string v1, "body"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {v14, v1, v2}, Lcom/facebook/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 341
    .local v12, "body":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 342
    .local v4, "graphObject":Lcom/facebook/GraphObject;
    const/4 v5, 0x0

    .line 343
    .local v5, "graphObjectList":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    instance-of v1, v12, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 344
    check-cast v12, Lorg/json/JSONObject;

    .end local v12    # "body":Ljava/lang/Object;
    invoke-static {v12}, Lcom/facebook/GraphObjectWrapper;->createGraphObject(Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v4

    .line 348
    :cond_2
    :goto_0
    new-instance v1, Lcom/facebook/Response;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/GraphObject;Lcom/facebook/GraphObjectList;Z)V

    .line 350
    .end local v4    # "graphObject":Lcom/facebook/GraphObject;
    .end local v5    # "graphObjectList":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    .end local v13    # "exception":Lcom/facebook/FacebookServiceErrorException;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v1

    .line 345
    .restart local v4    # "graphObject":Lcom/facebook/GraphObject;
    .restart local v5    # "graphObjectList":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "exception":Lcom/facebook/FacebookServiceErrorException;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    instance-of v1, v12, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 346
    check-cast v12, Lorg/json/JSONArray;

    .end local v12    # "body":Ljava/lang/Object;
    const-class v1, Lcom/facebook/GraphObject;

    invoke-static {v12, v1}, Lcom/facebook/GraphObjectWrapper;->wrapArray(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v5

    goto :goto_0

    .line 349
    .end local v4    # "graphObject":Lcom/facebook/GraphObject;
    .end local v5    # "graphObjectList":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    .end local v13    # "exception":Lcom/facebook/FacebookServiceErrorException;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_5

    .line 350
    new-instance v6, Lcom/facebook/Response;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/GraphObject;Lcom/facebook/GraphObjectList;Z)V

    move-object v1, v6

    goto :goto_1

    .line 352
    :cond_5
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got unexpected object type in response, class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 12
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    sget-boolean v10, Lcom/facebook/Response;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 276
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 277
    .local v5, "numRequests":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v9, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    const/4 v10, 0x1

    if-ne v5, v10, :cond_1

    .line 280
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/Request;

    .line 285
    .local v7, "request":Lcom/facebook/Request;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "body"

    invoke-virtual {v4, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 288
    .local v8, "responseCode":I
    :goto_0
    const-string v10, "code"

    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 291
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    move-object p2, v3

    .line 302
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "request":Lcom/facebook/Request;
    .end local v8    # "responseCode":I
    .end local p2    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    instance-of v10, p2, Lorg/json/JSONArray;

    if-eqz v10, :cond_2

    move-object v10, p2

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eq v10, v5, :cond_4

    .line 303
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v10, "TODO unexpected number of results"

    invoke-direct {v1, v10}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "exception":Lcom/facebook/FacebookException;
    throw v1

    .line 287
    .end local v1    # "exception":Lcom/facebook/FacebookException;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "request":Lcom/facebook/Request;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    const/16 v8, 0xc8

    goto :goto_0

    .line 295
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookException;

    invoke-direct {v11, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookException;

    invoke-direct {v11, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "request":Lcom/facebook/Request;
    .end local p2    # "object":Ljava/lang/Object;
    :cond_4
    move-object v3, p2

    .line 307
    check-cast v3, Lorg/json/JSONArray;

    .line 309
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_5

    .line 321
    return-object v9

    .line 310
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/Request;

    .line 312
    .restart local v7    # "request":Lcom/facebook/Request;
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 313
    .local v6, "obj":Ljava/lang/Object;
    invoke-static {v7, p0, v6, p3}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;Z)Lcom/facebook/Response;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3

    .line 309
    .end local v6    # "obj":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 314
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookException;

    invoke-direct {v11, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 316
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 317
    .local v0, "e":Lcom/facebook/FacebookException;
    new-instance v10, Lcom/facebook/Response;

    invoke-direct {v10, v7, p0, v0}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 12
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 257
    invoke-static {p0}, Lcom/facebook/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "responseString":Ljava/lang/String;
    sget-object v4, Lcom/facebook/LoggingBehaviors;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehaviors;

    const-string v5, "Response"

    .line 259
    const-string v6, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 260
    aput-object v0, v7, v10

    .line 258
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    .line 265
    .local v2, "resultObject":Ljava/lang/Object;
    invoke-static {p1, p2, v2, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    .line 266
    .local v1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    sget-object v4, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v5, "Response"

    const-string v6, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 267
    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v1, v7, v11

    .line 266
    invoke-static {v4, v5, v6, v7}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return-object v1
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 11
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v5, 0x0

    .line 209
    .local v5, "stream":Ljava/io/InputStream;
    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/FileLruCache;

    move-result-object v0

    .line 210
    .local v0, "cache":Lcom/facebook/FileLruCache;
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->getForceRoundTrip()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 214
    if-eqz v5, :cond_2

    .line 215
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, p1, v7}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 221
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 248
    :goto_0
    return-object v6

    .line 217
    :catch_0
    move-exception v6

    .line 221
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x190

    if-lt v6, v7, :cond_3

    .line 228
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 239
    :cond_1
    :goto_2
    const/4 v6, 0x0

    invoke-static {v5, p0, p1, v6}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 250
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v6

    .line 221
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 219
    :catch_2
    move-exception v6

    .line 221
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v6

    .line 221
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 222
    throw v6

    .line 221
    :cond_2
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 230
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 231
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 232
    invoke-virtual {v0, v1, v5}, Lcom/facebook/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 233
    .local v4, "interceptStream":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 234
    move-object v5, v4

    goto :goto_2

    .line 240
    .end local v4    # "interceptStream":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 241
    .local v3, "facebookException":Lcom/facebook/FacebookException;
    :try_start_3
    sget-object v6, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v7, "Response"

    const-string v8, "Response <Error>: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {p1, p0, v3}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 250
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 243
    .end local v3    # "facebookException":Lcom/facebook/FacebookException;
    :catch_4
    move-exception v2

    .line 244
    .local v2, "exception":Lorg/json/JSONException;
    :try_start_4
    sget-object v6, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v7, "Response"

    const-string v8, "Response <Error>: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v6}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 250
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 246
    .end local v2    # "exception":Lorg/json/JSONException;
    :catch_5
    move-exception v2

    .line 247
    .local v2, "exception":Ljava/io/IOException;
    :try_start_5
    sget-object v6, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v7, "Response"

    const-string v8, "Response <Error>: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v6}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 250
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 249
    .end local v2    # "exception":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 250
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    throw v6
.end method

.method static getResponseCache()Lcom/facebook/FileLruCache;
    .locals 4

    .prologue
    .line 194
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/FileLruCache;

    if-nez v1, :cond_0

    .line 195
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/facebook/FileLruCache;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/FileLruCache;

    .line 201
    :cond_0
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/FileLruCache;

    return-object v1
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookException;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/GraphObject;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    invoke-interface {v0, p1}, Lcom/facebook/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGraphObjectList()Lcom/facebook/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectList",
            "<",
            "Lcom/facebook/GraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/GraphObjectList;

    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/GraphObjectList;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/GraphObjectList;

    invoke-interface {v0, p1}, Lcom/facebook/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method final getIsFromCache()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 178
    :try_start_0
    const-string v3, "%d"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, "responseCode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    const-string v3, ", graphObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookException;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    const-string v3, ", isFromCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/Response;->isFromCache:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    return-object v2

    .line 178
    .end local v1    # "responseCode":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xc8

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "unknown"

    .restart local v1    # "responseCode":Ljava/lang/String;
    goto :goto_1
.end method
