.class Lcom/facebook/GraphObjectPagingLoader$3;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/GraphObjectPagingLoader;

.field private final synthetic val$batch:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader$3;->this$0:Lcom/facebook/GraphObjectPagingLoader;

    iput-object p2, p0, Lcom/facebook/GraphObjectPagingLoader$3;->val$batch:Lcom/facebook/RequestBatch;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader$3;->val$batch:Lcom/facebook/RequestBatch;

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    .line 157
    return-void
.end method
