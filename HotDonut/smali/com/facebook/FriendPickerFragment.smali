.class public Lcom/facebook/FriendPickerFragment;
.super Lcom/facebook/GraphObjectListFragment;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/GraphObjectListFragment",
        "<",
        "Lcom/facebook/GraphUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field public static final MULTI_SELECT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.FriendPickerFragment.MultiSelect"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final USER_ID_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.FriendPickerFragment.UserId"


# instance fields
.field private multiSelect:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/FriendPickerFragment;-><init>(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 69
    const-class v0, Lcom/facebook/GraphUser;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_friendpickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/GraphObjectListFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/facebook/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7
    .param p1, "userID"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/facebook/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 190
    .local p2, "extraFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/friends"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p3, v5, v6}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    .line 192
    .local v3, "request":Lcom/facebook/Request;
    iget-object v5, p0, Lcom/facebook/FriendPickerFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v5}, Lcom/facebook/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "pictureField":Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 195
    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 196
    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 197
    aput-object v2, v4, v5

    .line 199
    .local v4, "requiredFields":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-virtual {v3}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v1

    .line 202
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v5, "fields"

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 205
    return-object v3
.end method

.method private setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    if-eqz p1, :cond_1

    .line 211
    const-string v0, "com.facebook.FriendPickerFragment.UserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "com.facebook.FriendPickerFragment.UserId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FriendPickerFragment;->setUserId(Ljava/lang/String;)V

    .line 214
    :cond_0
    const-string v0, "com.facebook.FriendPickerFragment.MultiSelect"

    iget-boolean v1, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FriendPickerFragment;->setMultiSelect(Z)V

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    const/4 v2, 0x1

    .line 142
    new-instance v0, Lcom/facebook/FriendPickerFragment$1;

    .line 143
    invoke-virtual {p0}, Lcom/facebook/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 142
    invoke-direct {v0, p0, p0, v1}, Lcom/facebook/FriendPickerFragment$1;-><init>(Lcom/facebook/FriendPickerFragment;Lcom/facebook/GraphObjectListFragment;Landroid/content/Context;)V

    .line 156
    .local v0, "adapter":Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;, "Lcom/facebook/GraphObjectListFragment<Lcom/facebook/GraphUser;>.GraphObjectListFragmentAdapter<Lcom/facebook/GraphUser;>;"
    invoke-virtual {v0, v2}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setShowCheckbox(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/facebook/FriendPickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setShowPicture(Z)V

    .line 158
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setSortFields(Ljava/util/List;)V

    .line 159
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/facebook/GraphObjectListFragment$GraphObjectListFragmentAdapter;->setGroupByField(Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/GraphObjectListFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<",
            "Lcom/facebook/GraphUser;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/FriendPickerFragment;Lcom/facebook/FriendPickerFragment$ImmediateLoadingStrategy;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/GraphObjectListFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectListFragment",
            "<",
            "Lcom/facebook/GraphUser;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/GraphObjectListFragment$MultiSelectionStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/GraphObjectListFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/GraphObjectListFragment;)V

    goto :goto_0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/facebook/android/R$string;->com_facebook_choose_friends:I

    invoke-virtual {p0, v0}, Lcom/facebook/FriendPickerFragment;->getString(I)Ljava/lang/String;

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

.method public getMultiSelect()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    return v0
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

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 3
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/facebook/FriendPickerFragment;->adapter:Lcom/facebook/GraphObjectAdapter;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t issue requests until Fragment has been created."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/facebook/FriendPickerFragment;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/FriendPickerFragment;->userId:Ljava/lang/String;

    .line 181
    .local v0, "userToFetch":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/facebook/FriendPickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/FriendPickerFragment;->createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v1

    return-object v1

    .line 180
    .end local v0    # "userToFetch":Ljava/lang/String;
    :cond_1
    const-string v0, "me"

    goto :goto_0
.end method

.method public getSelection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/GraphUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/facebook/FriendPickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
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

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/FriendPickerFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic loadData(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->loadData(Z)V

    return-void
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->onActivityCreated(Landroid/os/Bundle;)V

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
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/GraphObjectListFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 121
    sget-object v1, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/FriendPickerFragment;->setMultiSelect(Z)V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
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
    .line 134
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "com.facebook.FriendPickerFragment.UserId"

    iget-object v1, p0, Lcom/facebook/FriendPickerFragment;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "com.facebook.FriendPickerFragment.MultiSelect"

    iget-boolean v1, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
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

.method public setMultiSelect(Z)V
    .locals 1
    .param p1, "multiSelect"    # Z

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    if-eq v0, p1, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/facebook/FriendPickerFragment;->multiSelect:Z

    .line 106
    invoke-virtual {p0}, Lcom/facebook/FriendPickerFragment;->createSelectionStrategy()Lcom/facebook/GraphObjectListFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FriendPickerFragment;->setSelectionStrategy(Lcom/facebook/GraphObjectListFragment$SelectionStrategy;)V

    .line 108
    :cond_0
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
    .line 129
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public bridge synthetic setShowPictures(Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/GraphObjectListFragment;->setShowPictures(Z)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/FriendPickerFragment;->userId:Ljava/lang/String;

    .line 89
    return-void
.end method
