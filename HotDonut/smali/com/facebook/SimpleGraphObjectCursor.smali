.class Lcom/facebook/SimpleGraphObjectCursor;
.super Ljava/lang/Object;
.source "SimpleGraphObjectCursor.java"

# interfaces
.implements Lcom/facebook/GraphObjectCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/GraphObjectCursor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private fromCache:Z

.field private graphObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private moreObjectsAvailable:Z

.field private pos:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    .line 10
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 12
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 13
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    .line 16
    return-void
.end method

.method constructor <init>(Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    .local p1, "other":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    .line 10
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 12
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 13
    iput-boolean v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    .line 19
    iget v0, p1, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    iput v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    .line 20
    iget-boolean v0, p1, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    iput-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    .line 22
    iget-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-boolean v0, p1, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    iput-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    .line 26
    return-void
.end method


# virtual methods
.method public addGraphObjects(Ljava/util/Collection;Z)V
    .locals 1
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    .local p1, "graphObjects":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    .line 32
    return-void
.end method

.method public areMoreObjectsAvailable()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    .line 138
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGraphObject()Lcom/facebook/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    if-gez v0, :cond_0

    .line 127
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    iget-object v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 130
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last object."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->graphObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObject;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 120
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 121
    .local v0, "count":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .prologue
    .line 115
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->closed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    return v0
.end method

.method public isLast()Z
    .locals 3

    .prologue
    .line 109
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 110
    .local v0, "count":I
    iget v1, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 62
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/facebook/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    .line 68
    .local v0, "count":I
    if-lt p1, v0, :cond_0

    .line 69
    iput v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    .line 79
    :goto_0
    return v1

    .line 73
    :cond_0
    if-gez p1, :cond_1

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    goto :goto_0

    .line 78
    :cond_1
    iput p1, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    .line 79
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget v0, p0, Lcom/facebook/SimpleGraphObjectCursor;->pos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/SimpleGraphObjectCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public setFromCache(Z)V
    .locals 0
    .param p1, "fromCache"    # Z

    .prologue
    .line 39
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/SimpleGraphObjectCursor;->fromCache:Z

    .line 40
    return-void
.end method

.method public setMoreObjectsAvailable(Z)V
    .locals 0
    .param p1, "moreObjectsAvailable"    # Z

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/SimpleGraphObjectCursor;->moreObjectsAvailable:Z

    .line 48
    return-void
.end method
