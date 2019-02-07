.class Lcom/facebook/PrioritizedWorkQueue$WorkNode;
.super Ljava/lang/Object;
.source "PrioritizedWorkQueue.java"

# interfaces
.implements Lcom/facebook/PrioritizedWorkQueue$WorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/PrioritizedWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

.field private prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

.field private priority:I

.field final synthetic this$0:Lcom/facebook/PrioritizedWorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lcom/facebook/PrioritizedWorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/PrioritizedWorkQueue;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    .line 153
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/PrioritizedWorkQueue$WorkNode;I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 2
    .param p1, "list"    # Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .prologue
    .line 203
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 204
    :cond_0
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_1
    if-nez p1, :cond_2

    .line 207
    iput-object p0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object p0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-object p1, p0

    .line 214
    :goto_0
    return-object p1

    .line 209
    :cond_2
    iput-object p1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 210
    iget-object v0, p1, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 211
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object p0, v1, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object p0, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    goto :goto_0
.end method

.method public cancel()Z
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v0

    iget v2, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v3}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    iget v4, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->removeFromList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    aput-object v3, v0, v2

    .line 160
    monitor-exit v1

    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 157
    :cond_0
    monitor-exit v1

    .line 164
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method getNext()Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    return v0
.end method

.method removeFromList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 2
    .param p1, "list"    # Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .prologue
    .line 218
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_0
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_1
    if-ne p1, p0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-ne v0, p0, :cond_3

    .line 223
    const/4 p1, 0x0

    .line 229
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v1, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 230
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v1, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 233
    return-object p1

    .line 225
    :cond_3
    iget-object p1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 5
    .param p1, "newPriority"    # I

    .prologue
    .line 169
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_0
    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 174
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v0

    iget v2, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v3}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    iget v4, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->removeFromList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    aput-object v3, v0, v2

    .line 177
    :cond_2
    iput p1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    .line 178
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v0

    iget v2, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v3}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    iget v4, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->addToList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    aput-object v3, v0, v2

    .line 172
    :cond_3
    monitor-exit v1

    .line 181
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setPriorityRunning()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->this$0:Lcom/facebook/PrioritizedWorkQueue;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue;->access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    monitor-enter v1

    .line 190
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    .line 189
    monitor-exit v1

    .line 192
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method spliceLists(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 2
    .param p1, "list"    # Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    move-object p1, p0

    .line 249
    :goto_0
    return-object p1

    .line 240
    :cond_0
    iget-object v0, p1, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 242
    .local v0, "listPrev":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v1, p1, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 243
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object p1, v1, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 245
    iput-object p0, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 246
    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    goto :goto_0
.end method

.method verify(I)V
    .locals 1
    .param p1, "expectedPriority"    # I

    .prologue
    .line 253
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->priority:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 254
    :cond_0
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_1
    sget-boolean v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->next:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v0, v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->prev:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eq v0, p0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_2
    return-void
.end method
