.class final Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
.super Lcom/facebook/GraphObjectWrapper$ProxyBase;
.source "GraphObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectWrapper$ProxyBase",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 0
    .param p1, "state"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectWrapper$ProxyBase;-><init>(Ljava/lang/Object;)V

    .line 370
    iput-object p2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    .line 371
    return-void
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v7, v11

    .line 469
    .local v7, "parameterCount":I
    const-class v11, Lcom/facebook/PropertyName;

    invoke-virtual {p1, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/facebook/PropertyName;

    .line 471
    .local v9, "propertyNameOverride":Lcom/facebook/PropertyName;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Lcom/facebook/PropertyName;->value()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "key":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_2

    .line 477
    iget-object v11, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 479
    .local v10, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 481
    .local v0, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 482
    .local v1, "genericReturnType":Ljava/lang/reflect/Type;
    const/4 v8, 0x0

    .line 483
    .local v8, "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    instance-of v11, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_0

    move-object v8, v1

    .line 484
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 487
    :cond_0
    invoke-static {v10, v0, v8}, Lcom/facebook/GraphObjectWrapper;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v10

    .line 515
    .end local v0    # "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "genericReturnType":Ljava/lang/reflect/Type;
    .end local v8    # "parameterizedReturnType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "value":Ljava/lang/Object;
    :goto_1
    return-object v10

    .line 472
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/Utility;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 490
    .restart local v4    # "key":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    if-ne v7, v11, :cond_8

    .line 492
    const/4 v11, 0x0

    aget-object v10, p2, v11

    .line 495
    .restart local v10    # "value":Ljava/lang/Object;
    const-class v11, Lcom/facebook/GraphObject;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 496
    check-cast v10, Lcom/facebook/GraphObject;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-interface {v10}, Lcom/facebook/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    .line 511
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const/4 v10, 0x0

    goto :goto_1

    .line 497
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_4
    const-class v11, Lcom/facebook/GraphObjectList;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 498
    check-cast v10, Lcom/facebook/GraphObjectList;

    .end local v10    # "value":Ljava/lang/Object;
    invoke-interface {v10}, Lcom/facebook/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v10

    .local v10, "value":Lorg/json/JSONArray;
    goto :goto_2

    .line 499
    .local v10, "value":Ljava/lang/Object;
    :cond_5
    const-class v11, Ljava/lang/Iterable;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 500
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .local v3, "jsonArray":Lorg/json/JSONArray;
    move-object v2, v10

    .line 501
    check-cast v2, Ljava/lang/Iterable;

    .line 502
    .local v2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 509
    move-object v10, v3

    .local v10, "value":Lorg/json/JSONArray;
    goto :goto_2

    .line 502
    .local v10, "value":Ljava/lang/Object;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 503
    .local v6, "o":Ljava/lang/Object;
    const-class v12, Lcom/facebook/GraphObject;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 504
    check-cast v6, Lcom/facebook/GraphObject;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-interface {v6}, Lcom/facebook/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 506
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 515
    .end local v2    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_1
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 438
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "methodName":Ljava/lang/String;
    const-string v4, "cast"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Class;

    .line 443
    .local v0, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    if-eqz v0, :cond_0

    .line 444
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 463
    .end local v0    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    .end local p1    # "proxy":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 447
    .restart local v0    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    .restart local p1    # "proxy":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v0, v4}, Lcom/facebook/GraphObjectWrapper;->access$0(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object p1

    goto :goto_0

    .line 448
    .end local v0    # "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/GraphObject;>;"
    :cond_1
    const-string v4, "getInnerJSONObject"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 449
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    move-object v3, v1

    .line 450
    check-cast v3, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;

    .line 451
    .local v3, "otherProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    iget-object p1, v3, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    goto :goto_0

    .line 452
    .end local v1    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v3    # "otherProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    :cond_2
    const-string v4, "asMap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/facebook/GraphObjectWrapper;->access$1(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 454
    :cond_3
    const-string v4, "getProperty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 455
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 456
    :cond_4
    const-string v4, "setProperty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 457
    invoke-direct {p0, p3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 458
    :cond_5
    const-string v4, "removeProperty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 459
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    const/4 p1, 0x0

    goto :goto_0

    .line 463
    :cond_6
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 396
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, "clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/Utility;->jsonObjectClear(Lorg/json/JSONObject;)V

    move-object v3, v5

    .line 434
    :goto_0
    return-object v3

    .line 400
    :cond_0
    const-string v3, "containsKey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 402
    :cond_1
    const-string v3, "containsValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    invoke-static {v3, v4}, Lcom/facebook/Utility;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 404
    :cond_2
    const-string v3, "entrySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/Utility;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 406
    :cond_3
    const-string v3, "get"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 408
    :cond_4
    const-string v3, "isEmpty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 409
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 410
    :cond_6
    const-string v3, "keySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 411
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/Utility;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    goto/16 :goto_0

    .line 412
    :cond_7
    const-string v3, "put"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 413
    invoke-direct {p0, p2}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    .line 414
    :cond_8
    const-string v3, "putAll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v3, p2, v4

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_a

    .line 418
    aget-object v0, p2, v4

    check-cast v0, Ljava/util/Map;

    .line 419
    .local v0, "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v1, v0

    .line 423
    .end local v0    # "castMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3, v1}, Lcom/facebook/Utility;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    move-object v3, v5

    .line 424
    goto/16 :goto_0

    .line 420
    :cond_a
    aget-object v3, p2, v4

    instance-of v3, v3, Lcom/facebook/GraphObject;

    if-eqz v3, :cond_9

    .line 421
    aget-object v3, p2, v4

    check-cast v3, Lcom/facebook/GraphObject;

    invoke-interface {v3}, Lcom/facebook/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 425
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    const-string v3, "remove"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 426
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v5

    .line 427
    goto/16 :goto_0

    .line 428
    :cond_c
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 429
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_0

    .line 430
    :cond_d
    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 431
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/Utility;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v3

    goto/16 :goto_0

    .line 434
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 519
    const/4 v4, 0x0

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    .line 520
    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, p1, v4

    .line 521
    .local v2, "property":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/GraphObjectWrapper;->access$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 523
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    const/4 v4, 0x0

    return-object v4

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 382
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 383
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .line 384
    :cond_0
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 385
    invoke-direct {p0, p2, p3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 386
    :cond_1
    const-class v1, Lcom/facebook/GraphObject;

    if-ne v0, v1, :cond_2

    .line 387
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 388
    :cond_2
    const-class v1, Lcom/facebook/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-direct {p0, p2, p3}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
