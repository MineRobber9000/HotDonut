.class public final Lcom/amazon/android/framework/context/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/context/ContextManager;
.implements Lcom/amazon/android/framework/resource/b;


# static fields
.field public static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Lcom/amazon/android/framework/util/c;

.field private final d:Lcom/amazon/android/framework/util/c;

.field private final e:Lcom/amazon/android/framework/util/c;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private j:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private k:Lcom/amazon/android/n/g;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "ContextManagerImpl"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/amazon/android/framework/util/c;

    invoke-direct {v0}, Lcom/amazon/android/framework/util/c;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    new-instance v0, Lcom/amazon/android/framework/util/c;

    invoke-direct {v0}, Lcom/amazon/android/framework/util/c;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->d:Lcom/amazon/android/framework/util/c;

    new-instance v0, Lcom/amazon/android/framework/util/c;

    invoke-direct {v0}, Lcom/amazon/android/framework/util/c;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->e:Lcom/amazon/android/framework/util/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/amazon/android/framework/context/d;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/context/d;)V
    .locals 5

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "----------- EXECUTING FINISH ACTIVITIES -----------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "---------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0}, Lcom/amazon/android/framework/util/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/android/framework/context/d;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not finishing activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", it is a child of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/framework/context/d;->getRoot()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Shutdown found no root, no activities to pop off stack!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/amazon/android/framework/context/a;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/context/a;-><init>(Lcom/amazon/android/framework/context/d;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->j:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void

    :cond_4
    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "Moving task to background"

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Popping activity stack, root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/amazon/android/framework/context/d;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast for unrequested action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent to shutdown app when we are not in shutdown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "shutdown broadcast already received, ignoring"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Stopping services in response to broadcast"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service to stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/context/d;->d:Lcom/amazon/android/framework/util/c;

    iget-object v2, v2, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->d:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0}, Lcom/amazon/android/framework/util/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Service;

    if-eqz p0, :cond_6

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1
.end method

.method private a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/amazon/android/j/b;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/j/b;-><init>(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->k:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/d;)V

    return-void
.end method

.method private a(Lcom/amazon/android/j/d;)V
    .locals 2

    new-instance v0, Lcom/amazon/android/j/a;

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-direct {v0, p1, v1}, Lcom/amazon/android/j/a;-><init>(Lcom/amazon/android/j/d;Landroid/app/Application;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->k:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/d;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 2

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final finishActivities()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "---------- SCHEDULING FINISH ACTIVITIES -----------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "---------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/amazon/android/framework/context/c;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/context/c;-><init>(Lcom/amazon/android/framework/context/d;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->j:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    goto :goto_0
.end method

.method public final getRoot()Landroid/app/Activity;
    .locals 2

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0}, Lcom/amazon/android/framework/util/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/amazon/android/framework/context/d;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVisible()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public final hasAppShutdownBeenRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->a(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity->onCreate.  Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Total Activities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    iget-object v2, v2, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/amazon/android/j/c;->a:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/amazon/android/framework/context/d;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    iget-object v0, v0, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/amazon/android/framework/context/d;->m:Z

    sget-object v0, Lcom/amazon/android/j/d;->a:Lcom/amazon/android/j/d;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/d;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate(Landroid/app/Service;)V
    .locals 3

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service->onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->d:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDestroy(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->b(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity->onDestroy.  Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Total Activities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    iget-object v2, v2, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/amazon/android/j/c;->b:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Checking if application is destroyed"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->c:Lcom/amazon/android/framework/util/c;

    iget-object v0, v0, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/amazon/android/framework/context/d;->m:Z

    sget-object v0, Lcom/amazon/android/j/d;->b:Lcom/amazon/android/j/d;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/d;)V

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public final onDestroy(Landroid/app/Service;)V
    .locals 1

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->d:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visible activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/framework/context/d;->getVisible()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/framework/context/d;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Setting visible activity to null"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazon/android/j/c;->d:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public final onResourcesPopulated()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amazon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/context/d;->l:Ljava/lang/String;

    new-instance v0, Lcom/amazon/android/framework/context/b;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/context/b;-><init>(Lcom/amazon/android/framework/context/d;)V

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/amazon/android/framework/context/d;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v2, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is child: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/android/framework/context/d;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting visible to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity now visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "publishing resume event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/amazon/android/j/c;->c:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    return-void
.end method

.method public final onStart(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->e:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazon/android/j/c;->e:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->e:Lcom/amazon/android/framework/util/c;

    iget-object v0, v0, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/android/j/d;->c:Lcom/amazon/android/j/d;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/d;)V

    :cond_0
    return-void
.end method

.method public final onStop(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->e:Lcom/amazon/android/framework/util/c;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/util/c;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/amazon/android/j/c;->f:Lcom/amazon/android/j/c;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/c;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->e:Lcom/amazon/android/framework/util/c;

    iget-object v0, v0, Lcom/amazon/android/framework/util/c;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/j/d;->d:Lcom/amazon/android/j/d;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/j/d;)V

    :cond_0
    return-void
.end method

.method public final stopServices()V
    .locals 4

    iget-object v0, p0, Lcom/amazon/android/framework/context/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Ignoring duplicate stopServices request"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "------------- STOPPING SERVICES -------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "---------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Broadcast!!!!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/amazon/android/framework/context/d;->i:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
