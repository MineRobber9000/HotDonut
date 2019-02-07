.class Lcom/facebook/GraphObjectAdapter$PictureDownloader;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureDownloader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final pendingDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownload;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/GraphObjectAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 666
    const-class v0, Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/facebook/GraphObjectAdapter;)V
    .locals 1

    .prologue
    .line 666
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    .line 668
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/GraphObjectAdapter;Lcom/facebook/GraphObjectAdapter$PictureDownloader;)V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;-><init>(Lcom/facebook/GraphObjectAdapter;)V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->getStream(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->updateView(Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getStream(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownload;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 729
    const/4 v1, 0x0

    .line 731
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->pictureURL:Ljava/net/URL;

    iget-object v3, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/facebook/ImageResponseCache;->getImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 732
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;-><init>(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 744
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v2

    .line 742
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 741
    :catchall_0
    move-exception v2

    .line 742
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 743
    throw v2
.end method

.method private start(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownload;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 712
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    iget-object v2, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    iget-object v2, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;

    .line 714
    .local v0, "inProgress":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    iget-object v1, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    .line 724
    .end local v0    # "inProgress":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    iget-object v2, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-static {}, Lcom/facebook/GraphObjectAdapter;->access$0()Lcom/facebook/PrioritizedWorkQueue;

    move-result-object v1

    new-instance v2, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;-><init>(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;)V

    invoke-virtual {v1, v2}, Lcom/facebook/PrioritizedWorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/PrioritizedWorkQueue$WorkItem;

    move-result-object v1

    iput-object v1, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->workItem:Lcom/facebook/PrioritizedWorkQueue$WorkItem;

    goto :goto_0
.end method

.method private updateView(Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphObjectAdapter",
            "<TT;>.PictureDownload;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 749
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    iget-object v1, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 752
    iget-object v0, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/facebook/GraphObjectAdapter$PictureDownload;->pictureURL:Ljava/net/URL;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 754
    :cond_0
    return-void
.end method


# virtual methods
.method cancelAllDownloads()V
    .locals 3

    .prologue
    .line 684
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 686
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 691
    return-void

    .line 686
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;

    .line 687
    .local v0, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    iget-object v2, v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->workItem:Lcom/facebook/PrioritizedWorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/PrioritizedWorkQueue$WorkItem;->cancel()Z

    goto :goto_0
.end method

.method download(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pictureURL"    # Ljava/net/URL;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 671
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 673
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 676
    new-instance v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/GraphObjectAdapter$PictureDownload;-><init>(Lcom/facebook/GraphObjectAdapter;Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    .line 678
    .local v0, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/GraphObjectAdapter;->getDefaultPicture()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    invoke-direct {p0, v0}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->start(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V

    .line 681
    .end local v0    # "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    :cond_0
    return-void
.end method

.method prioritizeViewRange(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 694
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->validateIsUIThread(Z)V

    .line 696
    invoke-static {}, Lcom/facebook/GraphObjectAdapter;->access$0()Lcom/facebook/PrioritizedWorkQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/PrioritizedWorkQueue;->backgroundAll()V

    .line 697
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v4, p1, p2

    if-lt v1, v4, :cond_0

    .line 707
    return-void

    .line 698
    :cond_0
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-virtual {v4, v1}, Lcom/facebook/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/GraphObjectAdapter$SectionAndItem;

    move-result-object v3

    .line 699
    .local v3, "sectionAndItem":Lcom/facebook/GraphObjectAdapter$SectionAndItem;, "Lcom/facebook/GraphObjectAdapter$SectionAndItem<TT;>;"
    iget-object v4, v3, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    if-eqz v4, :cond_1

    .line 700
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->this$0:Lcom/facebook/GraphObjectAdapter;

    iget-object v5, v3, Lcom/facebook/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {v4, v5}, Lcom/facebook/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/GraphObject;)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->pendingDownloads:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;

    .line 702
    .local v0, "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    if-eqz v0, :cond_1

    .line 703
    iget-object v4, v0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->workItem:Lcom/facebook/PrioritizedWorkQueue$WorkItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/facebook/PrioritizedWorkQueue$WorkItem;->setPriority(I)V

    .line 697
    .end local v0    # "download":Lcom/facebook/GraphObjectAdapter$PictureDownload;, "Lcom/facebook/GraphObjectAdapter<TT;>.PictureDownload;"
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method validateIsUIThread(Z)V
    .locals 2
    .param p1, "uiThreadExpected"    # Z

    .prologue
    .line 757
    sget-boolean v0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 758
    :cond_1
    return-void
.end method
