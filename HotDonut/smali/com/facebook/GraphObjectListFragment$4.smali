.class Lcom/facebook/GraphObjectListFragment$4;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$4;->this$0:Lcom/facebook/GraphObjectListFragment;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
