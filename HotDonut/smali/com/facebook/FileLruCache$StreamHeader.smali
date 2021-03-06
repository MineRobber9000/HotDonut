.class final Lcom/facebook/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 17
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 273
    .local v12, "version":I
    if-eqz v12, :cond_0

    .line 274
    const/4 v4, 0x0

    .line 316
    :goto_0
    return-object v4

    .line 277
    :cond_0
    const/4 v6, 0x0

    .line 278
    .local v6, "headerSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v13, 0x3

    if-lt v8, v13, :cond_1

    .line 289
    new-array v5, v6, [B

    .line 290
    .local v5, "headerBytes":[B
    const/4 v2, 0x0

    .line 291
    .local v2, "count":I
    :goto_2
    array-length v13, v5

    if-lt v2, v13, :cond_3

    .line 302
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 303
    .local v7, "headerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 304
    .local v4, "header":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 306
    .local v11, "tokener":Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v9

    .line 307
    .local v9, "parsed":Ljava/lang/Object;
    instance-of v13, v9, Lorg/json/JSONObject;

    if-nez v13, :cond_5

    .line 308
    sget-object v13, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v14, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "readHeader: expected JSONObject, got "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v4, 0x0

    goto :goto_0

    .line 279
    .end local v2    # "count":I
    .end local v4    # "header":Lorg/json/JSONObject;
    .end local v5    # "headerBytes":[B
    .end local v7    # "headerString":Ljava/lang/String;
    .end local v9    # "parsed":Ljava/lang/Object;
    .end local v11    # "tokener":Lorg/json/JSONTokener;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 280
    .local v1, "b":I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_2

    .line 281
    sget-object v13, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v14, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    .line 282
    const-string v15, "readHeader: stream.read returned -1 while reading header size"

    .line 281
    invoke-static {v13, v14, v15}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v4, 0x0

    goto :goto_0

    .line 285
    :cond_2
    shl-int/lit8 v6, v6, 0x8

    .line 286
    and-int/lit16 v13, v1, 0xff

    add-int/2addr v6, v13

    .line 278
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 292
    .end local v1    # "b":I
    .restart local v2    # "count":I
    .restart local v5    # "headerBytes":[B
    :cond_3
    array-length v13, v5

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 293
    .local v10, "readCount":I
    const/4 v13, 0x1

    if-ge v10, v13, :cond_4

    .line 294
    sget-object v13, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v14, Lcom/facebook/FileLruCache;->TAG:Ljava/lang/String;

    .line 295
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "readHeader: stream.read stopped at "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " when expected "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 296
    array-length v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 295
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 294
    invoke-static {v13, v14, v15}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 299
    :cond_4
    add-int/2addr v2, v10

    goto/16 :goto_2

    .line 311
    .end local v10    # "readCount":I
    .restart local v4    # "header":Lorg/json/JSONObject;
    .restart local v7    # "headerString":Ljava/lang/String;
    .restart local v9    # "parsed":Ljava/lang/Object;
    .restart local v11    # "tokener":Lorg/json/JSONTokener;
    :cond_5
    :try_start_1
    move-object v0, v9

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 312
    .end local v9    # "parsed":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 313
    .local v3, "e":Lorg/json/JSONException;
    new-instance v13, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;
    .param p1, "header"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "headerString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 263
    .local v0, "headerBytes":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 264
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 265
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 266
    array-length v2, v0

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 268
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 269
    return-void
.end method
