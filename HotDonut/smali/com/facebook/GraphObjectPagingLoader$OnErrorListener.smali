.class public interface abstract Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectPagingLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/FacebookException;Lcom/facebook/GraphObjectPagingLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookException;",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<*>;)V"
        }
    .end annotation
.end method
