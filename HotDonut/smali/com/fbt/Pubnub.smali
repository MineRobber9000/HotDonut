.class public Lcom/fbt/Pubnub;
.super Ljava/lang/Object;
.source "Pubnub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fbt/Pubnub$ChannelStatus;,
        Lcom/fbt/Pubnub$PubnubHttpRequest;
    }
.end annotation


# instance fields
.field private CIPHER_KEY:Ljava/lang/String;

.field private ORIGIN:Ljava/lang/String;

.field private PUBLISH_KEY:Ljava/lang/String;

.field private SECRET_KEY:Ljava/lang/String;

.field private SSL:Z

.field private SUBSCRIBE_KEY:Ljava/lang/String;

.field private UUIDs:Ljava/lang/String;

.field private connection:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fbt/Pubnub$ChannelStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "pubsub.pubnub.com"

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 51
    iput-boolean v5, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    .line 135
    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/fbt/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/fbt/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "pubsub.pubnub.com"

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 51
    iput-boolean v5, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    .line 151
    const-string v4, ""

    invoke-static {}, Lcom/fbt/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/fbt/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "cipher_key"    # Ljava/lang/String;
    .param p5, "ssl_on"    # Z

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "pubsub.pubnub.com"

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    .line 103
    invoke-static {}, Lcom/fbt/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/fbt/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "cipher_key"    # Ljava/lang/String;
    .param p5, "ssl_on"    # Z
    .param p6, "uuid"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "pubsub.pubnub.com"

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    .line 81
    invoke-virtual/range {p0 .. p6}, Lcom/fbt/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "ssl_on"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "pubsub.pubnub.com"

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    .line 121
    const-string v4, ""

    invoke-static {}, Lcom/fbt/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/fbt/Pubnub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    return-void
.end method

.method private _encodeToUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 887
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "enc":Ljava/lang/String;
    return-object v0
.end method

