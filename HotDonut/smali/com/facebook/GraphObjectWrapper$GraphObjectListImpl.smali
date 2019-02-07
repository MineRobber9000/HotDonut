.class final Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;
.super Ljava/util/AbstractList;
.source "GraphObjectWrapper.java"

# interfaces
.implements Lcom/facebook/GraphObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Lcom/facebook/GraphObjectList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final state:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .locals 1
    .param p1, "state"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p2, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 536
    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iput-object p1, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    .line 540
    iput-object p2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    .line 541
    return-void
.end method

.method private checkIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 647
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 650
    :cond_1
    return-void
.end method

.method private put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/facebook/GraphObjectWrapper;->access$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 655
    .local v1, "underlyingObject":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    if-gez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 554
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only adding items at the end of the list is supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    .line 558
    return-void
.end method

.method public final castToListOf(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Lcom/facebook/GraphObjectList",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    const-class v1, Lcom/facebook/GraphObject;

    iget-object v2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    move-object v0, p0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/facebook/GraphObjectWrapper;->wrapArray(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_1
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t cast GraphObjectCollection of non-GraphObject type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 628
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 576
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    if-ne p0, p1, :cond_0

    .line 577
    const/4 v1, 0x1

    .line 583
    :goto_0
    return v1

    .line 578
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 579
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 582
    check-cast v0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;

    .line 583
    .local v0, "other":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    iget-object v1, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    iget-object v2, v0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->checkIndex(I)V

    .line 591
    iget-object v2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 595
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/GraphObjectWrapper;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public final getInnerJSONArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 571
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 633
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->checkIndex(I)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 565
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    .line 566
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 602
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 545
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;, "Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl<TT;>;"
    const-string v0, "GraphObjectList{itemType=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/GraphObjectWrapper$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
