.class abstract Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoadingStrategy"
.end annotation


# static fields
.field protected static final CACHED_RESULT_REFRESH_DELAY:I = 0x7d0


# instance fields
.field protected adapter:Lcom/facebook/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected loader:Lcom/facebook/GraphObjectPagingLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectPagingLoader",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)Lcom/facebook/GraphObjectListFragment;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    return-object v0
.end method


# virtual methods
.method public attach(Lcom/facebook/GraphObjectAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "adapter":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 561
    new-instance v3, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;

    invoke-direct {v3, p0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$1;-><init>(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)V

    .line 560
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObjectPagingLoader;

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    .line 585
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    new-instance v1, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;

    invoke-direct {v1, p0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;-><init>(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectPagingLoader;->setOnErrorListener(Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;)V

    .line 595
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    .line 597
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectPagingLoader;->getCursor()Lcom/facebook/SimpleGraphObjectCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->changeCursor(Lcom/facebook/GraphObjectCursor;)Z

    .line 598
    return-void
.end method

.method public clearResults()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectPagingLoader;->clearResults()V

    .line 612
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->setDataNeededListener(Lcom/facebook/GraphObjectAdapter$DataNeededListener;)V

    .line 602
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectPagingLoader;->setOnErrorListener(Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;)V

    .line 604
    iput-object v1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    .line 605
    iput-object v1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    .line 606
    return-void
.end method

.method protected onCreateLoader()Lcom/facebook/GraphObjectPagingLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lcom/facebook/GraphObjectPagingLoader;

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v2}, Lcom/facebook/GraphObjectListFragment;->access$4(Lcom/facebook/GraphObjectListFragment;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/GraphObjectPagingLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<TT;>;",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "loader":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    .local p2, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-virtual {v0, p2}, Lcom/facebook/GraphObjectListFragment;->updateAdapter(Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 630
    return-void
.end method

.method protected onLoadReset(Lcom/facebook/GraphObjectPagingLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "loader":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->changeCursor(Lcom/facebook/GraphObjectCursor;)Z

    .line 626
    return-void
.end method

.method public startLoading(Lcom/facebook/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Request;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;Z)V

    .line 618
    :cond_0
    return-void
.end method