.method private _request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 15
    .param p2, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "url_components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 719
    .local v4, "json":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .local v9, "url":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 721
    .local v11, "url_iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 723
    .local v1, "_callFor":Ljava/lang/String;
    const-string v12, "v2"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 724
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "_callFor":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 725
    .restart local v1    # "_callFor":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x7

    if-lt v12, v13, :cond_0

    .line 726
    const/4 v12, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "leave"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 727
    const-string v1, "leave"

    .line 731
    :cond_0
    iget-object v12, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 753
    const-string v12, "subscribe"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 754
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "?uuid="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_1
    const-string v12, "leave"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 757
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "?uuid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_2
    :try_start_0
    new-instance v6, Lcom/fbt/Pubnub$PubnubHttpRequest;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {v6, p0, v12, v0}, Lcom/fbt/Pubnub$PubnubHttpRequest;-><init>(Lcom/fbt/Pubnub;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .local v6, "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    new-instance v8, Ljava/util/concurrent/FutureTask;

    invoke-direct {v8, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 764
    .local v8, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 765
    .local v7, "t":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 767
    :try_start_1
    invoke-virtual {v8}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 796
    const-string v12, "presence"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 797
    const-string v12, "leave"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 799
    :cond_3
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 801
    .local v2, "arr":Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 803
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    .line 810
    .end local v2    # "arr":Lorg/json/JSONArray;
    :cond_4
    :goto_1
    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 823
    .end local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :goto_2
    return-object v5

    .line 736
    :cond_5
    :try_start_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 737
    .local v10, "url_bit":Ljava/lang/String;
    const-string v12, "?"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 738
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 742
    .end local v10    # "url_bit":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 743
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 746
    .local v5, "jsono":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 747
    const-string v12, "Failed UTF-8 Encoding URL."

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 748
    :catch_1
    move-exception v12

    goto :goto_2

    .line 740
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "jsono":Lorg/json/JSONArray;
    .restart local v10    # "url_bit":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v10}, Lcom/fbt/Pubnub;->_encodeToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 768
    .end local v10    # "url_bit":Ljava/lang/String;
    .restart local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .restart local v7    # "t":Ljava/lang/Thread;
    .restart local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_2
    move-exception v3

    .line 769
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 772
    .restart local v5    # "jsono":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :try_start_8
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 773
    const-string v12, "Request failed due to missing Internet connection."

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 777
    :goto_3
    :try_start_9
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 782
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "jsono":Lorg/json/JSONArray;
    .end local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    .line 784
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 787
    .restart local v5    # "jsono":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :try_start_a
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 788
    const-string v12, "Failed JSONP HTTP Request."

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 792
    :goto_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 804
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "jsono":Lorg/json/JSONArray;
    .restart local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .restart local v7    # "t":Ljava/lang/Thread;
    .restart local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_4
    move-exception v3

    .line 805
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 811
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_5
    move-exception v3

    .line 812
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 815
    .restart local v5    # "jsono":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :try_start_b
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 816
    const-string v12, "Failed JSON Parsing."

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 820
    :goto_5
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 817
    :catch_6
    move-exception v12

    goto :goto_5

    .line 789
    .end local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_7
    move-exception v12

    goto :goto_4

    .line 774
    .restart local v6    # "request":Lcom/fbt/Pubnub$PubnubHttpRequest;
    .restart local v7    # "t":Ljava/lang/Thread;
    .restart local v8    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    :catch_8
    move-exception v12

    goto :goto_3
.end method

.method private _subscribe(Ljava/util/HashMap;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "channel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 305
    .local v4, "channel":Ljava/lang/String;
    const-string v21, "timetoken"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 309
    .local v19, "timetoken":Ljava/lang/String;
    const-string v21, "callback"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 310
    const-string v21, "callback"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fbt/Callback;

    .line 316
    .local v3, "callback":Lcom/fbt/Callback;
    if-eqz v4, :cond_0

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 317
    :cond_0
    const-string v21, "Invalid Channel."

    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Lcom/fbt/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    .end local v3    # "callback":Lcom/fbt/Callback;
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Invalid Callback."

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .restart local v3    # "callback":Lcom/fbt/Callback;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_c

    .line 323
    const/4 v5, 0x0

    .line 324
    .local v5, "channel_exist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_a

    .line 330
    :goto_1
    if-nez v5, :cond_b

    .line 331
    new-instance v6, Lcom/fbt/Pubnub$ChannelStatus;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/fbt/Pubnub$ChannelStatus;-><init>(Lcom/fbt/Pubnub;Lcom/fbt/Pubnub$ChannelStatus;)V

    .line 332
    .local v6, "cs":Lcom/fbt/Pubnub$ChannelStatus;
    iput-object v4, v6, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    .line 333
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v5    # "channel_exist":Z
    :cond_5
    :goto_2
    const/16 v21, 0x5

    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "subscribe"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v4, v21, v22

    const/16 v22, 0x3

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    aput-object v19, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 355
    .local v20, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 356
    .local v9, "isDisconnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_d

    .line 367
    :goto_3
    if-nez v9, :cond_1

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 374
    .local v15, "response":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_e

    .line 386
    :goto_4
    if-nez v9, :cond_1

    .line 390
    if-eqz v15, :cond_8

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v21

    if-nez v21, :cond_14

    .line 391
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_f

    .line 406
    :goto_5
    const/4 v10, 0x0

    .line 408
    .local v10, "isReconnected":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/fbt/Pubnub;->time()D

    move-result-wide v17

    .line 409
    .local v17, "time_token":D
    const-wide/16 v21, 0x0

    cmpl-double v21, v17, v21

    if-nez v21, :cond_11

    .line 411
    const-wide/16 v21, 0x1388

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 473
    .end local v9    # "isDisconnected":Z
    .end local v10    # "isReconnected":Z
    .end local v15    # "response":Lorg/json/JSONArray;
    .end local v17    # "time_token":D
    .end local v20    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/Exception;
    const-wide/16 v21, 0x3e8

    :try_start_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 476
    :catch_1
    move-exception v21

    goto/16 :goto_2

    .line 324
    .end local v6    # "cs":Lcom/fbt/Pubnub$ChannelStatus;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "channel_exist":Z
    :cond_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fbt/Pubnub$ChannelStatus;

    .line 325
    .local v11, "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 326
    const/4 v5, 0x1

    .line 327
    goto/16 :goto_1

    .line 336
    .end local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    :cond_b
    const-string v21, "Already Connected"

    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Lcom/fbt/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 341
    .end local v5    # "channel_exist":Z
    :cond_c
    new-instance v6, Lcom/fbt/Pubnub$ChannelStatus;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/fbt/Pubnub$ChannelStatus;-><init>(Lcom/fbt/Pubnub;Lcom/fbt/Pubnub$ChannelStatus;)V

    .line 342
    .restart local v6    # "cs":Lcom/fbt/Pubnub$ChannelStatus;
    iput-object v4, v6, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    .line 343
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    .line 344
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 356
    .restart local v9    # "isDisconnected":Z
    .restart local v20    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    :try_start_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fbt/Pubnub$ChannelStatus;

    .line 357
    .restart local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 358
    iget-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 359
    invoke-interface {v3, v4}, Lcom/fbt/Callback;->disconnectCallback(Ljava/lang/String;)V

    .line 360
    const/4 v9, 0x1

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 362
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fbt/Pubnub;->leave(Ljava/lang/String;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 374
    .end local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    .restart local v15    # "response":Lorg/json/JSONArray;
    :cond_e
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fbt/Pubnub$ChannelStatus;

    .line 375
    .restart local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 376
    iget-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 377
    invoke-interface {v3, v4}, Lcom/fbt/Callback;->disconnectCallback(Ljava/lang/String;)V

    .line 378
    const/4 v9, 0x1

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fbt/Pubnub;->leave(Ljava/lang/String;)Lorg/json/JSONArray;

    goto/16 :goto_4

    .line 391
    .end local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fbt/Pubnub$ChannelStatus;

    .line 392
    .restart local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 393
    iget-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    iget-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->first:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    invoke-interface {v3, v4}, Lcom/fbt/Callback;->disconnectCallback(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fbt/Pubnub;->leave(Ljava/lang/String;)Lorg/json/JSONArray;

    goto/16 :goto_5

    .line 398
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 400
    const-string v21, "No Network Connection"

    .line 399
    move-object/from16 v0, v21

    invoke-interface {v3, v4, v0}, Lcom/fbt/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 414
    .end local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    .restart local v10    # "isReconnected":Z
    .restart local v17    # "time_token":D
    :cond_11
    invoke-interface {v3, v4}, Lcom/fbt/Callback;->reconnectCallback(Ljava/lang/String;)V

    .line 415
    const/4 v10, 0x1

    .line 419
    if-nez v10, :cond_5

    .line 437
    .end local v10    # "isReconnected":Z
    .end local v17    # "time_token":D
    :cond_12
    :goto_7
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v13

    .line 440
    .local v13, "messages":Lorg/json/JSONArray;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_13

    .line 441
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v19

    .line 443
    :cond_13
    const/16 v16, 0x1

    .line 444
    .local v16, "returnval":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-gt v0, v8, :cond_16

    .line 470
    if-nez v16, :cond_5

    goto/16 :goto_0

    .line 424
    .end local v8    # "i":I
    .end local v13    # "messages":Lorg/json/JSONArray;
    .end local v16    # "returnval":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fbt/Pubnub$ChannelStatus;

    .line 425
    .restart local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 427
    iget-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->first:Z

    move/from16 v22, v0

    if-nez v22, :cond_15

    .line 428
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v11, Lcom/fbt/Pubnub$ChannelStatus;->first:Z

    .line 429
    invoke-interface {v3, v4}, Lcom/fbt/Callback;->connectCallback(Ljava/lang/String;)V

    goto :goto_7

    .line 445
    .end local v11    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    .restart local v8    # "i":I
    .restart local v13    # "messages":Lorg/json/JSONArray;
    .restart local v16    # "returnval":Z
    :cond_16
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 446
    .local v12, "message":Lorg/json/JSONObject;
    if-eqz v12, :cond_18

    .line 448
    if-eqz v3, :cond_17

    .line 449
    invoke-interface {v3, v4, v12}, Lcom/fbt/Callback;->subscribeCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    .line 444
    :cond_17
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 454
    :cond_18
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 455
    .local v2, "arr":Lorg/json/JSONArray;
    if-eqz v2, :cond_19

    .line 457
    if-eqz v3, :cond_17

    .line 458
    invoke-interface {v3, v4, v2}, Lcom/fbt/Callback;->subscribeCallback(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v16

    goto :goto_9

    .line 461
    :cond_19
    invoke-virtual {v13, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 463
    .local v14, "msgs":Ljava/lang/String;
    if-eqz v3, :cond_17

    .line 464
    invoke-interface {v3, v4, v14}, Lcom/fbt/Callback;->subscribeCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v16

    goto :goto_9
.end method

.method static synthetic access$0(Lcom/fbt/Pubnub;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fbt/Pubnub;Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0, p1, p2}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static uuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 674
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public detailedHistory(Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "channel"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Missing Channel"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v2, "parameter":Ljava/lang/StringBuilder;
    const/16 v1, 0x64

    .line 521
    .local v1, "count":I
    const-string v6, "count"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 522
    const-string v6, "count"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 525
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "count="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v6, "reverse"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 528
    const-string v6, "reverse"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 529
    .local v4, "reverse":Z
    if-eqz v4, :cond_6

    .line 530
    const-string v6, "&reverse=true"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .end local v4    # "reverse":Z
    :cond_3
    :goto_0
    const-string v6, "start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 536
    const-string v6, "&start="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_4
    const-string v6, "end"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 540
    const-string v6, "&end="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "end"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v5, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "v2"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v6, "history"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v6, "sub-key"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v6, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    const-string v6, "channel"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-direct {p0, v5, v0}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 553
    .local v3, "responce":Lorg/json/JSONArray;
    invoke-direct {p0, v5, v0}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    return-object v6

    .line 532
    .end local v3    # "responce":Lorg/json/JSONArray;
    .end local v5    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "reverse":Z
    :cond_6
    const-string v6, "&reverse=false"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public here_now(Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "channel"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 599
    .local v1, "jsono":Lorg/json/JSONArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 600
    const-string v3, "Missing Channel"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v1    # "jsono":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 607
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v2, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "v2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v3, "presence"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    const-string v3, "sub_key"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v3, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v3, "channel"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-direct {p0, v2, v0}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    .line 601
    .end local v2    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "jsono":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public history(Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 493
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 494
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "limit"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p0, v0}, Lcom/fbt/Pubnub;->history(Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v1

    return-object v1
.end method

.method public history(Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "channel"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    .local v0, "channel":Ljava/lang/String;
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 572
    .local v1, "limit":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v2, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "history"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v3, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v3, "0"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-direct {p0, v2, v0}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    return-object v3
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "publish_key"    # Ljava/lang/String;
    .param p2, "subscribe_key"    # Ljava/lang/String;
    .param p3, "secret_key"    # Ljava/lang/String;
    .param p4, "cipher_key"    # Ljava/lang/String;
    .param p5, "ssl_on"    # Z
    .param p6, "uuid"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/fbt/Pubnub;->SECRET_KEY:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/fbt/Pubnub;->CIPHER_KEY:Ljava/lang/String;

    .line 175
    iput-boolean p5, p0, Lcom/fbt/Pubnub;->SSL:Z

    .line 178
    iget-boolean v0, p0, Lcom/fbt/Pubnub;->SSL:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    .line 183
    :goto_0
    iput-object p6, p0, Lcom/fbt/Pubnub;->UUIDs:Ljava/lang/String;

    .line 184
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fbt/Pubnub;->ORIGIN:Ljava/lang/String;

    goto :goto_0
.end method

.method public leave(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 624
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 627
    .local v0, "jsono":Lorg/json/JSONArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 628
    const-string v2, "Missing Channel"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v0    # "jsono":Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 635
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v1, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "v2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v2, "presence"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    const-string v2, "sub_key"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v2, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v2, "channel"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    const-string v2, "leave"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-direct {p0, v1, p1}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 629
    .end local v1    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "jsono":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public publish(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 199
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0, v0}, Lcom/fbt/Pubnub;->publish(Ljava/util/HashMap;)V

    .line 202
    return-void
.end method

.method public publish(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "channel"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, "channel":Ljava/lang/String;
    const-string v7, "message"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "message":Ljava/lang/Object;
    instance-of v7, v1, Lorg/json/JSONObject;

    if-eqz v7, :cond_1

    move-object v4, v1

    .line 220
    check-cast v4, Lorg/json/JSONObject;

    .line 222
    .local v4, "obj":Lorg/json/JSONObject;
    move-object v1, v4

    .line 237
    .end local v1    # "message":Ljava/lang/Object;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    .line 240
    const-string v5, "0"

    .line 243
    .local v5, "signature":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v6, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "publish"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v7, p0, Lcom/fbt/Pubnub;->PUBLISH_KEY:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v7, p0, Lcom/fbt/Pubnub;->SUBSCRIBE_KEY:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v7, "0"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    move-object v3, v6

    .line 252
    .local v3, "myurl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v0

    .line 254
    .local v2, "mychan":Ljava/lang/String;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/fbt/Pubnub$1;

    invoke-direct {v8, p0, v3, v2}, Lcom/fbt/Pubnub$1;-><init>(Lcom/fbt/Pubnub;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 261
    return-void

    .line 224
    .end local v2    # "mychan":Ljava/lang/String;
    .end local v3    # "myurl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "signature":Ljava/lang/String;
    .end local v6    # "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "message":Ljava/lang/Object;
    :cond_1
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_2

    move-object v4, v1

    .line 225
    check-cast v4, Ljava/lang/String;

    .line 227
    .local v4, "obj":Ljava/lang/String;
    move-object v1, v4

    .line 229
    .local v1, "message":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 231
    .end local v4    # "obj":Ljava/lang/String;
    .local v1, "message":Ljava/lang/Object;
    :cond_2
    instance-of v7, v1, Lorg/json/JSONArray;

    if-eqz v7, :cond_0

    move-object v4, v1

    .line 232
    check-cast v4, Lorg/json/JSONArray;

    .line 234
    .local v4, "obj":Lorg/json/JSONArray;
    move-object v1, v4

    .local v1, "message":Lorg/json/JSONArray;
    goto :goto_0
.end method

.method public subscribe(Ljava/lang/String;Lcom/fbt/Callback;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/fbt/Callback;

    .prologue
    .line 274
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 275
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p0, v0}, Lcom/fbt/Pubnub;->subscribe(Ljava/util/HashMap;)V

    .line 278
    return-void
.end method

.method public subscribe(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "timetoken"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-direct {p0, p1}, Lcom/fbt/Pubnub;->_subscribe(Ljava/util/HashMap;)V

    .line 291
    return-void
.end method

.method public time()D
    .locals 4

    .prologue
    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v1, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "time"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const-string v2, "0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/fbt/Pubnub;->_request(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 662
    .local v0, "response":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    return-wide v2
.end method

.method public unsubscribe(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 686
    const-string v5, "channel"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 687
    .local v1, "channel":Ljava/lang/String;
    iget-object v5, p0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 688
    iget-object v5, p0, Lcom/fbt/Pubnub;->subscriptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 696
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    if-eqz v5, :cond_3

    .line 697
    iget-object v5, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 698
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_5

    .line 708
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 688
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fbt/Pubnub$ChannelStatus;

    .line 689
    .local v4, "it":Lcom/fbt/Pubnub$ChannelStatus;
    iget-object v6, v4, Lcom/fbt/Pubnub$ChannelStatus;->channel:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v4, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    if-eqz v6, :cond_0

    .line 690
    iput-boolean v7, v4, Lcom/fbt/Pubnub$ChannelStatus;->connected:Z

    .line 691
    iput-boolean v7, v4, Lcom/fbt/Pubnub$ChannelStatus;->first:Z

    goto :goto_0

    .line 699
    .end local v4    # "it":Lcom/fbt/Pubnub$ChannelStatus;
    .restart local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 700
    .local v0, "ch":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 701
    iget-object v5, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/HttpClient;

    .line 702
    .local v3, "http":Lorg/apache/http/client/HttpClient;
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 703
    iget-object v5, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 704
    iget-object v5, p0, Lcom/fbt/Pubnub;->connection:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
