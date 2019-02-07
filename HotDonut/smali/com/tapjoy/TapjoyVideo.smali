.class public Lcom/tapjoy/TapjoyVideo;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"


# static fields
.field public static final TAPJOY_VIDEO:Ljava/lang/String; = "TapjoyVideo"

.field public static imageBackgroundLocation:Ljava/lang/String; = null

.field private static final imageBackgroundUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

.field public static imagePlaceholderLocation:Ljava/lang/String; = null

.field private static final imagePlaceholderUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/placeholder.png"

.field public static imageTapjoyLocation:Ljava/lang/String; = null

.field private static final imageTapjoyUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/tapjoy.png"

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

.field private static tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;


# instance fields
.field private cachedVideos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TapjoyVideoObject;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private imageCacheDir:Ljava/lang/String;

.field private imageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uncachedImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uncachedVideos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TapjoyVideoObject;",
            ">;"
        }
    .end annotation
.end field

.field private videoCacheDir:Ljava/lang/String;

.field private videoCacheLimit:I

.field private videoQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public videoToPlay:Lcom/tapjoy/TapjoyVideoObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    .line 74
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    .line 75
    sput-object p0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideo;->handleGetVideosResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideo;->cacheImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    return-void
.end method

.method static synthetic access$6()Lcom/tapjoy/TapjoyVideoNotifier;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    return-object v0
.end method

