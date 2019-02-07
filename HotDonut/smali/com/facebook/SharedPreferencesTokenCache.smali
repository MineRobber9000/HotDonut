.class public Lcom/facebook/SharedPreferencesTokenCache;
.super Lcom/facebook/TokenCache;
.source "SharedPreferencesTokenCache.java"


# static fields
.field private static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCache.DEFAULT_KEY"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/SharedPreferencesTokenCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/SharedPreferencesTokenCache;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/SharedPreferencesTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/facebook/TokenCache;-><init>()V

    .line 99
    const-string v1, "context"

    invoke-static {p1, v1}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "com.facebook.SharedPreferencesTokenCache.DEFAULT_KEY"

    .end local p2    # "cacheKey":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/facebook/SharedPreferencesTokenCache;->cacheKey:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/facebook/SharedPreferencesTokenCache;->cacheKey:Ljava/lang/String;

    .line 111
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/SharedPreferencesTokenCache;->cache:Landroid/content/SharedPreferences;

    .line 112
    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v10, p0, Lcom/facebook/SharedPreferencesTokenCache;->cache:Landroid/content/SharedPreferences;

    const-string v11, "{}"

    invoke-interface {v10, p1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "json":Lorg/json/JSONObject;
    const-string v10, "valueType"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "valueType":Ljava/lang/String;
    const-string v10, "bool"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 292
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const-string v10, "bool[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 294
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 295
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [Z

    .line 296
    .local v0, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v0

    if-lt v2, v10, :cond_2

    .line 299
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    aput-boolean v10, v0, v2

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v0    # "array":[Z
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string v10, "byte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 301
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 302
    :cond_4
    const-string v10, "byte[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 303
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 304
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [B

    .line 305
    .local v0, "array":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v10, v0

    if-lt v2, v10, :cond_5

    .line 308
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 306
    :cond_5
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 309
    .end local v0    # "array":[B
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    const-string v10, "short"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 310
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-short v10, v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_0

    .line 311
    :cond_7
    const-string v10, "short[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 312
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 313
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [S

    .line 314
    .local v0, "array":[S
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v10, v0

    if-lt v2, v10, :cond_8

    .line 317
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 315
    :cond_8
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    int-to-short v10, v10

    aput-short v10, v0, v2

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    .end local v0    # "array":[S
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string v10, "int"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 319
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 320
    :cond_a
    const-string v10, "int[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 321
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 322
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [I

    .line 323
    .local v0, "array":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v10, v0

    if-lt v2, v10, :cond_b

    .line 326
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 324
    :cond_b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    aput v10, v0, v2

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 327
    .end local v0    # "array":[I
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v10, "long"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 328
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {p2, p1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 329
    :cond_d
    const-string v10, "long[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 330
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 331
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [J

    .line 332
    .local v0, "array":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v10, v0

    if-lt v2, v10, :cond_e

    .line 335
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 333
    :cond_e
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    aput-wide v10, v0, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 336
    .end local v0    # "array":[J
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string v10, "float"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 337
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 338
    :cond_10
    const-string v10, "float[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 339
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 340
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [F

    .line 341
    .local v0, "array":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v10, v0

    if-lt v2, v10, :cond_11

    .line 344
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 342
    :cond_11
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v0, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 345
    .end local v0    # "array":[F
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v10, "double"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 346
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {p2, p1, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 347
    :cond_13
    const-string v10, "double[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 348
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 349
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [D

    .line 350
    .local v0, "array":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v10, v0

    if-lt v2, v10, :cond_14

    .line 353
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 351
    :cond_14
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    aput-wide v10, v0, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 354
    .end local v0    # "array":[D
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string v10, "char"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 355
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "charString":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 357
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 359
    .end local v1    # "charString":Ljava/lang/String;
    :cond_16
    const-string v10, "char[]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 360
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 361
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v0, v10, [C

    .line 362
    .local v0, "array":[C
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    array-length v10, v0

    if-lt v2, v10, :cond_17

    .line 368
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 363
    :cond_17
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .restart local v1    # "charString":Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 365
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v0, v2

    .line 362
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 369
    .end local v0    # "array":[C
    .end local v1    # "charString":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_19
    const-string v10, "string"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 370
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, p1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_1a
    const-string v10, "stringList"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 372
    const-string v10, "value"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 373
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 374
    .local v7, "numStrings":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v8, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-lt v2, v7, :cond_1b

    .line 379
    invoke-virtual {p2, p1, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 376
    :cond_1b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 377
    .local v6, "jsonStringValue":Ljava/lang/Object;
    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v6, v10, :cond_1c

    const/4 v6, 0x0

    .end local v6    # "jsonStringValue":Ljava/lang/Object;
    :goto_a
    invoke-virtual {v8, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 377
    .restart local v6    # "jsonStringValue":Ljava/lang/Object;
    :cond_1c
    check-cast v6, Ljava/lang/String;

    goto :goto_a
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 176
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 177
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 282
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 183
    .local v4, "supportedType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 184
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v0, "json":Lorg/json/JSONObject;
    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_4

    .line 187
    const-string v4, "byte"

    .line 188
    const-string v8, "value"

    check-cast v7, Ljava/lang/Byte;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 272
    const-string v8, "valueType"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    if-eqz v1, :cond_3

    .line 276
    const-string v8, "value"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "jsonString":Ljava/lang/String;
    invoke-interface {p3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 189
    .end local v2    # "jsonString":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v9, v7, Ljava/lang/Short;

    if-eqz v9, :cond_5

    .line 190
    const-string v4, "short"

    .line 191
    const-string v8, "value"

    check-cast v7, Ljava/lang/Short;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Short;->intValue()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 192
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 193
    const-string v4, "int"

    .line 194
    const-string v8, "value"

    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 195
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v9, v7, Ljava/lang/Long;

    if-eqz v9, :cond_7

    .line 196
    const-string v4, "long"

    .line 197
    const-string v8, "value"

    check-cast v7, Ljava/lang/Long;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 198
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_8

    .line 199
    const-string v4, "float"

    .line 200
    const-string v8, "value"

    check-cast v7, Ljava/lang/Float;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 201
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v9, v7, Ljava/lang/Double;

    if-eqz v9, :cond_9

    .line 202
    const-string v4, "double"

    .line 203
    const-string v8, "value"

    check-cast v7, Ljava/lang/Double;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 204
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v9, v7, Ljava/lang/Boolean;

    if-eqz v9, :cond_a

    .line 205
    const-string v4, "bool"

    .line 206
    const-string v8, "value"

    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 207
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v9, v7, Ljava/lang/Character;

    if-eqz v9, :cond_b

    .line 208
    const-string v4, "char"

    .line 209
    const-string v8, "value"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 210
    :cond_b
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 211
    const-string v4, "string"

    .line 212
    const-string v8, "value"

    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 216
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_c
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 217
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    instance-of v9, v7, [B

    if-eqz v9, :cond_d

    .line 218
    const-string v4, "byte[]"

    .line 219
    check-cast v7, [B

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_2
    if-ge v8, v9, :cond_2

    aget-byte v5, v7, v8

    .line 220
    .local v5, "v":B
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 219
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 222
    .end local v5    # "v":B
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v9, v7, [S

    if-eqz v9, :cond_e

    .line 223
    const-string v4, "short[]"

    .line 224
    check-cast v7, [S

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_3
    if-ge v8, v9, :cond_2

    aget-short v5, v7, v8

    .line 225
    .local v5, "v":S
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 224
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 227
    .end local v5    # "v":S
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_e
    instance-of v9, v7, [I

    if-eqz v9, :cond_f

    .line 228
    const-string v4, "int[]"

    .line 229
    check-cast v7, [I

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_4
    if-ge v8, v9, :cond_2

    aget v5, v7, v8

    .line 230
    .local v5, "v":I
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 232
    .end local v5    # "v":I
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_f
    instance-of v9, v7, [J

    if-eqz v9, :cond_10

    .line 233
    const-string v4, "long[]"

    .line 234
    check-cast v7, [J

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_5
    if-ge v8, v9, :cond_2

    aget-wide v5, v7, v8

    .line 235
    .local v5, "v":J
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 234
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 237
    .end local v5    # "v":J
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_10
    instance-of v9, v7, [F

    if-eqz v9, :cond_11

    .line 238
    const-string v4, "float[]"

    .line 239
    check-cast v7, [F

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_6
    if-ge v8, v9, :cond_2

    aget v5, v7, v8

    .line 240
    .local v5, "v":F
    float-to-double v10, v5

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 242
    .end local v5    # "v":F
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_11
    instance-of v9, v7, [D

    if-eqz v9, :cond_12

    .line 243
    const-string v4, "double[]"

    .line 244
    check-cast v7, [D

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_7
    if-ge v8, v9, :cond_2

    aget-wide v5, v7, v8

    .line 245
    .local v5, "v":D
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 247
    .end local v5    # "v":D
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_12
    instance-of v9, v7, [Z

    if-eqz v9, :cond_13

    .line 248
    const-string v4, "bool[]"

    .line 249
    check-cast v7, [Z

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_8
    if-ge v8, v9, :cond_2

    aget-boolean v5, v7, v8

    .line 250
    .local v5, "v":Z
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 249
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 252
    .end local v5    # "v":Z
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_13
    instance-of v9, v7, [C

    if-eqz v9, :cond_14

    .line 253
    const-string v4, "char[]"

    .line 254
    check-cast v7, [C

    .end local v7    # "value":Ljava/lang/Object;
    array-length v9, v7

    :goto_9
    if-ge v8, v9, :cond_2

    aget-char v5, v7, v8

    .line 255
    .local v5, "v":C
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 257
    .end local v5    # "v":C
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_14
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_16

    .line 258
    const-string v4, "stringList"

    move-object v3, v7

    .line 260
    check-cast v3, Ljava/util/List;

    .line 261
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    .local v5, "v":Ljava/lang/String;
    if-nez v5, :cond_15

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v5    # "v":Ljava/lang/String;
    :cond_15
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a

    .line 267
    .end local v3    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCache;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 120
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v3, "settings":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/facebook/SharedPreferencesTokenCache;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 124
    .local v0, "allCachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    .end local v3    # "settings":Landroid/os/Bundle;
    :goto_1
    return-object v3

    .line 124
    .restart local v3    # "settings":Landroid/os/Bundle;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/facebook/SharedPreferencesTokenCache;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    const/4 v5, 0x5

    sget-object v6, Lcom/facebook/SharedPreferencesTokenCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error reading cached value for key: \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x5

    .line 145
    const-string v4, "bundle"

    invoke-static {p1, v4}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/facebook/SharedPreferencesTokenCache;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 149
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .line 162
    .local v3, "successfulCommit":Z
    if-nez v3, :cond_0

    .line 163
    sget-object v4, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v5, Lcom/facebook/SharedPreferencesTokenCache;->TAG:Ljava/lang/String;

    const-string v6, "SharedPreferences.Editor.commit() was not successful"

    invoke-static {v4, v8, v5, v6}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v3    # "successfulCommit":Z
    :cond_0
    :goto_1
    return-void

    .line 149
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2, p1, v1}, Lcom/facebook/SharedPreferencesTokenCache;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    sget-object v5, Lcom/facebook/SharedPreferencesTokenCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error processing value for key: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v5, v6}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
