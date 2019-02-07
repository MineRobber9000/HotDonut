.class public final Lcom/amazon/android/framework/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;
.implements Lcom/amazon/android/framework/task/TaskManager;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/framework/resource/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private c:Lcom/amazon/android/n/g;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "TaskManagerImpl"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/task/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    sget-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/framework/task/pipeline/a;->a(Ljava/lang/String;)Lcom/amazon/android/framework/task/pipeline/a;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-virtual {v1}, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/framework/task/pipeline/a;->a(Ljava/lang/String;)Lcom/amazon/android/framework/task/pipeline/a;

    move-result-object v1

    new-instance v2, Lcom/amazon/android/framework/task/pipeline/e;

    invoke-direct {v2, v1}, Lcom/amazon/android/framework/task/pipeline/e;-><init>(Lcom/amazon/android/framework/task/pipeline/f;)V

    iget-object v3, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    sget-object v4, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    sget-object v3, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/b;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task enqueued after TaskManager has been finished! Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/task/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Populating Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->b:Lcom/amazon/android/framework/resource/a;

    invoke-interface {v0, p2}, Lcom/amazon/android/framework/resource/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/task/pipeline/f;

    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pipeline registered with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p3, p2, p0}, Lcom/amazon/android/framework/task/b;->a(Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/pipeline/f;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/task/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "TaskManager finishing...."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/task/pipeline/f;

    invoke-interface {p0}, Lcom/amazon/android/framework/task/pipeline/f;->a()V

    goto :goto_0
.end method

.method public final enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enqueue task on pipeline id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/android/framework/task/c;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/c;-><init>(Lcom/amazon/android/framework/task/a;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/framework/task/a;->a(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/b;)V

    return-void
.end method

.method public final enqueueAfterDelay(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;J)V
    .locals 1

    new-instance v0, Lcom/amazon/android/framework/task/f;

    invoke-direct {v0, p0, p3, p4}, Lcom/amazon/android/framework/task/f;-><init>(Lcom/amazon/android/framework/task/a;J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/framework/task/a;->a(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/b;)V

    return-void
.end method

.method public final enqueueAtFront(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V
    .locals 1

    new-instance v0, Lcom/amazon/android/framework/task/d;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/d;-><init>(Lcom/amazon/android/framework/task/a;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/framework/task/a;->a(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/b;)V

    return-void
.end method

.method public final enqueueAtTime(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V
    .locals 1

    new-instance v0, Lcom/amazon/android/framework/task/e;

    invoke-direct {v0, p0, p3}, Lcom/amazon/android/framework/task/e;-><init>(Lcom/amazon/android/framework/task/a;Ljava/util/Date;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/framework/task/a;->a(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/b;)V

    return-void
.end method

.method public final onResourcesPopulated()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/task/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/framework/task/pipeline/f;

    iget-object v2, p0, Lcom/amazon/android/framework/task/a;->b:Lcom/amazon/android/framework/resource/a;

    invoke-interface {v2, v0}, Lcom/amazon/android/framework/resource/a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/android/framework/task/g;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/g;-><init>(Lcom/amazon/android/framework/task/a;)V

    iget-object v1, p0, Lcom/amazon/android/framework/task/a;->c:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method
