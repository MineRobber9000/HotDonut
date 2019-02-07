.class Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;


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
        "Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/facebook/FacebookException;Lcom/facebook/GraphObjectPagingLoader;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookException;",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, "loader":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<*>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->access$0(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)Lcom/facebook/GraphObjectListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphObjectListFragment;->hideActivityCircle()V

    .line 589
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->access$0(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)Lcom/facebook/GraphObjectListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$3(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$LoadingStrategy$2;->this$1:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->access$0(Lcom/facebook/GraphObjectListFragment$LoadingStrategy;)Lcom/facebook/GraphObjectListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$3(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/PickerFragment$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 592
    :cond_0
    return-void
.end method
