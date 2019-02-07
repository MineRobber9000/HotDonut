.class Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->attach(Lcom/facebook/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/facebook/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->onCreateLoader()Lcom/facebook/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;>;",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    .local p2, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    .line 571
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/GraphObjectPagingLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    invoke-virtual {v0, p1, p2}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 574
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Lcom/facebook/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    .line 579
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/GraphObjectPagingLoader;

    .end local p1    # "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    invoke-virtual {v0, p1}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->onLoadReset(Lcom/facebook/GraphObjectPagingLoader;)V

    .line 582
    return-void
.end method
