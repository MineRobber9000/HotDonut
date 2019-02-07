.class Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;
.super Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
.source "GraphObjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiSelectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<TT;>.SelectionStrategy;"
    }
.end annotation


# instance fields
.field private selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment;)V
    .locals 1

    .prologue
    .line 702
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    .line 703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 748
    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 711
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "inBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "ids":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 738
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "splitIds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 740
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 743
    .end local v0    # "ids":Ljava/lang/String;
    .end local v1    # "splitIds":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "outBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "ids":Ljava/lang/String;
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .end local v0    # "ids":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x1

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 716
    if-eqz p1, :cond_0

    .line 717
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
