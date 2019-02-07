.class Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;
.super Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
.source "GraphObjectListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleSelectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<TT;>.SelectionStrategy;"
    }
.end annotation


# instance fields
.field private selectedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 3
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
    .line 655
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 1
    .param p1, "inBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 681
    if-eqz p1, :cond_0

    .line 682
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 684
    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outBundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    goto :goto_0
.end method
