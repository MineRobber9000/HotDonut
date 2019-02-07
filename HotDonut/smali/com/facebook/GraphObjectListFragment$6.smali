.class Lcom/facebook/GraphObjectListFragment$6;
.super Ljava/lang/Object;
.source "GraphObjectListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectListFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V
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
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment$6;->this$0:Lcom/facebook/GraphObjectListFragment;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$6;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$8(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment$6;->this$0:Lcom/facebook/GraphObjectListFragment;

    invoke-static {v0}, Lcom/facebook/GraphObjectListFragment;->access$8(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;->onDoneButtonClicked()V

    .line 422
    :cond_0
    return-void
.end method
