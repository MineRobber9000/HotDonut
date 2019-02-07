.class Lcom/facebook/GraphObjectAdapter;
.super Landroid/widget/BaseAdapter;
.source "GraphObjectAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphObjectAdapter$DataNeededListener;,
        Lcom/facebook/GraphObjectAdapter$Filter;,
        Lcom/facebook/GraphObjectAdapter$ItemPicture;,
        Lcom/facebook/GraphObjectAdapter$ItemPictureData;,
        Lcom/facebook/GraphObjectAdapter$PictureDownload;,
        Lcom/facebook/GraphObjectAdapter$PictureDownloader;,
        Lcom/facebook/GraphObjectAdapter$SectionAndItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type:[I

.field static final synthetic $assertionsDisabled:Z

.field private static final downloadWorkQueue:Lcom/facebook/PrioritizedWorkQueue;


# instance fields
.field private final ACTIVITY_CIRCLE_VIEW_TYPE:I

.field private final DISPLAY_SECTIONS_THRESHOLD:I

.field private final GRAPH_OBJECT_VIEW_TYPE:I

.field private final HEADER_VIEW_TYPE:I

.field private final ID:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field private final PICTURE:Ljava/lang/String;

.field private cursor:Lcom/facebook/GraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

.field private displaySections:Z

.field private filter:Lcom/facebook/GraphObjectAdapter$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private graphObjectsBySection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private groupByField:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownloader;"
        }
    .end annotation
.end field

.field private sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showCheckbox:Z

.field private showPicture:Z

.field private sortFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->values()[Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->SECTION_HEADER:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/GraphObjectAdapter;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lcom/facebook/PrioritizedWorkQueue;

    invoke-direct {v0}, Lcom/facebook/PrioritizedWorkQueue;-><init>()V

    sput-object v0, Lcom/facebook/GraphObjectAdapter;->downloadWorkQueue:Lcom/facebook/PrioritizedWorkQueue;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput v1, p0, Lcom/facebook/GraphObjectAdapter;->DISPLAY_SECTIONS_THRESHOLD:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/GraphObjectAdapter;->HEADER_VIEW_TYPE:I

    .line 44
    iput v1, p0, Lcom/facebook/GraphObjectAdapter;->GRAPH_OBJECT_VIEW_TYPE:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/GraphObjectAdapter;->ACTIVITY_CIRCLE_VIEW_TYPE:I

    .line 47
    const-string v0, "id"

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->ID:Ljava/lang/String;

    .line 48
    const-string v0, "name"

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->NAME:Ljava/lang/String;

    .line 49
    const-string v0, "picture"

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->PICTURE:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 101
    return-void
.end method

.method static synthetic access$0()Lcom/facebook/PrioritizedWorkQueue;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/GraphObjectAdapter;->downloadWorkQueue:Lcom/facebook/PrioritizedWorkQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/GraphObjectAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method private getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    move-object v1, p1

    .line 248
    .local v1, "result":Landroid/view/View;
    if-nez v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/facebook/android/R$layout;->com_facebook_picker_activity_circle_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 251
    :cond_0
    sget v2, Lcom/facebook/android/R$id;->com_facebook_picker_row_activity_circle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 252
    .local v0, "activityCircle":Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    return-object v1
.end method

.method private getPictureDownloader()Lcom/facebook/GraphObjectAdapter$PictureDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownloader;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;-><init>(Lcom/facebook/GraphObjectAdapter;Lcom/facebook/GraphObjectAdapter$PictureDownloader;)V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter;->pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    return-object v0
.end method

.method private rebuildSections()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    .line 388
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    .line 389
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    .line 390
    iput-boolean v6, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    .line 392
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v7}, Lcom/facebook/GraphObjectCursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const/4 v2, 0x0

    .line 397
    .local v2, "objectsAdded":I
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v7}, Lcom/facebook/GraphObjectCursor;->moveToFirst()Z

    .line 399
    :cond_2
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v7}, Lcom/facebook/GraphObjectCursor;->getGraphObject()Lcom/facebook/GraphObject;

    move-result-object v1

    .line 401
    .local v1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter;->filterIncludesItem(Lcom/facebook/GraphObject;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 416
    :goto_1
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v7}, Lcom/facebook/GraphObjectCursor;->moveToNext()Z

    move-result v7

    .line 398
    if-nez v7, :cond_2

    .line 418
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->sortFields:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 419
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 420
    .local v0, "collator":Ljava/text/Collator;
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 430
    .end local v0    # "collator":Ljava/text/Collator;
    :cond_3
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_7

    if-le v2, v5, :cond_7

    :goto_3
    iput-boolean v5, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    goto :goto_0

    .line 405
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 407
    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter;->getSectionKeyOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "sectionKeyOfItem":Ljava/lang/String;
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 409
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_5
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 413
    .local v3, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v7, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 420
    .end local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "sectionKeyOfItem":Ljava/lang/String;
    .restart local v0    # "collator":Ljava/text/Collator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 421
    .restart local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v8, Lcom/facebook/GraphObjectAdapter$1;

    invoke-direct {v8, p0, v0}, Lcom/facebook/GraphObjectAdapter$1;-><init>(Lcom/facebook/GraphObjectAdapter;Ljava/text/Collator;)V

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .end local v0    # "collator":Ljava/text/Collator;
    .end local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7
    move v5, v6

    .line 432
    goto :goto_3
