.class Lcom/facebook/PlacePickerFragment$1;
.super Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/PlacePickerFragment;->createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphPlace;",
        ">.GraphObject",
        "ListFragmentAdapter",
        "<",
        "Lcom/facebook/GraphPlace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V
    .locals 0
    .param p3, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$1;->this$0:Lcom/facebook/PlacePickerFragment;

    .line 304
    invoke-direct {p0, p2, p3}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;-><init>(Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .locals 1

    .prologue
    .line 329
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_place_default_icon:I

    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/GraphObject;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/PlacePickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/GraphPlace;)I

    move-result v0

    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/GraphPlace;)I
    .locals 1
    .param p1, "graphObject"    # Lcom/facebook/GraphPlace;

    .prologue
    .line 324
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_placepickerfragment_list_row:I

    return v0
.end method

.method protected bridge synthetic getSubTitleOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/GraphPlace;

    invoke-virtual {p0, p1}, Lcom/facebook/PlacePickerFragment$1;->getSubTitleOfGraphObject(Lcom/facebook/GraphPlace;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/GraphPlace;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "graphObject"    # Lcom/facebook/GraphPlace;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 308
    invoke-interface {p1}, Lcom/facebook/GraphPlace;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "category":Ljava/lang/String;
    const-string v3, "were_here_count"

    invoke-interface {p1, v3}, Lcom/facebook/GraphPlace;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 311
    .local v2, "wereHereCount":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 312
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 313
    iget-object v3, p0, Lcom/facebook/PlacePickerFragment$1;->this$0:Lcom/facebook/PlacePickerFragment;

    sget v4, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/facebook/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    :goto_0
    return-object v1

    .line 314
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 315
    iget-object v3, p0, Lcom/facebook/PlacePickerFragment$1;->this$0:Lcom/facebook/PlacePickerFragment;

    sget v4, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_were_here_only_format:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/facebook/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 316
    :cond_2
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 317
    iget-object v3, p0, Lcom/facebook/PlacePickerFragment$1;->this$0:Lcom/facebook/PlacePickerFragment;

    sget v4, Lcom/facebook/android/R$string;->com_facebook_placepicker_subtitle_catetory_only_format:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/facebook/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
