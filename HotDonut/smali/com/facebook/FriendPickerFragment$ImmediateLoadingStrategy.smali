.class Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;
.super Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImmediateLoadingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphUser;",
        ">.",
        "LoadingStrategy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FriendPickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/FriendPickerFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/FriendPickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/FriendPickerFragment;Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/FriendPickerFragment;)V

    return-void
.end method

.method private followNextLink()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/FriendPickerFragment;->displayActivityCircle()V

    .line 249
    iget-object v0, p0, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectPagingLoader;->followNextLink()V

    .line 250
    return-void
.end method


# virtual methods
.method protected onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<",
            "Lcom/facebook/GraphUser;",
            ">;",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<",
            "Lcom/facebook/GraphUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "loader":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<Lcom/facebook/GraphUser;>;"
    .local p2, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<Lcom/facebook/GraphUser;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 226
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/SimpleGraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;->followNextLink()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/FriendPickerFragment;->hideActivityCircle()V

    .line 239
    invoke-virtual {p2}, Lcom/facebook/SimpleGraphObjectCursor;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p2}, Lcom/facebook/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d0

    :goto_1
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/GraphObjectPagingLoader;->refreshOriginalRequest(J)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
