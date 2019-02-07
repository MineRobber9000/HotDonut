.class public Lcom/facebook/PlacePickerFragment;
.super Lcom/facebook/GraphObjectListFragment;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;,
        Lcom/facebook/PlacePickerFragment$SearchTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DEFAULT_RADIUS_IN_METERS:I = 0x3e8

.field public static final DEFAULT_RESULTS_LIMIT:I = 0x64

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.PlacePickerFragment.Location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RADIUS_IN_METERS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.PlacePickerFragment.RadiusInMeters"

.field public static final RESULTS_LIMIT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.PlacePickerFragment.ResultsLimit"

.field public static final SEARCH_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.PlacePickerFragment.SearchText"

.field public static final SHOW_SEARCH_BOX_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.PlacePickerFragment.ShowSearchBox"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/PlacePickerFragment;-><init>(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-class v0, Lcom/facebook/GraphPlace;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_placepickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/GraphObjectListFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 84
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    .line 85
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/facebook/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method static synthetic access$25(Lcom/facebook/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/facebook/PlacePickerFragment;->onSearchTextTimerTriggered()V

    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 12
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p6, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 351
    .line 352
    .local p5, "extraFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v1, p6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    .line 351
    invoke-static/range {v1 .. v6}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v10

    .line 354
    .local v10, "request":Lcom/facebook/Request;
    iget-object v1, p0, Lcom/facebook/PlacePickerFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object v9

    .line 355
    .local v9, "pictureField":Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 356
    .local v7, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x6

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 357
    const-string v2, "id"

    aput-object v2, v11, v1

    const/4 v1, 0x1

    .line 358
    const-string v2, "name"

    aput-object v2, v11, v1

    const/4 v1, 0x2

    .line 359
    const-string v2, "location"

    aput-object v2, v11, v1

    const/4 v1, 0x3

    .line 360
    const-string v2, "category"

    aput-object v2, v11, v1

    const/4 v1, 0x4

    .line 361
    const-string v2, "were_here_count"

    aput-object v2, v11, v1

    const/4 v1, 0x5

    .line 362
    aput-object v9, v11, v1

    .line 364
    .local v11, "requiredFields":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 366
    invoke-virtual {v10}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v8

    .line 367
    .local v8, "parameters":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, ","

    invoke-static {v2, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v10, v8}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 370
    return-object v10
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .locals 6

    .prologue
    .line 390
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 391
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/facebook/PlacePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/PlacePickerFragment$2;-><init>(Lcom/facebook/PlacePickerFragment;)V

    .line 396
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    .line 391
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 398
    return-object v0
.end method

.method private onSearchTextTimerTriggered()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v1, p0, Lcom/facebook/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    if-eqz v1, :cond_0

    .line 403
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/facebook/PlacePickerFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/PlacePickerFragment$3;-><init>(Lcom/facebook/PlacePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/facebook/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    if-eqz p1, :cond_2

    .line 376
    const-string v1, "com.facebook.PlacePickerFragment.RadiusInMeters"

    iget v2, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 377
    const-string v1, "com.facebook.PlacePickerFragment.ResultsLimit"

    iget v2, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setResultsLimit(I)V

    .line 378
    const-string v1, "com.facebook.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "com.facebook.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 381
    :cond_0
    const-string v1, "com.facebook.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const-string v1, "com.facebook.PlacePickerFragment.Location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 383
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p0, v0}, Lcom/facebook/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 385
    .end local v0    # "location":Landroid/location/Location;
    :cond_1
    const-string v1, "com.facebook.PlacePickerFragment.ShowSearchBox"

    iget-boolean v2, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    .line 387
    :cond_2
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 304
    new-instance v0, Lcom/facebook/PlacePickerFragment$1;

    .line 305
    invoke-virtual {p0}, Lcom/facebook/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 304
    invoke-direct {v0, p0, p0, v1}, Lcom/facebook/PlacePickerFragment$1;-><init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V

    .line 333
    .local v0, "adapter":Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;, "Lcom/facebook/GraphObjectListFragment<Lcom/facebook/GraphPlace;>.GraphObjectListFragmentAdapter<Lcom/facebook/GraphPlace;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setShowCheckbox(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/facebook/PlacePickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setShowPicture(Z)V

    .line 335
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<",
            "Lcom/facebook/GraphPlace;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<",
            "Lcom/facebook/GraphPlace;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    sget v0, Lcom/facebook/android/R$string;->com_facebook_nearby:I

    invoke-virtual {p0, v0}, Lcom/facebook/PlacePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExtraFields()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getExtraFields()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFilter()Lcom/facebook/PickerFragment$GraphObjectFilter;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getFilter()Lcom/facebook/PickerFragment$GraphObjectFilter;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment;->location:Landroid/location/Location;

    return-object v0
.end method

.method public bridge synthetic getOnDataChangedListener()Lcom/facebook/PickerFragment$OnDataChangedListener;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getOnDataChangedListener()Lcom/facebook/PickerFragment$OnDataChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOnDoneButtonClickedListener()Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getOnDoneButtonClickedListener()Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOnSelectionChangedListener()Lcom/facebook/PickerFragment$OnSelectionChangedListener;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getOnSelectionChangedListener()Lcom/facebook/PickerFragment$OnSelectionChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public getRadiusInMeters()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/facebook/PlacePickerFragment;->location:Landroid/location/Location;

    iget v2, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    iget v3, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    iget-object v4, p0, Lcom/facebook/PlacePickerFragment;->searchText:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/PlacePickerFragment;->extraFields:Ljava/util/HashSet;

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public getResultsLimit()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Lcom/facebook/GraphPlace;
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/facebook/PlacePickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "selection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/GraphPlace;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphPlace;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShowPictures()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->getShowPictures()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic loadData(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->loadData(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 245
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/facebook/PlacePickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 248
    .local v3, "view":Landroid/view/ViewGroup;
    iget-boolean v4, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    if-eqz v4, :cond_1

    .line 249
    sget v4, Lcom/facebook/android/R$id;->com_facebook_placepickerfragment_search_box_stub:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 250
    .local v2, "stub":Landroid/view/ViewStub;
    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/facebook/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    .line 254
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/android/R$id;->search_box:I

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 259
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 260
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 264
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x2

    .line 264
    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 269
    iget-object v4, p0, Lcom/facebook/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :cond_0
    iget-object v4, p0, Lcom/facebook/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    new-instance v5, Lcom/facebook/PlacePickerFragment$SearchTextWatcher;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/facebook/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/PlacePickerFragment$SearchTextWatcher;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "stub":Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Lcom/facebook/GraphObjectPagingLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment;->onCreateLoader(ILandroid/os/Bundle;)Lcom/facebook/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/GraphObjectListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/GraphObjectListFragment;->onDetach()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/GraphObjectListFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 231
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 234
    iget v1, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setResultsLimit(I)V

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 238
    :cond_0
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/GraphObjectListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/facebook/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public bridge synthetic onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    return-void
.end method

.method onLoadingData()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 290
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "com.facebook.PlacePickerFragment.RadiusInMeters"

    iget v1, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string v0, "com.facebook.PlacePickerFragment.ResultsLimit"

    iget v1, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v0, "com.facebook.PlacePickerFragment.SearchText"

    iget-object v1, p0, Lcom/facebook/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "com.facebook.PlacePickerFragment.Location"

    iget-object v1, p0, Lcom/facebook/PlacePickerFragment;->location:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    const-string v0, "com.facebook.PlacePickerFragment.ShowSearchBox"

    iget-boolean v1, p0, Lcom/facebook/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method public bridge synthetic setArguments(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic setExtraFields(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setExtraFields(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic setFilter(Lcom/facebook/PickerFragment$GraphObjectFilter;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setFilter(Lcom/facebook/PickerFragment$GraphObjectFilter;)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment;->location:Landroid/location/Location;

    .line 126
    return-void
.end method

.method public bridge synthetic setOnDataChangedListener(Lcom/facebook/PickerFragment$OnDataChangedListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setOnDataChangedListener(Lcom/facebook/PickerFragment$OnDataChangedListener;)V

    return-void
.end method

.method public bridge synthetic setOnDoneButtonClickedListener(Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setOnDoneButtonClickedListener(Lcom/facebook/PickerFragment$OnDoneButtonClickedListener;)V

    return-void
.end method

.method public bridge synthetic setOnErrorListener(Lcom/facebook/PickerFragment$OnErrorListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setOnErrorListener(Lcom/facebook/PickerFragment$OnErrorListener;)V

    return-void
.end method

.method public bridge synthetic setOnSelectionChangedListener(Lcom/facebook/PickerFragment$OnSelectionChangedListener;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setOnSelectionChangedListener(Lcom/facebook/PickerFragment$OnSelectionChangedListener;)V

    return-void
.end method

.method public setRadiusInMeters(I)V
    .locals 0
    .param p1, "radiusInMeters"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/facebook/PlacePickerFragment;->radiusInMeters:I

    .line 144
    return-void
.end method

.method public setResultsLimit(I)V
    .locals 0
    .param p1, "resultsLimit"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/facebook/PlacePickerFragment;->resultsLimit:I

    .line 162
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 p1, 0x0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSearchTextAndReload(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "forceReloadEventIfSameText"    # Z

    .prologue
    .line 197
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/facebook/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 208
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/facebook/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public bridge synthetic setSession(Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setSession(Lcom/facebook/Session;)V

    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/facebook/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public bridge synthetic setShowPictures(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setShowPictures(Z)V

    return-void
.end method
