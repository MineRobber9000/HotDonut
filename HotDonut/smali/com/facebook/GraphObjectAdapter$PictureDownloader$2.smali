.class Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectAdapter$PictureDownloader;->getStream(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    iput-object p2, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;

    iput-object p3, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;

    iget-object v2, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->access$1(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;Landroid/graphics/Bitmap;)V

    .line 738
    return-void
.end method
