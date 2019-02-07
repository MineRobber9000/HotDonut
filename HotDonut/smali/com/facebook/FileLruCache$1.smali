.class Lcom/facebook/FileLruCache$1;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Lcom/facebook/FileLruCache$StreamCloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FileLruCache;

.field private final synthetic val$buffer:Ljava/io/File;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/FileLruCache;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/FileLruCache$1;->this$0:Lcom/facebook/FileLruCache;

    iput-object p2, p0, Lcom/facebook/FileLruCache$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/FileLruCache$1;->val$buffer:Ljava/io/File;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/FileLruCache$1;->this$0:Lcom/facebook/FileLruCache;

    invoke-static {v1}, Lcom/facebook/FileLruCache;->access$1(Lcom/facebook/FileLruCache;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/FileLruCache$1;->val$key:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v0, "target":Ljava/io/File;
    iget-object v1, p0, Lcom/facebook/FileLruCache$1;->val$buffer:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/facebook/FileLruCache$1;->val$buffer:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/facebook/FileLruCache$1;->this$0:Lcom/facebook/FileLruCache;

    invoke-static {v1}, Lcom/facebook/FileLruCache;->access$2(Lcom/facebook/FileLruCache;)V

    .line 135
    return-void
.end method
