.class Lcom/facebook/FriendPickerFragment$1;
.super Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FriendPickerFragment;->createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphUser;",
        ">.GraphObject",
        "ListFragmentAdapter",
        "<",
        "Lcom/facebook/GraphUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/FriendPickerFragment;Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V
    .locals 0
    .param p3, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/FriendPickerFragment$1;->this$0:Lcom/facebook/FriendPickerFragment;

    .line 142
    invoke-direct {p0, p2, p3}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;-><init>(Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/GraphObject;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/GraphUser;

    invoke-virtual {p0, p1}, Lcom/facebook/FriendPickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/GraphUser;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/GraphUser;)I
    .locals 1
    .param p1, "graphObject"    # Lcom/facebook/GraphUser;

    .prologue
    .line 147
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_picker_list_row:I

    return v0
.end method
