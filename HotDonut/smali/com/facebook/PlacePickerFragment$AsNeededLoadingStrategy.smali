.class Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;
.super Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/PlacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsNeededLoadingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphPlace;",
        ">.",
        "LoadingStrategy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/PlacePickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/PlacePickerFragment;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/facebook/GraphObjectAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter",
            "<",
            "Lcom/facebook/GraphPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "adapter":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<Lcom/facebook/GraphPlace;>;"
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->attach(Lcom/facebook/GraphObjectAdapter;)V

    .line 439
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->adapter:Lcom/facebook/GraphObjectAdapter;

    new-instance v1, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;

    invoke-direct {v1, p0}, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;-><init>(Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->setDataNeededListener(Lcom/facebook/GraphObjectAdapter$DataNeededListener;)V

    .line 449
    return-void
.end method

.method protected onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<",
            "Lcom/facebook/GraphPlace;",
            ">;",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<",
            "Lcom/facebook/GraphPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "loader":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<Lcom/facebook/GraphPlace;>;"
    .local p2, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<Lcom/facebook/GraphPlace;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 458
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-virtual {v0}, Lcom/facebook/PlacePickerFragment;->hideActivityCircle()V

    .line 464
    invoke-virtual {p2}, Lcom/facebook/SimpleGraphObjectCursor;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p2}, Lcom/facebook/SimpleGraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7d0

    :goto_1
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/GraphObjectPagingLoader;->refreshOriginalRequest(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
