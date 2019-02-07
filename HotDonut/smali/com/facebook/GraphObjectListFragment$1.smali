.class Lcom/facebook/GraphObjectListFragment$1;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$1;->this$0:Lcom/facebook/GraphObjectListFragment;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 550
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$1;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$2(Lcom/facebook/GraphObjectListFragment;)V

    .line 546
    :cond_0
    return-void
.end method
