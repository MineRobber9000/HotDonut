.class abstract Lcom/facebook/GraphObjectListFragment;
.super Landroid/support/v4/app/Fragment;
.source "GraphObjectListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/facebook/PickerFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;,
        Lcom/facebook/GraphObjectListFragment$LoadingStrategy;,
        Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;,
        Lcom/facebook/GraphObjectListFragment$SelectionStrategy;,
        Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/facebook/PickerFragment",
        "<TT;>;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/facebook/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final SELECTION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.android.GraphObjectListFragment.Selection"


# instance fields
.field private activityCircle:Landroid/widget/ProgressBar;

.field adapter:Lcom/facebook/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private doneButton:Landroid/widget/Button;

.field private doneButtonBackground:Landroid/graphics/drawable/Drawable;

.field private doneButtonText:Ljava/lang/String;

.field extraFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/facebook/PickerFragment$GraphObjectFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final layout:I

.field private listView:Landroid/widget/ListView;

.field private loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end field

.field private onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

.field private onDoneButtonClickedListener:Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

.field private onErrorListener:Lcom/facebook/PickerFragment$OnErrorListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

.field private selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end field

.field private sessionTracker:Lcom/facebook/SessionTracker;

.field private showPictures:Z

.field private showTitleBar:Z

.field private titleBarBackground:Landroid/graphics/drawable/Drawable;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .param p2, "layout"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    .line 49
    iput-boolean v0, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    .line 540
    new-instance v0, Lcom/facebook/GraphObjectListFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/GraphObjectListFragment$1;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 66
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->graphObjectClass:Ljava/lang/Class;

    .line 67
    iput p2, p0, Lcom/facebook/GraphObjectListFragment;->layout:I

    .line 69
    invoke-direct {p0, p3}, Lcom/facebook/GraphObjectListFragment;->setGraphObjectListFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method static synthetic access$2(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/facebook/GraphObjectListFragment;->reprioritizeDownloads()V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnErrorListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onErrorListener:Lcom/facebook/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/GraphObjectListFragment;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->graphObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/GraphObjectListFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/GraphObjectListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/GraphObjectListFragment;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/facebook/GraphObjectListFragment;->clearResults()V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/GraphObjectListFragment;)Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onDoneButtonClickedListener:Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    return-object v0
.end method

.method private clearResults()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 472
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    if-eqz v4, :cond_1

    .line 473
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    invoke-virtual {v4}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 474
    .local v1, "wasSelection":Z
    :goto_0
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v4}, Lcom/facebook/GraphObjectAdapter;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 476
    .local v0, "wasData":Z
    :goto_1
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-virtual {v2}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->clearResults()V

    .line 477
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    invoke-virtual {v2}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->clear()V

    .line 478
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v2}, Lcom/facebook/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 481
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    invoke-interface {v2}, Lcom/facebook/PickerFragment$OnDataChangedListener;->onDataChanged()V

    .line 484
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    if-eqz v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    invoke-interface {v2}, Lcom/facebook/PickerFragment$OnSelectionChangedListener;->onSelectionChanged()V

    .line 488
    .end local v0    # "wasData":Z
    .end local v1    # "wasSelection":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 473
    goto :goto_0

    .restart local v1    # "wasSelection":Z
    :cond_3
    move v0, v3

    .line 474
    goto :goto_1
.end method

