.class Lcom/facebook/GraphObjectListFragment$2;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Lcom/facebook/GraphObjectAdapter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/GraphObjectAdapter$Filter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphObjectListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$2;->this$0:Lcom/facebook/GraphObjectListFragment;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeItem(Lcom/facebook/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$2;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/GraphObjectListFragment;->filterIncludesItem(Lcom/facebook/GraphObject;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic includeItem(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/GraphObject;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectListFragment$2;->includeItem(Lcom/facebook/GraphObject;)Z

    move-result v0

    return v0
.end method
