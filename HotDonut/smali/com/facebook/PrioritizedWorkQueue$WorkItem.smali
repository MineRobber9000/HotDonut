.class interface abstract Lcom/facebook/PrioritizedWorkQueue$WorkItem;
.super Ljava/lang/Object;
.source "PrioritizedWorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/PrioritizedWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WorkItem"
.end annotation


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract setPriority(I)V
.end method
