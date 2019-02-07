.class Lcom/facebook/GraphObjectPagingLoader$2;
.super Ljava/lang/Object;
.source "GraphObjectPagingLoader.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


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


# direct methods
.method constructor <init>(Lcom/facebook/GraphObjectPagingLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader$2;->this$0:Lcom/facebook/GraphObjectPagingLoader;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader$2;->this$0:Lcom/facebook/GraphObjectPagingLoader;

    invoke-static {v0, p1}, Lcom/facebook/GraphObjectPagingLoader;->access$1(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/Response;)V

    .line 146
    return-void
.end method
