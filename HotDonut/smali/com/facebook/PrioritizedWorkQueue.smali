.class Lcom/facebook/PrioritizedWorkQueue;
.super Ljava/lang/Object;
.source "PrioritizedWorkQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/PrioritizedWorkQueue$WorkItem;,
        Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_MAX_CONCURRENT:I = 0x8

.field public static final PRIORITY_ACTIVE:I = 0x0

.field public static final PRIORITY_BACKGROUND:I = 0x1

.field private static final PRIORITY_COUNT:I = 0x2

.field public static final PRIORITY_RUNNING:I = -0x1


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private final queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

.field private runningCount:I

.field private runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/PrioritizedWorkQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/PrioritizedWorkQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x8

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/PrioritizedWorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    .line 21
    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "maxConcurrent"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    .line 24
    iput p1, p0, Lcom/facebook/PrioritizedWorkQueue;->maxConcurrent:I

    .line 25
    iput-object p2, p0, Lcom/facebook/PrioritizedWorkQueue;->executor:Ljava/util/concurrent/Executor;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/PrioritizedWorkQueue;)[Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/PrioritizedWorkQueue;Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/facebook/PrioritizedWorkQueue;->finishItemAndStartNew(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    return-void
.end method

.method private execute(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V
    .locals 2
    .param p1, "node"    # Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/PrioritizedWorkQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/PrioritizedWorkQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/PrioritizedWorkQueue$1;-><init>(Lcom/facebook/PrioritizedWorkQueue;Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private extractNextReadyItem()Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "priority":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 122
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v1, v2, v0

    .line 116
    .local v1, "ready":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    if-eqz v1, :cond_1

    .line 117
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->removeFromList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private finishItemAndStartNew(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V
    .locals 4
    .param p1, "finished"    # Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "ready":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    monitor-enter v2

    .line 79
    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-virtual {p1, v1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->removeFromList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 81
    iget v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    .line 84
    :cond_0
    iget v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    iget v3, p0, Lcom/facebook/PrioritizedWorkQueue;->maxConcurrent:I

    if-ge v1, v3, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/facebook/PrioritizedWorkQueue;->extractNextReadyItem()Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->setPriorityRunning()V

    .line 89
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-virtual {v0, v1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->addToList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 90
    iget v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    .line 78
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lcom/facebook/PrioritizedWorkQueue;->execute(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    .line 98
    :cond_2
    return-void

    .line 78
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setPriorityOnAll(I)V
    .locals 5
    .param p1, "priority"    # I

    .prologue
    .line 126
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    monitor-enter v3

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 126
    :try_start_0
    monitor-exit v3

    .line 142
    return-void

    .line 128
    :cond_0
    if-eq v0, p1, :cond_2

    .line 129
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v1, v2, v0

    .line 130
    .local v1, "move":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    if-eqz v1, :cond_2

    .line 132
    :cond_1
    invoke-static {v1, p1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->access$1(Lcom/facebook/PrioritizedWorkQueue$WorkNode;I)V

    .line 133
    invoke-virtual {v1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->getNext()Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 137
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    iget-object v4, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->spliceLists(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v4

    aput-object v4, v2, p1

    .line 127
    .end local v1    # "move":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private startItem()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/PrioritizedWorkQueue;->finishItemAndStartNew(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)V

    .line 73
    return-void
.end method


# virtual methods
.method addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/PrioritizedWorkQueue$WorkItem;
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-direct {v0, p0, p1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;-><init>(Lcom/facebook/PrioritizedWorkQueue;Ljava/lang/Runnable;)V

    .line 30
    .local v0, "node":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    monitor-enter v2

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->access$0(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    invoke-static {v0}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->access$0(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->addToList(Lcom/facebook/PrioritizedWorkQueue$WorkNode;)Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v4

    aput-object v4, v1, v3

    .line 30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-direct {p0}, Lcom/facebook/PrioritizedWorkQueue;->startItem()V

    .line 35
    return-object v0

    .line 30
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method backgroundAll()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/PrioritizedWorkQueue;->setPriorityOnAll(I)V

    .line 40
    return-void
.end method

.method validate()V
    .locals 5

    .prologue
    .line 43
    iget-object v4, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    monitor-enter v4

    .line 45
    const/4 v1, 0x0

    .local v1, "priority":I
    :goto_0
    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-eqz v3, :cond_1

    .line 59
    iget-object v2, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    .line 61
    .local v2, "walk":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->verify(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    invoke-virtual {v2}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->getNext()Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->runningItems:Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    if-ne v2, v3, :cond_0

    .line 67
    .end local v2    # "walk":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    :cond_1
    sget-boolean v3, Lcom/facebook/PrioritizedWorkQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/facebook/PrioritizedWorkQueue;->runningCount:I

    if-eq v3, v0, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 43
    .end local v0    # "count":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 46
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 47
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v2, v3, v1

    .line 49
    .restart local v2    # "walk":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    :cond_3
    invoke-virtual {v2, v1}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->verify(I)V

    .line 50
    invoke-virtual {v2}, Lcom/facebook/PrioritizedWorkQueue$WorkNode;->getNext()Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/facebook/PrioritizedWorkQueue;->queues:[Lcom/facebook/PrioritizedWorkQueue$WorkNode;

    aget-object v3, v3, v1

    if-ne v2, v3, :cond_3

    .line 45
    .end local v2    # "walk":Lcom/facebook/PrioritizedWorkQueue$WorkNode;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .restart local v0    # "count":I
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    return-void
.end method
