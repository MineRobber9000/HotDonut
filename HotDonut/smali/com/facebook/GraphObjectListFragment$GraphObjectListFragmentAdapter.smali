.class abstract Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
.super Lcom/facebook/GraphObjectAdapter;
.source "GraphObjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GraphObjectListFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Lcom/facebook/GraphObjectAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    .local p0, "this":Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;, "Lcom/facebook/GraphObjectListFragment<TT;>.GraphObjectListFragmentAdapter<TU;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->this$0:Lcom/facebook/GraphObjectListFragment;

    .line 763
    invoke-direct {p0, p2}, Lcom/facebook/GraphObjectAdapter;-><init>(Landroid/content/Context;)V

    .line 764
    return-void
.end method


# virtual methods
.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "graphObjectId"    # Ljava/lang/String;

    .prologue
    .line 768
    .local p0, "this":Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;, "Lcom/facebook/GraphObjectListFragment<TT;>.GraphObjectListFragmentAdapter<TU;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$5(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "graphObjectSelected"    # Z

    .prologue
    .line 773
    .local p0, "this":Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;, "Lcom/facebook/GraphObjectListFragment<TT;>.GraphObjectListFragmentAdapter<TU;>;"
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 774
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$5(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->shouldShowCheckBoxIfUnselected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const/4 v0, 0x0

    .line 774
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 776
    return-void

    .line 775
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
