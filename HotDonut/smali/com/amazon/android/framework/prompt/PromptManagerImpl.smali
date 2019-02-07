.class public Lcom/amazon/android/framework/prompt/PromptManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/prompt/PromptManager;
.implements Lcom/amazon/android/framework/resource/b;


# static fields
.field public static final LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private contextManager:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private eventManager:Lcom/amazon/android/n/g;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pending:Ljava/util/Set;

.field private resourceManager:Lcom/amazon/android/framework/resource/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private showing:Lcom/amazon/android/framework/prompt/Prompt;

.field private taskManager:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "PromptManagerImpl"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->presentImpl(Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method

.method static synthetic b(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)Lcom/amazon/android/framework/prompt/Prompt;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->removeExpiredPrompt(Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method

.method private finish()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "PromptManager finishing...."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/framework/prompt/Prompt;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/Prompt;->expire()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/Prompt;->dismiss()Z

    goto :goto_0
.end method

.method private getNextPending()Lcom/amazon/android/framework/prompt/Prompt;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/prompt/Prompt;

    move-object v0, p0

    goto :goto_0
.end method

.method private onResume(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->show(Lcom/amazon/android/framework/prompt/Prompt;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->presentNextPending(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private presentImpl(Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " presented after app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destruction expiring it now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/framework/prompt/Prompt;->expire()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presening Prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Lcom/amazon/android/framework/prompt/Prompt;->register(Lcom/amazon/android/i/d;)V

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Dialog currently showing, not presenting given dialog"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->presentNextPending(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private presentNextPending(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->getNextPending()Lcom/amazon/android/framework/prompt/Prompt;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->show(Lcom/amazon/android/framework/prompt/Prompt;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private registerActivityResumedListener()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->eventManager:Lcom/amazon/android/n/g;

    new-instance v1, Lcom/amazon/android/framework/prompt/f;

    invoke-direct {v1, p0}, Lcom/amazon/android/framework/prompt/f;-><init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerAppDestructionListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/prompt/i;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/prompt/i;-><init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerTestModeListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/prompt/j;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/prompt/j;-><init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private removeExpiredPrompt(Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->pending:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->presentNextPending(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private show(Lcom/amazon/android/framework/prompt/Prompt;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {p1, p2}, Lcom/amazon/android/framework/prompt/Prompt;->show(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public observe(Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 3

    new-instance v0, Lcom/amazon/android/framework/prompt/e;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/framework/prompt/e;-><init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method

.method public bridge synthetic observe(Lcom/amazon/android/i/b;)V
    .locals 0

    check-cast p1, Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {p0, p1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->observe(Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method

.method public onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Showing dialog is null, returning"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v0}, Lcom/amazon/android/framework/prompt/Prompt;->getIdentifier()I

    move-result v0

    if-eq v0, p2, :cond_4

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing dialog id does not match given id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", returning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating dialog prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v0, p1}, Lcom/amazon/android/framework/prompt/Prompt;->create(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onResourcesPopulated()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->registerActivityResumedListener()V

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->registerAppDestructionListener()V

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->registerTestModeListener()V

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->showing:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/framework/prompt/Prompt;->onFocusChanged(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public present(Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->resourceManager:Lcom/amazon/android/framework/resource/a;

    invoke-interface {v0, p1}, Lcom/amazon/android/framework/resource/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " presented after app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destruction expiring it now!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/framework/prompt/Prompt;->expire()V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/amazon/android/framework/prompt/h;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/framework/prompt/h;-><init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    goto :goto_0
.end method
