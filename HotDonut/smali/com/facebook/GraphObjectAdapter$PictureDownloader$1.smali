.class Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;
.super Ljava/lang/Object;
.source "GraphObjectAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectAdapter$PictureDownloader;->start(Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

.field private final synthetic val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;->this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    iput-object p2, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;->val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;->this$1:Lcom/facebook/GraphObjectAdapter$PictureDownloader;

    iget-object v1, p0, Lcom/facebook/GraphObjectAdapter$PictureDownloader$1;->val$download:Lcom/facebook/GraphObjectAdapter$PictureDownload;

    invoke-static {v0, v1}, Lcom/facebook/GraphObjectAdapter$PictureDownloader;->access$0(Lcom/facebook/GraphObjectAdapter$PictureDownloader;Lcom/facebook/GraphObjectAdapter$PictureDownload;)V

    .line 721
    return-void
.end method
