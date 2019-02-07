.class Lcom/facebook/GraphObjectAdapter$PictureDownload;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureDownload"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final graphObjectId:Ljava/lang/String;

.field public imageView:Landroid/widget/ImageView;

.field public final pictureURL:Ljava/net/URL;

.field final synthetic this$0:Lcom/facebook/GraphObjectAdapter;

.field public workItem:Lcom/facebook/PrioritizedWorkQueue$WorkItem;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphObjectAdapter;Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "graphObjectId"    # Ljava/lang/String;
    .param p3, "pictureURL"    # Ljava/net/URL;
    .param p4, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->this$0:Lcom/facebook/GraphObjectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p2, p0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->graphObjectId:Ljava/lang/String;

    .line 770
    iput-object p3, p0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->pictureURL:Ljava/net/URL;

    .line 771
    iput-object p4, p0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->imageView:Landroid/widget/ImageView;

    .line 772
    invoke-virtual {p4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownload;->context:Landroid/content/Context;

    .line 773
    return-void
.end method
