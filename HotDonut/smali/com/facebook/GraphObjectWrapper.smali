.class public final Lcom/facebook/GraphObjectWrapper;
.super Ljava/lang/Object;
.source "GraphObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;,
        Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;,
        Lcom/facebook/GraphObjectWrapper$ProxyBase;
    }
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;

.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/GraphObjectWrapper;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    .line 38
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 39
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    .line 37
    sput-object v0, Lcom/facebook/GraphObjectWrapper;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/facebook/GraphObjectWrapper;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 134
    invoke-static {p0}, Lcom/facebook/GraphObjectWrapper;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-static {p0}, Lcom/facebook/GraphObjectWrapper;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .locals 13
    .param p0, "value"    # Ljava/lang/Object;
    .param p2, "expectedTypeAsParameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TU;"
        }
    .end annotation

    .prologue
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 207
    if-nez p0, :cond_0

    .line 208
    const/4 v7, 0x0

    .line 280
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 211
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 212
    .local v8, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 214
    move-object v7, p0

    .line 215
    .local v7, "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 218
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 221
    move-object v7, p0

    .line 222
    .restart local v7    # "result":Ljava/lang/Object;, "TU;"
    goto :goto_0

    .line 225
    .end local v7    # "result":Ljava/lang/Object;, "TU;"
    :cond_2
    const-class v10, Lcom/facebook/GraphObject;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 227
    move-object v5, p1

    .line 230
    .local v5, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    const-class v9, Lorg/json/JSONObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {v5, p0}, Lcom/facebook/GraphObjectWrapper;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v7

    .line 234
    .local v7, "result":Lcom/facebook/GraphObject;, "TU;"
    goto :goto_0

    .line 235
    .end local v7    # "result":Lcom/facebook/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-class v9, Lcom/facebook/GraphObject;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 238
    check-cast p0, Lcom/facebook/GraphObject;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0, v5}, Lcom/facebook/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v7

    .line 239
    .restart local v7    # "result":Lcom/facebook/GraphObject;, "TU;"
    goto :goto_0

    .line 241
    .end local v7    # "result":Lcom/facebook/GraphObject;, "TU;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t create GraphObject from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    .end local v5    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    :cond_5
    const-class v10, Ljava/lang/Iterable;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 244
    const-class v10, Ljava/util/List;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-class v10, Lcom/facebook/GraphObjectList;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 245
    :cond_6
    if-nez p2, :cond_7

    .line 246
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can\'t infer generic type of: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 249
    :cond_7
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 251
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz v1, :cond_8

    array-length v10, v1

    if-ne v10, v11, :cond_8

    .line 252
    aget-object v10, v1, v9

    instance-of v10, v10, Ljava/lang/Class;

    if-nez v10, :cond_9

    .line 253
    :cond_8
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    .line 254
    const-string v10, "Expect collection properties to be of a type with exactly one generic parameter."

    .line 253
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 256
    :cond_9
    aget-object v2, v1, v9

    check-cast v2, Ljava/lang/Class;

    .line 258
    .local v2, "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v6, p0

    .line 259
    check-cast v6, Lorg/json/JSONArray;

    .line 261
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v6, v2}, Lcom/facebook/GraphObjectWrapper;->wrapArray(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v7

    .line 262
    .local v7, "result":Lcom/facebook/GraphObjectList;, "TU;"
    goto/16 :goto_0

    .line 264
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "result":Lcom/facebook/GraphObjectList;, "TU;"
    :cond_a
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t create Collection from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 266
    .end local v1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v2    # "collectionGenericArgument":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 267
    const-class v10, Ljava/lang/Number;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 269
    const-string v10, "%d"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "result":Ljava/lang/String;, "TU;"
    goto/16 :goto_0

    .line 272
    .end local v7    # "result":Ljava/lang/String;, "TU;"
    :cond_c
    const-class v10, Ljava/util/Date;

    invoke-virtual {v10, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 273
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 274
    sget-object v11, Lcom/facebook/GraphObjectWrapper;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v12, v11

    move v10, v9

    :goto_1
    if-lt v10, v12, :cond_e

    .line 288
    :cond_d
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can\'t convert type"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 289
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 288
    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 274
    :cond_e
    aget-object v4, v11, v10

    .line 276
    .local v4, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 277
    .local v3, "date":Ljava/util/Date;
    if-eqz v3, :cond_f

    .line 279
    move-object v7, v3

    .line 280
    .local v7, "result":Ljava/util/Date;, "TU;"
    goto/16 :goto_0

    .line 282
    .end local v3    # "date":Ljava/util/Date;
    .end local v7    # "result":Ljava/util/Date;, "TU;"
    :catch_0
    move-exception v9

    .line 274
    :cond_f
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1
.end method

.method static createArray(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/GraphObjectWrapper;->wrapArray(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v0

    return-object v0
.end method

.method public static createGraphObject()Lcom/facebook/GraphObject;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/facebook/GraphObject;

    invoke-static {v0}, Lcom/facebook/GraphObjectWrapper;->createGraphObject(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static createGraphObject(Ljava/lang/Class;)Lcom/facebook/GraphObject;
    .locals 1
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
    .line 90
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/GraphObjectWrapper;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static createGraphObject(Lorg/json/JSONObject;)Lcom/facebook/GraphObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    const-class v0, Lcom/facebook/GraphObject;

    invoke-static {p0, v0}, Lcom/facebook/GraphObjectWrapper;->createGraphObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static createGraphObject(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/GraphObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p0}, Lcom/facebook/GraphObjectWrapper;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;
    .locals 4
    .param p1, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/facebook/GraphObjectWrapper;->verifyCanProxyClass(Ljava/lang/Class;)V

    .line 125
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 126
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 129
    .local v1, "graphObjectProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    const-class v3, Lcom/facebook/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObject;

    .line 131
    .local v0, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    return-object v0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p0, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    .line 136
    .local v2, "interfaces":[Ljava/lang/Class;
    new-instance v1, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;

    const-class v3, Ljava/util/Map;

    invoke-direct {v1, p0, v3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 140
    .local v1, "graphObjectProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    const-class v3, Lcom/facebook/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    check-cast v0, Ljava/util/Map;

    .line 142
    .local v0, "graphObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 294
    .local v2, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/facebook/GraphObject;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 295
    check-cast v0, Lcom/facebook/GraphObject;

    .line 296
    .local v0, "graphObject":Lcom/facebook/GraphObject;
    invoke-interface {v0}, Lcom/facebook/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    .line 301
    .end local v0    # "graphObject":Lcom/facebook/GraphObject;
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 297
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    const-class v3, Lcom/facebook/GraphObjectList;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 298
    check-cast v1, Lcom/facebook/GraphObjectList;

    .line 299
    .local v1, "graphObjectList":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<*>;"
    invoke-interface {v1}, Lcom/facebook/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0
.end method

.method private static declared-synchronized hasClassBeenVerified(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/facebook/GraphObjectWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/GraphObjectWrapper;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasSameId(Lcom/facebook/GraphObject;Lcom/facebook/GraphObject;)Z
    .locals 5
    .param p0, "a"    # Lcom/facebook/GraphObject;
    .param p1, "b"    # Lcom/facebook/GraphObject;

    .prologue
    const/4 v2, 0x0

    .line 100
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/facebook/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/facebook/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    const-string v3, "id"

    invoke-interface {p0, v3}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "idA":Ljava/lang/Object;
    const-string v3, "id"

    invoke-interface {p1, v3}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "idB":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static declared-synchronized recordClassHasBeenVerified(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/facebook/GraphObjectWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/GraphObjectWrapper;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v1

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v10, 0x3

    .line 154
    invoke-static {p0}, Lcom/facebook/GraphObjectWrapper;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_1

    .line 159
    new-instance v6, Lcom/facebook/FacebookGraphObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GraphObjectWrapper can only wrap interfaces, not class: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-direct {v6, v7}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 164
    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-lt v7, v8, :cond_2

    .line 200
    invoke-static {p0}, Lcom/facebook/GraphObjectWrapper;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    goto :goto_0

    .line 164
    :cond_2
    aget-object v1, v3, v7

    .line 165
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v4, v6

    .line 167
    .local v4, "parameterCount":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 168
    .local v5, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/facebook/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    .line 170
    .local v0, "hasPropertyNameOverride":Z
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Lcom/facebook/GraphObject;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    :cond_3
    :goto_2
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 173
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    .line 174
    if-eqz v0, :cond_6

    .line 177
    const-class v6, Lcom/facebook/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/PropertyName;

    invoke-interface {v6}, Lcom/facebook/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    :cond_5
    new-instance v6, Lcom/facebook/FacebookGraphObjectException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GraphObjectWrapper can\'t proxy method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 180
    :cond_6
    const-string v6, "set"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_5

    goto :goto_2

    .line 184
    :cond_7
    if-nez v4, :cond_5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5

    .line 185
    if-eqz v0, :cond_8

    .line 188
    const-class v6, Lcom/facebook/PropertyName;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/facebook/PropertyName;

    invoke-interface {v6}, Lcom/facebook/PropertyName;->value()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 191
    :cond_8
    const-string v6, "get"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_5

    goto :goto_2
.end method

.method static wrapArray(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/GraphObjectList;
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method
