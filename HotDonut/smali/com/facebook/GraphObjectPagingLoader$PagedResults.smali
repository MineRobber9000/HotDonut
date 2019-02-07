.class interface abstract Lcom/facebook/GraphObjectPagingLoader$PagedResults;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"

# interfaces
.implements Lcom/facebook/GraphObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectPagingLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PagedResults"
.end annotation


# virtual methods
.method public abstract getData()Lcom/facebook/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectList",
            "<",
            "Lcom/facebook/GraphObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPaging()Lcom/facebook/GraphObjectPagingLoader$PagingInfo;
.end method
