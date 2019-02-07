.class public abstract Lcom/amazon/android/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;


# static fields
.field private static final LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private expired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final observers:Ljava/util/List;

.field protected taskManager:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Expirable"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/i/b;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/i/b;->expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/i/b;->observers:Ljava/util/List;

    return-void
.end method

.method private notifyObservers()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/i/b;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/i/d;

    invoke-interface {v0, p0}, Lcom/amazon/android/i/d;->observe(Lcom/amazon/android/i/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scheduleExpiration()V
    .locals 4

    new-instance v0, Lcom/amazon/android/i/a;

    invoke-direct {v0, p0}, Lcom/amazon/android/i/a;-><init>(Lcom/amazon/android/i/b;)V

    iget-object v1, p0, Lcom/amazon/android/i/b;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-virtual {p0}, Lcom/amazon/android/i/b;->getExpiration()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/amazon/android/framework/task/TaskManager;->enqueueAtTime(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final discard()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/i/b;->expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/i/b;->notifyObservers()V

    goto :goto_0
.end method

.method protected abstract doExpiration()V
.end method

.method public expire()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/i/b;->expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/i/b;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/i/b;->doExpiration()V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/i/b;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying Observers of expiration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/i/b;->notifyObservers()V

    goto :goto_0
.end method

.method protected abstract getExpiration()Ljava/util/Date;
.end method

.method protected isExpired()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/i/b;->expired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onResourcesPopulated()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/i/b;->scheduleExpiration()V

    invoke-virtual {p0}, Lcom/amazon/android/i/b;->onResourcesPopulatedImpl()V

    return-void
.end method

.method protected onResourcesPopulatedImpl()V
    .locals 0

    return-void
.end method

.method public final register(Lcom/amazon/android/i/d;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/i/b;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