.end method

.method private shouldShowActivityCircleCell()Z
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 547
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    return v0
.end method

.method public cancelPendingDownloads()V
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    .line 167
    .local v0, "downloader":Lcom/facebook/GraphObjectAdapter$PictureDownloader;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownloader;"
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->cancelAllDownloads()V

    .line 170
    :cond_0
    return-void
.end method

.method public changeCursor(Lcom/facebook/GraphObjectCursor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectCursor",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "cursor":Lcom/facebook/GraphObjectCursor;, "Lcom/facebook/GraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    if-ne v0, p1, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v0}, Lcom/facebook/GraphObjectCursor;->close()V

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    .line 156
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->rebuildAndNotify()V

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createGraphObjectView(Lcom/facebook/GraphObject;Landroid/view/View;)Landroid/view/View;
    .locals 10
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 266
    iget-object v5, p0, Lcom/facebook/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getGraphObjectRowLayoutId(Lcom/facebook/GraphObject;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 268
    .local v4, "result":Landroid/view/View;
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 269
    .local v1, "checkboxStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v5

    if-nez v5, :cond_1

    .line 271
    invoke-virtual {v1, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 278
    :cond_0
    :goto_0
    sget v5, Lcom/facebook/android/R$id;->com_facebook_picker_profile_pic_stub:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 279
    .local v3, "profilePicStub":Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->getShowPicture()Z

    move-result v5

    if-nez v5, :cond_2

    .line 280
    invoke-virtual {v3, v9}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 286
    :goto_1
    return-object v4

    .line 273
    .end local v3    # "profilePicStub":Landroid/view/ViewStub;
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 274
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, v0, v8}, Lcom/facebook/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    goto :goto_0

    .line 282
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v3    # "profilePicStub":Landroid/view/ViewStub;
    :cond_2
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 283
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method filterIncludesItem(Lcom/facebook/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->filter:Lcom/facebook/GraphObjectAdapter$Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->filter:Lcom/facebook/GraphObjectAdapter$Filter;

    invoke-interface {v0, p1}, Lcom/facebook/GraphObjectAdapter$Filter;->includeItem(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    .line 526
    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 533
    .local v0, "count":I
    :cond_2
    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/facebook/GraphObjectAdapter;->shouldShowActivityCircleCell()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 534
    .local v1, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public getCursor()Lcom/facebook/GraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    return-object v0
.end method

.method public getDataNeededListener()Lcom/facebook/GraphObjectAdapter$DataNeededListener;
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    return-object v0
.end method

.method protected getDefaultPicture()I
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    return v0
.end method

.method getFilter()Lcom/facebook/GraphObjectAdapter$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/GraphObjectAdapter$Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->filter:Lcom/facebook/GraphObjectAdapter$Filter;

    return-object v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/GraphObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_picker_list_row:I

    return v0
.end method

.method protected getGraphObjectView(Lcom/facebook/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    move-object v0, p2

    .line 237
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/GraphObject;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 241
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/facebook/GraphObjectAdapter;->populateGraphObjectView(Landroid/view/View;Lcom/facebook/GraphObject;)V

    .line 242
    return-object v0
.end method

.method public getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 653
    .local v2, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 655
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 656
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    return-object v3

    .line 656
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 657
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsById:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObject;

    .line 658
    .local v0, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGroupByField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    return-object v0
.end method

.method getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    invoke-interface {p1}, Lcom/facebook/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "id"

    invoke-interface {p1, v1}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 331
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 332
    check-cast v0, Ljava/lang/String;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    .line 335
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Received an object without an ID."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 563
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 564
    .local v0, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 572
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v1

    .line 573
    .local v1, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, v1, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {p0, v2}, Lcom/facebook/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 576
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 579
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 589
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 590
    .local v0, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-static {}, Lcom/facebook/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 598
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :pswitch_0
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    .line 594
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 596
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getPictureFieldSpecifier()Ljava/lang/String;
    .locals 7

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v3, 0x0

    .line 360
    invoke-virtual {p0, v3, v3}, Lcom/facebook/GraphObjectAdapter;->createGraphObjectView(Lcom/facebook/GraphObject;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, "view":Landroid/view/View;
    sget v4, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 362
    .local v1, "picture":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-object v3

    .line 367
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 368
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const-string v3, "picture.height(%d).width(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getPictureUrlOfGraphObject(Lcom/facebook/GraphObject;)Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const/4 v3, 0x0

    .line 202
    .local v3, "url":Ljava/lang/String;
    const-string v4, "picture"

    invoke-interface {p1, v4}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 204
    check-cast v3, Ljava/lang/String;

    .line 213
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 215
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-object v4

    .line 205
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 206
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/GraphObjectWrapper;->createGraphObject(Lorg/json/JSONObject;)Lcom/facebook/GraphObject;

    move-result-object v4

    const-class v5, Lcom/facebook/GraphObjectAdapter$ItemPicture;

    invoke-interface {v4, v5}, Lcom/facebook/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphObjectAdapter$ItemPicture;

    .line 207
    .local v1, "itemPicture":Lcom/facebook/GraphObjectAdapter$ItemPicture;, "Lcom/facebook/GraphObjectAdapter$ItemPicture;"
    invoke-interface {v1}, Lcom/facebook/GraphObjectAdapter$ItemPicture;->getData()Lcom/facebook/GraphObjectAdapter$ItemPictureData;

    move-result-object v0

    .line 208
    .local v0, "data":Lcom/facebook/GraphObjectAdapter$ItemPictureData;, "Lcom/facebook/GraphObjectAdapter$ItemPictureData;"
    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0}, Lcom/facebook/GraphObjectAdapter$ItemPictureData;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 216
    .end local v0    # "data":Lcom/facebook/GraphObjectAdapter$ItemPictureData;, "Lcom/facebook/GraphObjectAdapter$ItemPictureData;"
    .end local v1    # "itemPicture":Lcom/facebook/GraphObjectAdapter$ItemPicture;, "Lcom/facebook/GraphObjectAdapter$ItemPicture;"
    :catch_0
    move-exception v4

    .line 219
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getPosition(Ljava/lang/String;Lcom/facebook/GraphObject;)I
    .locals 7
    .param p1, "sectionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p2, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const/4 v5, -0x1

    .line 483
    const/4 v2, 0x0

    .line 484
    .local v2, "position":I
    const/4 v0, 0x0

    .line 488
    .local v0, "found":Z
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 500
    :goto_1
    if-nez v0, :cond_3

    move v4, v5

    .line 515
    :goto_2
    return v4

    .line 488
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    .local v1, "key":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-eqz v4, :cond_1

    .line 490
    add-int/lit8 v2, v2, 0x1

    .line 492
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 493
    const/4 v0, 0x1

    .line 494
    goto :goto_1

    .line 496
    :cond_2
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 502
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_5

    .line 505
    iget-boolean v4, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    sub-int v4, v2, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 509
    :cond_5
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 515
    goto :goto_2

    .line 509
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphObject;

    .line 510
    .local v3, "t":Lcom/facebook/GraphObject;, "TT;"
    invoke-static {v3, p2}, Lcom/facebook/GraphObjectWrapper;->hasSameId(Lcom/facebook/GraphObject;Lcom/facebook/GraphObject;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v2

    .line 511
    goto :goto_2

    .line 513
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "section"    # I

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    .line 632
    iget-boolean v1, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 634
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/GraphObject;)I

    move-result v0

    .line 638
    :cond_0
    return v0
.end method

.method getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;
    .locals 8
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/GraphObjectAdapter$SectionAndItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v5, 0x0

    .line 436
    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 476
    :goto_0
    return-object v5

    .line 439
    :cond_0
    const/4 v4, 0x0

    .line 440
    .local v4, "sectionKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 442
    .local v0, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    iget-boolean v6, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-nez v6, :cond_5

    .line 443
    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "sectionKey":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 444
    .restart local v4    # "sectionKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 445
    .local v3, "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ltz p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_2

    .line 446
    iget-object v5, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "graphObject":Lcom/facebook/GraphObject;, "TT;"
    check-cast v0, Lcom/facebook/GraphObject;

    .line 474
    .end local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v0    # "graphObject":Lcom/facebook/GraphObject;, "TT;"
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    .line 476
    new-instance v5, Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v5, v4, v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/GraphObject;)V

    goto :goto_0

    .line 449
    .restart local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    sget-boolean v6, Lcom/facebook/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v6}, Lcom/facebook/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 451
    :cond_4
    new-instance v6, Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    invoke-direct {v6, v5, v5}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;-><init>(Ljava/lang/String;Lcom/facebook/GraphObject;)V

    move-object v5, v6

    goto :goto_0

    .line 456
    .end local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_5
    iget-object v5, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 458
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "position":I
    .local v2, "position":I
    if-nez p1, :cond_6

    .line 459
    move-object v4, v1

    move p1, v2

    .line 460
    .end local v2    # "position":I
    .restart local p1    # "position":I
    goto :goto_1

    .line 463
    .end local p1    # "position":I
    .restart local v2    # "position":I
    :cond_6
    iget-object v6, p0, Lcom/facebook/GraphObjectAdapter;->graphObjectsBySection:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 464
    .restart local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 466
    move-object v4, v1

    .line 467
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "graphObject":Lcom/facebook/GraphObject;, "TT;"
    check-cast v0, Lcom/facebook/GraphObject;

    .restart local v0    # "graphObject":Lcom/facebook/GraphObject;, "TT;"
    move p1, v2

    .line 468
    .end local v2    # "position":I
    .restart local p1    # "position":I
    goto :goto_1

    .line 471
    .end local p1    # "position":I
    .restart local v2    # "position":I
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int p1, v2, v6

    .end local v2    # "position":I
    .restart local p1    # "position":I
    goto :goto_2

    .line 478
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "section":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_8
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "position"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getSectionForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v1, 0x0

    .line 643
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 644
    .local v0, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v2, v3, :cond_0

    .line 646
    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    iget-object v3, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 648
    :cond_0
    return v1
.end method

.method protected getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "sectionHeader"    # Ljava/lang/String;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 223
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 225
    .local v0, "result":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/android/R$layout;->com_facebook_picker_list_section_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "result":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 229
    .restart local v0    # "result":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-object v0
.end method

.method protected getSectionKeyOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const/4 v0, 0x0

    .line 182
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 184
    .restart local v0    # "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectAdapter;->displaySections:Z

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getShowCheckbox()Z
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectAdapter;->showCheckbox:Z

    return v0
.end method

.method public getShowPicture()Z
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectAdapter;->showPicture:Z

    return v0
.end method

.method public getSortFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sortFields:Ljava/util/List;

    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 604
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 606
    .local v0, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-static {}, Lcom/facebook/GraphObjectAdapter;->$SWITCH_TABLE$com$facebook$GraphObjectAdapter$SectionAndItem$Type()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 617
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected type of section and item."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :pswitch_0
    iget-object v1, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/GraphObjectAdapter;->getSectionHeaderView(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 615
    :goto_0
    return-object v1

    .line 610
    :pswitch_1
    iget-object v1, v0, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {p0, v1, p2, p3}, Lcom/facebook/GraphObjectAdapter;->getGraphObjectView(Lcom/facebook/GraphObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 613
    :pswitch_2
    sget-boolean v1, Lcom/facebook/GraphObjectAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->cursor:Lcom/facebook/GraphObjectCursor;

    invoke-interface {v1}, Lcom/facebook/GraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    invoke-interface {v1}, Lcom/facebook/GraphObjectAdapter$DataNeededListener;->onDataNeeded()V

    .line 615
    invoke-direct {p0, p2, p3}, Lcom/facebook/GraphObjectAdapter;->getActivityCircleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 584
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 552
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 521
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 557
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v0

    .line 558
    .local v0, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;->GRAPH_OBJECT:Lcom/facebook/GraphObjectAdapter$SectionAndItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "graphObjectId"    # Ljava/lang/String;

    .prologue
    .line 351
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected populateGraphObjectView(Landroid/view/View;Lcom/facebook/GraphObject;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p2, "graphObject":Lcom/facebook/GraphObject;, "TT;"
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectAdapter;->getTitleOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 294
    .local v6, "title":Ljava/lang/CharSequence;
    sget v8, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 295
    .local v7, "titleView":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 296
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 299
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectAdapter;->getSubTitleOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 300
    .local v4, "subtitle":Ljava/lang/CharSequence;
    sget v8, Lcom/facebook/android/R$id;->picker_subtitle:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 301
    .local v5, "subtitleView":Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 302
    if-eqz v4, :cond_4

    .line 303
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 304
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->getShowCheckbox()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 311
    sget v8, Lcom/facebook/android/R$id;->com_facebook_picker_checkbox:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 312
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter;->isGraphObjectSelected(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0, v0, v8}, Lcom/facebook/GraphObjectAdapter;->updateCheckboxState(Landroid/widget/CheckBox;Z)V

    .line 315
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->getShowPicture()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 316
    invoke-virtual {p0, p2}, Lcom/facebook/GraphObjectAdapter;->getPictureUrlOfGraphObject(Lcom/facebook/GraphObject;)Ljava/net/URL;

    move-result-object v2

    .line 318
    .local v2, "pictureURL":Ljava/net/URL;
    if-eqz v2, :cond_3

    .line 319
    sget v8, Lcom/facebook/android/R$id;->com_facebook_picker_image:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 320
    .local v3, "profilePic":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/facebook/GraphObjectAdapter;->getPictureDownloader()Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v3}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->download(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    .line 323
    .end local v2    # "pictureURL":Ljava/net/URL;
    .end local v3    # "profilePic":Landroid/widget/ImageView;
    :cond_3
    return-void

    .line 306
    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public prioritizeViewRange(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 173
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter;->pictureDownloader:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    .line 174
    .local v0, "downloader":Lcom/facebook/GraphObjectAdapter$PictureDownloader;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownloader;"
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->prioritizeViewRange(II)V

    .line 177
    :cond_0
    return-void
.end method

.method public rebuildAndNotify()V
    .locals 0

    .prologue
    .line 161
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    invoke-direct {p0}, Lcom/facebook/GraphObjectAdapter;->rebuildSections()V

    .line 162
    invoke-virtual {p0}, Lcom/facebook/GraphObjectAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method public setDataNeededListener(Lcom/facebook/GraphObjectAdapter$DataNeededListener;)V
    .locals 0

    .prologue
    .line 140
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "dataNeededListener":Lcom/facebook/GraphObjectAdapter$DataNeededListener;, "Lcom/facebook/GraphObjectAdapter$DataNeededListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter;->dataNeededListener:Lcom/facebook/GraphObjectAdapter$DataNeededListener;

    .line 141
    return-void
.end method

.method setFilter(Lcom/facebook/GraphObjectAdapter$Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter$Filter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "filter":Lcom/facebook/GraphObjectAdapter$Filter;, "Lcom/facebook/GraphObjectAdapter$Filter<TT;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter;->filter:Lcom/facebook/GraphObjectAdapter$Filter;

    .line 348
    return-void
.end method

.method public setGroupByField(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupByField"    # Ljava/lang/String;

    .prologue
    .line 116
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter;->groupByField:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 0
    .param p1, "showCheckbox"    # Z

    .prologue
    .line 132
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/GraphObjectAdapter;->showCheckbox:Z

    .line 133
    return-void
.end method

.method public setShowPicture(Z)V
    .locals 0
    .param p1, "showPicture"    # Z

    .prologue
    .line 124
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/facebook/GraphObjectAdapter;->showPicture:Z

    .line 125
    return-void
.end method

.method public setSortFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    .local p1, "sortFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter;->sortFields:Ljava/util/List;

    .line 109
    return-void
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "graphObjectSelected"    # Z

    .prologue
    .line 356
    .local p0, "this":Lcom/facebook/GraphObjectAdapter;, "Lcom/facebook/GraphObjectAdapter<TT;>;"
    return-void
.end method
