.class Lcom/facebook/PrioritizedWorkQueue$1;
.super Ljava/lang/Object;
.source "PrioritizedWorkQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/PrioritizedWorkQueue;->execute(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/PrioritizedWorkQueue;

.field private final synthetic val$node:Lcom/facebook/PrioritizedWorkQueue$WorkNode;


# direct methods
.method constructor <init>(Lcom/facebook/PrioritizedWorkQueue;Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/PrioritizedWorkQueue$1;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    iput-object p2, p0, Lcom/facebook/PrioritizedWorkQueue$1;->val$node:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$1;->val$node:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-virtual {v0}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$1;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$1;->val$node:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-static {v0, v1}, Lcom/facebook/PrioritizedWorkQueue;->access$1(Lcom/facebook/PrioritizedWorkQueue;Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    .line 109
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$1;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue$1;->val$node:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-static {v1, v2}, Lcom/facebook/PrioritizedWorkQueue;->access$1(Lcom/facebook/PrioritizedWorkQueue;Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    .line 108
    throw v0
.end method