.method private cacheImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 673
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cacheImage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideo$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyVideo$3;-><init>(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 786
    return-void
.end method

.method private cacheVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download and cache video from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideo$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyVideo$2;-><init>(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 663
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 664
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyVideo;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    return-object v0
.end method

.method public static getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    return-object v0
.end method

.method private handleGetVideosResponse(Ljava/lang/String;)Z
    .locals 24
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 312
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v21, "TapjoyVideo"

    const-string v22, "========================================"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayInputStream;

    const-string v21, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 319
    .local v11, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 320
    .local v6, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 322
    .local v5, "document":Lorg/w3c/dom/Document;
    const-string v21, "TapjoyVideos"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 323
    .local v17, "nodelistParent":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 326
    .local v16, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "nodelistParent length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "nodelist length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_0

    .line 425
    const-string v21, "TapjoyVideo"

    const-string v22, "========================================"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v21, 0x1

    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "i":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    :goto_1
    return v21

    .line 331
    .restart local v5    # "document":Lorg/w3c/dom/Document;
    .restart local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "i":I
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 334
    .local v15, "node":Lorg/w3c/dom/Node;
    new-instance v20, Lcom/tapjoy/TapjoyVideoObject;

    invoke-direct/range {v20 .. v20}, Lcom/tapjoy/TapjoyVideoObject;-><init>()V

    .line 336
    .local v20, "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    if-eqz v15, :cond_8

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 338
    move-object v0, v15

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 341
    .local v8, "element":Lorg/w3c/dom/Element;
    const-string v21, "ClickURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 342
    .local v19, "value":Ljava/lang/String;
    if-eqz v19, :cond_1

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 343
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    .line 345
    :cond_1
    const-string v21, "OfferID"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 346
    if-eqz v19, :cond_2

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 347
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    .line 349
    :cond_2
    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 350
    if-eqz v19, :cond_3

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 351
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    .line 353
    :cond_3
    const-string v21, "Amount"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 354
    if-eqz v19, :cond_4

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 355
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    .line 357
    :cond_4
    const-string v21, "CurrencyName"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 358
    if-eqz v19, :cond_5

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 359
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    .line 361
    :cond_5
    const-string v21, "VideoURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 362
    if-eqz v19, :cond_6

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 363
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 365
    :cond_6
    const-string v21, "IconURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 366
    if-eqz v19, :cond_7

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 367
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    .line 369
    :cond_7
    const-string v21, "TapjoyVideo"

    const-string v22, "-----"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.clickURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.offerID: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.videoAdName: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.currencyAmount: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.currencyName: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.videoURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.iconURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v21, "Buttons"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 379
    .local v3, "buttonData":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 384
    .local v12, "itemNodeList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_9

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    .line 329
    .end local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 387
    .restart local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "j":I
    .restart local v19    # "value":Ljava/lang/String;
    :cond_9
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 390
    .local v4, "child":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-eqz v21, :cond_a

    .line 398
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 400
    .local v14, "name":Ljava/lang/String;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "name: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 406
    .local v18, "url":Ljava/lang/String;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "url: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/tapjoy/TapjoyVideoObject;->addButton(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    .end local v14    # "name":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 419
    .end local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .end local v4    # "child":Lorg/w3c/dom/NodeList;
    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v10    # "i":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v15    # "node":Lorg/w3c/dom/Node;
    .end local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    .end local v19    # "value":Ljava/lang/String;
    .end local v20    # "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    :catch_0
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error parsing XML: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/16 v21, 0x0

    goto/16 :goto_1
.end method

.method private setVideoIDs()V
    .locals 6

    .prologue
    .line 794
    const-string v2, ""

    .line 796
    .local v2, "videoIDs":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 798
    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 800
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 809
    const-string v3, "TapjoyVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cachedVideos size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "TapjoyVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "videoIDs: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setVideoIDs(Ljava/lang/String;)V

    .line 814
    return-void

    .line 802
    .restart local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVideoData()Lcom/tapjoy/TapjoyVideoObject;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    return-object v0
.end method

.method public initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 105
    const-string v1, "TapjoyVideo"

    const-string v2, "initVideoAd"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-nez p1, :cond_0

    .line 109
    const-string v1, "TapjoyVideo"

    const-string v2, "Error during initVideoAd -- TapjoyVideoNotifier is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 113
    :cond_0
    sput-object p1, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tapjoy/cache/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tapjoy/cache/images/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    .line 120
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    .line 121
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    .line 122
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    .line 125
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    .line 126
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/placeholder.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/tapjoy.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 130
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    .line 131
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "background"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "placeholder"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/placeholder.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "tapjoy"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/tapjoy.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "background.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imageBackgroundLocation:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "placeholder.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imagePlaceholderLocation:Ljava/lang/String;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tapjoy.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imageTapjoyLocation:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, "TapjoyVideo"

    const-string v2, "Media storage unavailable."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    goto/16 :goto_0

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyVideo$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideo$1;-><init>(Lcom/tapjoy/TapjoyVideo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public loadNextVideo()V
    .locals 4

    .prologue
    .line 503
    const-string v1, "TapjoyVideo"

    const-string v2, "++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "TapjoyVideo"

    const-string v2, "LOAD NEXT VIDEO"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoQueue size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uncachedVideos size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cachedVideos size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TapjoyVideoObject;

    iget-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 513
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideo(Ljava/lang/String;)V

    .line 516
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "TapjoyVideo"

    const-string v2, "++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    .line 96
    return-void
.end method

.method public startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "videoID"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "currencyAmount"    # Ljava/lang/String;
    .param p4, "clickURL"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Starting video activity with video: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TapjoyVideoObject;

    iput-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    .line 450
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    const-string v2, "TapjoyVideo"

    const-string v5, "Cannot access external storage"

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v2, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    invoke-interface {v2, v4}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    move v2, v3

    .line 494
    :goto_0
    return v2

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    if-nez v2, :cond_1

    .line 465
    const-string v2, "TapjoyVideo"

    const-string v4, "null video object?"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v2, "TapjoyVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cached videos: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 467
    goto :goto_0

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p2, v2, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p3, v2, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    .line 472
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p4, v2, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    .line 474
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "videoToPlay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v6, v6, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "amount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v6, v6, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currency: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v6, v6, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clickURL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v6, v6, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "TapjoyVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v6, v6, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    const-string v2, "TapjoyVideo"

    const-string v4, "video file does not exist?"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 484
    goto/16 :goto_0

    .line 487
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v1, "videoIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    const-string v2, "VIDEO_PATH"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 494
    goto/16 :goto_0
.end method