.method private inflateTitleBar(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    const/4 v4, -0x1

    .line 400
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar_stub:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 401
    .local v1, "stub":Landroid/view/ViewStub;
    if-eqz v1, :cond_5

    .line 402
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, "titleBar":Landroid/view/View;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 408
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :cond_0
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_done_button:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    .line 415
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 416
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    new-instance v4, Lcom/facebook/GraphObjectListFragment$6;

    invoke-direct {v4, p0}, Lcom/facebook/GraphObjectListFragment$6;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getDefaultDoneButtonText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    .line 428
    :cond_1
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 429
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :cond_2
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 433
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_3
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleTextView:Landroid/widget/TextView;

    .line 438
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 439
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getDefaultTitleText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    .line 442
    :cond_4
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 443
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "titleBar":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private loadDataSkippingRoundTripIfCached()V
    .locals 2

    .prologue
    .line 462
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-direct {p0}, Lcom/facebook/GraphObjectListFragment;->clearResults()V

    .line 464
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectListFragment;->getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    .line 465
    .local v0, "request":Lcom/facebook/Request;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->onLoadingData()V

    .line 467
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->startLoading(Lcom/facebook/Request;)V

    .line 469
    :cond_0
    return-void
.end method

.method private onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 451
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObject;

    .line 452
    .local v0, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    invoke-virtual {v2, v1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v2}, Lcom/facebook/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 456
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    if-eqz v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    invoke-interface {v2}, Lcom/facebook/PickerFragment$OnSelectionChangedListener;->onSelectionChanged()V

    .line 459
    :cond_0
    return-void
.end method

.method private reprioritizeDownloads()V
    .locals 4

    .prologue
    .line 531
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 532
    .local v0, "firstVisibleItem":I
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 534
    .local v1, "lastVisibleItem":I
    if-ltz v1, :cond_0

    .line 535
    add-int/lit8 v3, v1, 0x1

    sub-int v2, v3, v0

    .line 536
    .local v2, "visibleItemCount":I
    iget-object v3, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/facebook/GraphObjectAdapter;->prioritizeViewRange(II)V

    .line 538
    .end local v2    # "visibleItemCount":I
    :cond_0
    return-void
.end method

.method private setGraphObjectListFragmentSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    if-eqz p1, :cond_2

    .line 375
    const-string v4, "com.facebook.PickerFragment.ShowPictures"

    iget-boolean v5, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    .line 376
    const-string v4, "com.facebook.PickerFragment.ExtraFields"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "extraFieldsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 378
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/GraphObjectListFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 381
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_0
    const-string v4, "com.facebook.PickerFragment.ShowTitleBar"

    iget-boolean v5, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    .line 382
    const-string v4, "com.facebook.PickerFragment.TitleText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "titleTextString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 384
    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    .line 385
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 386
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->titleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_1
    const-string v4, "com.facebook.PickerFragment.DoneButtonText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "doneButtonTextString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 391
    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    .line 392
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lcom/facebook/GraphObjectListFragment;->doneButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .end local v0    # "doneButtonTextString":Ljava/lang/String;
    .end local v1    # "extraFieldsString":Ljava/lang/String;
    .end local v3    # "titleTextString":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method abstract createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.GraphObject",
            "ListFragmentAdapter",
            "<TT;>;"
        }
    .end annotation
.end method

.method abstract createLoadingStrategy()Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end method

.method abstract createSelectionStrategy()Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end method

.method displayActivityCircle()V
    .locals 2

    .prologue
    .line 341
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->layoutActivityCircle()V

    .line 343
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    :cond_0
    return-void
.end method

