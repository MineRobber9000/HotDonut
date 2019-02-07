.class public final Lcom/amazon/android/framework/task/pipeline/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;
.implements Lcom/amazon/android/framework/task/pipeline/f;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private c:Lcom/amazon/android/n/g;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private d:Lcom/amazon/android/framework/task/pipeline/f;

.field private e:Lcom/amazon/android/framework/task/pipeline/f;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "ForegroundTaskPipeline"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/pipeline/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/framework/task/pipeline/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->f:Ljava/util/List;

    const-string v0, "KIWI_UI"

    invoke-static {v0}, Lcom/amazon/android/framework/task/pipeline/a;->b(Ljava/lang/String;)Lcom/amazon/android/framework/task/pipeline/a;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->d:Lcom/amazon/android/framework/task/pipeline/f;

    iput-object p1, p0, Lcom/amazon/android/framework/task/pipeline/e;->e:Lcom/amazon/android/framework/task/pipeline/f;

    return-void
.end method

.method private a(Lcom/amazon/android/framework/task/Task;Z)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->b:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->d:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-interface {v0, p1}, Lcom/amazon/android/framework/task/pipeline/f;->b(Lcom/amazon/android/framework/task/Task;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->d:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-interface {v0, p1}, Lcom/amazon/android/framework/task/pipeline/f;->a(Lcom/amazon/android/framework/task/Task;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/task/pipeline/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UI visible to execute task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", placing into pending queue until task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/pipeline/e;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/pipeline/e;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Activity resumed, scheduling tasks on UI thread"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/framework/task/Task;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/amazon/android/framework/task/pipeline/e;->a(Lcom/amazon/android/framework/task/Task;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/pipeline/e;Lcom/amazon/android/framework/task/Task;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/pipeline/e;->a(Lcom/amazon/android/framework/task/Task;Z)V

    return-void
.end method

.method private c(Lcom/amazon/android/framework/task/Task;)Lcom/amazon/android/framework/task/Task;
    .locals 1

    new-instance v0, Lcom/amazon/android/framework/task/pipeline/c;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/framework/task/pipeline/c;-><init>(Lcom/amazon/android/framework/task/pipeline/e;Lcom/amazon/android/framework/task/Task;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->d:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-interface {v0}, Lcom/amazon/android/framework/task/pipeline/f;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->e:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-interface {v0}, Lcom/amazon/android/framework/task/pipeline/f;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(Lcom/amazon/android/framework/task/Task;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/pipeline/e;->a(Lcom/amazon/android/framework/task/Task;Z)V

    return-void
.end method

.method public final a(Lcom/amazon/android/framework/task/Task;J)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->e:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/task/pipeline/e;->c(Lcom/amazon/android/framework/task/Task;)Lcom/amazon/android/framework/task/Task;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/amazon/android/framework/task/pipeline/f;->a(Lcom/amazon/android/framework/task/Task;J)V

    return-void
.end method

.method public final a(Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->e:Lcom/amazon/android/framework/task/pipeline/f;

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/task/pipeline/e;->c(Lcom/amazon/android/framework/task/Task;)Lcom/amazon/android/framework/task/Task;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/amazon/android/framework/task/pipeline/f;->a(Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V

    return-void
.end method

.method public final b(Lcom/amazon/android/framework/task/Task;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/pipeline/e;->a(Lcom/amazon/android/framework/task/Task;Z)V

    return-void
.end method

.method public final onResourcesPopulated()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/e;->c:Lcom/amazon/android/n/g;

    new-instance v1, Lcom/amazon/android/framework/task/pipeline/b;

    invoke-direct {v1, p0}, Lcom/amazon/android/framework/task/pipeline/b;-><init>(Lcom/amazon/android/framework/task/pipeline/e;)V

    invoke-interface {v0, v1}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method
