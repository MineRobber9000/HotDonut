.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field public static final TAPJOY_OFFERS:Ljava/lang/String; = "TapjoyOffers"

.field public static final TAPJOY_POINTS:Ljava/lang/String; = "TapjoyPoints"

.field private static tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

.field private static tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

.field private static tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

.field private static tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;


# instance fields
.field awardTapPoints:I

.field context:Landroid/content/Context;

.field private multipleCurrencyID:Ljava/lang/String;

.field private multipleCurrencySelector:Ljava/lang/String;

.field spendTapPoints:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->spendTapPoints:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJCOffers;->awardTapPoints:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Lcom/tapjoy/TapjoySpendPointsNotifier;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleAwardPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5()Lcom/tapjoy/TapjoyAwardPointsNotifier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    return-object v0
.end method

.method private handleAwardPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 376
    const-string v2, ""

    .line 379
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 381
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 383
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 403
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponse(Ljava/lang/String;I)V

    .line 427
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 408
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 413
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 415
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 416
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 251
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_2

    .line 253
    const-string v6, "Success"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    const-string v6, "TapPoints"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "points":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 266
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 267
    .local v4, "pointTotal":I
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLocalTapPointsTotal()I

    move-result v1

    .line 274
    .local v1, "lastLocalPointTotal":I
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    if-eqz v6, :cond_0

    .line 277
    const/16 v6, -0x270f

    if-eq v1, v6, :cond_0

    .line 280
    if-le v4, v1, :cond_0

    .line 281
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    sub-int v7, v4, v1

    invoke-interface {v6, v7}, Lcom/tapjoy/TapjoyEarnedPointsNotifier;->earnedTapPoints(I)V

    .line 286
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 289
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v2, v7}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    .line 290
    const/4 v6, 0x1

    .line 303
    .end local v1    # "lastLocalPointTotal":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointTotal":I
    .end local v5    # "points":Ljava/lang/String;
    :goto_0
    return v6

    .line 294
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v5    # "points":Ljava/lang/String;
    :cond_1
    const-string v6, "TapjoyPoints"

    const-string v7, "Invalid XML: Missing tags."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v5    # "points":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 299
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_3
    const-string v6, "TapjoyPoints"

    const-string v7, "Invalid XML: Missing <Success> tag."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 314
    const-string v2, ""

    .line 317
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 319
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 321
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 328
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 341
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponse(Ljava/lang/String;I)V

    .line 365
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 346
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 351
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 353
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 186
    if-gez p1, :cond_0

    .line 188
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 192
    :cond_0
    iput p1, p0, Lcom/tapjoy/TJCOffers;->awardTapPoints:I

    .line 194
    sput-object p2, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$3;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 106
    sput-object p1, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$1;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 237
    sput-object p1, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .line 238
    return-void
.end method

.method public showOffers()V
    .locals 4

    .prologue
    .line 62
    const-string v1, "TapjoyOffers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing offers with userID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "offersIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string v1, "USER_ID"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "URL_PARAMS"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 81
    const-string v2, "TapjoyOffers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Showing offers with currencyID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (userID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    .line 84
    if-eqz p2, :cond_0

    const-string v2, "1"

    :goto_0
    iput-object v2, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "offersURLParams":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&currency_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&currency_selector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "offersIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const-string v2, "USER_ID"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void

    .line 84
    .end local v0    # "offersIntent":Landroid/content/Intent;
    .end local v1    # "offersURLParams":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 141
    if-gez p1, :cond_0

    .line 143
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->spendTapPoints:Ljava/lang/String;

    .line 149
    sput-object p2, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$2;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