.method filterIncludesItem(Lcom/facebook/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->filter:Lcom/facebook/PickerFragment$GraphObjectFilter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->filter:Lcom/facebook/PickerFragment$GraphObjectFilter;

    invoke-interface {v0, p1}, Lcom/facebook/PickerFragment$GraphObjectFilter;->includeItem(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getDefaultDoneButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    sget v0, Lcom/facebook/android/R$string;->com_facebook_picker_done_button_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/GraphObjectListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFilter()Lcom/facebook/PickerFragment$GraphObjectFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->filter:Lcom/facebook/PickerFragment$GraphObjectFilter;

    return-object v0
.end method

.method public getOnDataChangedListener()Lcom/facebook/PickerFragment$OnDataChangedListener;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    return-object v0
.end method

.method public getOnDoneButtonClickedListener()Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onDoneButtonClickedListener:Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onErrorListener:Lcom/facebook/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method public getOnSelectionChangedListener()Lcom/facebook/PickerFragment$OnSelectionChangedListener;
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    return-object v0
.end method

.method abstract getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
.end method

.method getSelectedGraphObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->getSelectedIds()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public getShowPictures()Z
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    return v0
.end method

.method hideActivityCircle()V
    .locals 2

    .prologue
    .line 355
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 358
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    :cond_0
    return-void
.end method

.method layoutActivityCircle()V
    .locals 2

    .prologue
    .line 350
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    .line 351
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/facebook/Utility;->setAlpha(Landroid/view/View;F)V

    .line 352
    return-void

    .line 350
    .end local v0    # "alpha":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public loadData(Z)V
    .locals 1
    .param p1, "forceReload"    # Z

    .prologue
    .line 271
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/facebook/GraphObjectListFragment;->loadDataSkippingRoundTripIfCached()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Lcom/facebook/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/GraphObjectListFragment$5;

    invoke-direct {v2, p0}, Lcom/facebook/GraphObjectListFragment$5;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    .line 148
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->createLoadingStrategy()Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    .line 151
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->attach(Lcom/facebook/GraphObjectAdapter;)V

    .line 153
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->createSelectionStrategy()Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    .line 154
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.GraphObjectListFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/facebook/GraphObjectListFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    .line 77
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    new-instance v1, Lcom/facebook/GraphObjectListFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/GraphObjectListFragment$2;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->setFilter(Lcom/facebook/GraphObjectAdapter$Filter;)V

    .line 83
    return-void
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment;->onCreateLoader(ILandroid/os/Bundle;)Lcom/facebook/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lcom/facebook/GraphObjectPagingLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/facebook/GraphObjectPagingLoader",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    new-instance v0, Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {p0}, Lcom/facebook/GraphObjectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->graphObjectClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/facebook/GraphObjectPagingLoader;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget v1, p0, Lcom/facebook/GraphObjectListFragment;->layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    .local v0, "view":Landroid/view/ViewGroup;
    sget v1, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    .line 111
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/GraphObjectListFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/GraphObjectListFragment$3;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/facebook/GraphObjectListFragment$4;

    invoke-direct {v2, p0}, Lcom/facebook/GraphObjectListFragment$4;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    sget v1, Lcom/facebook/android/R$id;->com_facebook_picker_activity_circle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/facebook/GraphObjectListFragment;->activityCircle:Landroid/widget/ProgressBar;

    .line 131
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    const/4 v1, 0x0

    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 166
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->loadingStrategy:Lcom/facebook/GraphObjectListFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectListFragment$LoadingStrategy;->detach()V

    .line 170
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->stopTracking()V

    .line 171
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 88
    sget-object v3, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    invoke-virtual {p1, p2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/GraphObjectListFragment;->setShowPictures(Z)V

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "extraFieldsString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "strings":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/GraphObjectListFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 97
    .end local v2    # "strings":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    .line 98
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    .line 99
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    .line 100
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;>;",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    .local p2, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/GraphObjectAdapter;->changeCursor(Lcom/facebook/GraphObjectCursor;)Z

    .line 298
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Lcom/facebook/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/facebook/SimpleGraphObjectCursor<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectAdapter;->changeCursor(Lcom/facebook/GraphObjectCursor;)Z

    .line 293
    return-void
.end method

.method onLoadingData()V
    .locals 0

    .prologue
    .line 330
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectListFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.GraphObjectListFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/GraphObjectListFragment$SelectionStrategy;->saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    const-string v0, "com.facebook.PickerFragment.ShowPictures"

    iget-boolean v1, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string v0, "com.facebook.PickerFragment.ExtraFields"

    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    const-string v0, "com.facebook.PickerFragment.ShowTitleBar"

    iget-boolean v1, p0, Lcom/facebook/GraphObjectListFragment;->showTitleBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v0, "com.facebook.PickerFragment.TitleText"

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->titleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "com.facebook.PickerFragment.DoneButtonText"

    iget-object v1, p0, Lcom/facebook/GraphObjectListFragment;->doneButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 183
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 185
    return-void
.end method

.method public setExtraFields(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 267
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/facebook/PickerFragment$GraphObjectFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/PickerFragment$GraphObjectFilter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "filter":Lcom/facebook/PickerFragment$GraphObjectFilter;, "Lcom/facebook/PickerFragment$GraphObjectFilter<TT;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->filter:Lcom/facebook/PickerFragment$GraphObjectFilter;

    .line 236
    return-void
.end method

.method public setOnDataChangedListener(Lcom/facebook/PickerFragment$OnDataChangedListener;)V
    .locals 0

    .prologue
    .line 194
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "onDataChangedListener":Lcom/facebook/PickerFragment$OnDataChangedListener;, "Lcom/facebook/PickerFragment$OnDataChangedListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    .line 195
    return-void
.end method

.method public setOnDoneButtonClickedListener(Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;)V
    .locals 0

    .prologue
    .line 215
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "onDoneButtonClickedListener":Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;, "Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->onDoneButtonClickedListener:Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    .line 216
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/PickerFragment$OnErrorListener;)V
    .locals 0

    .prologue
    .line 225
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->onErrorListener:Lcom/facebook/PickerFragment$OnErrorListener;

    .line 226
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/facebook/PickerFragment$OnSelectionChangedListener;)V
    .locals 0

    .prologue
    .line 205
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "onSelectionChangedListener":Lcom/facebook/PickerFragment$OnSelectionChangedListener;, "Lcom/facebook/PickerFragment$OnSelectionChangedListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->onSelectionChangedListener:Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    .line 206
    return-void
.end method

.method setSelectionStrategy(Lcom/facebook/GraphObjectListFragment$SelectionStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectListFragment",
            "<TT;>.SelectionStrategy;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "selectionStrategy":Lcom/facebook/GraphObjectListFragment$SelectionStrategy;, "Lcom/facebook/GraphObjectListFragment<TT;>.SelectionStrategy;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    if-eq p1, v0, :cond_0

    .line 364
    iput-object p1, p0, Lcom/facebook/GraphObjectListFragment;->selectionStrategy:Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    .line 365
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 370
    :cond_0
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 245
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectListFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 246
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setGraphObjectListFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public setShowPictures(Z)V
    .locals 0
    .param p1, "showPictures"    # Z

    .prologue
    .line 255
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/GraphObjectListFragment;->showPictures:Z

    .line 256
    return-void
.end method

.method updateAdapter(Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/facebook/GraphObjectListFragment;, "Lcom/facebook/GraphObjectListFragment<TT;>;"
    .local p1, "data":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    if-eqz v6, :cond_2

    .line 503
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 504
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 505
    .local v1, "anchorPosition":I
    if-lez v1, :cond_0

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 508
    :cond_0
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v6, v1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 509
    .local v0, "anchorItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v5, :cond_3

    .line 510
    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v6

    sget-object v7, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v6, v7, :cond_3

    .line 511
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 514
    .local v4, "top":I
    :goto_0
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v6, p1}, Lcom/facebook/GraphObjectAdapter;->changeCursor(Lcom/facebook/GraphObjectCursor;)Z

    move-result v2

    .line 516
    .local v2, "dataChanged":Z
    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 518
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    iget-object v7, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    iget-object v8, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/GraphObject;)I

    move-result v3

    .line 519
    .local v3, "newPositionOfItem":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 520
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 524
    .end local v3    # "newPositionOfItem":I
    :cond_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    if-eqz v6, :cond_2

    .line 525
    iget-object v6, p0, Lcom/facebook/GraphObjectListFragment;->onDataChangedListener:Lcom/facebook/PickerFragment$OnDataChangedListener;

    invoke-interface {v6}, Lcom/facebook/PickerFragment$OnDataChangedListener;->onDataChanged()V

    .line 528
    .end local v0    # "anchorItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    .end local v1    # "anchorPosition":I
    .end local v2    # "dataChanged":Z
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 511
    .restart local v0    # "anchorItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    .restart local v1    # "anchorPosition":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
