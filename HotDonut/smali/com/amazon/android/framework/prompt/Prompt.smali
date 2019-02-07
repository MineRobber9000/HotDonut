.class public abstract Lcom/amazon/android/framework/prompt/Prompt;
.super Lcom/amazon/android/i/c;


# static fields
.field private static final LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private context:Landroid/app/Activity;

.field private dataStore:Lcom/amazon/android/o/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private dialog:Landroid/app/Dialog;

.field private final dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final identifier:I

.field private manualExpirationReason:Lcom/amazon/android/framework/prompt/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Prompt"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/amazon/android/i/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/Prompt;->createIdentifier()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createIdentifier()I
    .locals 3

    const v2, 0x12d687    # 1.729997E-39f

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fed2977

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    if-gt v0, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private dismissDialog()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismissing dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    iget v1, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    iget v1, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    iput-object v3, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private expire(Lcom/amazon/android/framework/prompt/d;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring prompt pre-maturely: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/amazon/android/framework/prompt/Prompt;->manualExpirationReason:Lcom/amazon/android/framework/prompt/d;

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->expire()V

    return-void
.end method

.method private isCompatible(Landroid/app/Activity;)Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dataStore:Lcom/amazon/android/o/a;

    const-string v1, "TEST_MODE"

    invoke-virtual {v0, v1}, Lcom/amazon/android/o/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/framework/prompt/Prompt;->doCompatibilityCheck(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private showDialog(Landroid/app/Activity;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing prompt, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/Prompt;->dismissDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public final create(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 2

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/amazon/android/framework/prompt/Prompt;->doCreate(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/amazon/android/framework/prompt/b;

    invoke-direct {v1, p0}, Lcom/amazon/android/framework/prompt/b;-><init>(Lcom/amazon/android/framework/prompt/Prompt;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected final dismiss()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismissing Prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Prompt has already been dismissed"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_1
    move v0, v3

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/Prompt;->dismissDialog()V

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->discard()V

    move v0, v4

    goto :goto_0
.end method

.method protected doCompatibilityCheck(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract doCreate(Landroid/app/Activity;)Landroid/app/Dialog;
.end method

.method protected final doExpiration()V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring prompt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/amazon/android/framework/prompt/a;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/prompt/a;-><init>(Lcom/amazon/android/framework/prompt/Prompt;)V

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/Prompt;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->getExpirationReason()Lcom/amazon/android/framework/prompt/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/framework/prompt/Prompt;->doExpiration(Lcom/amazon/android/framework/prompt/d;)V

    return-void
.end method

.method protected abstract doExpiration(Lcom/amazon/android/framework/prompt/d;)V
.end method

.method protected getExpirationReason()Lcom/amazon/android/framework/prompt/d;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/android/framework/prompt/Prompt;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->manualExpirationReason:Lcom/amazon/android/framework/prompt/d;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/prompt/d;->b:Lcom/amazon/android/framework/prompt/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->manualExpirationReason:Lcom/amazon/android/framework/prompt/d;

    goto :goto_0
.end method

.method public getIdentifier()I
    .locals 1

    iget v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->identifier:I

    return v0
.end method

.method public onFocusChanged(Landroid/app/Activity;Z)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->context:Landroid/app/Activity;

    if-eq p1, v0, :cond_1

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Unrecognized context"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/prompt/Prompt;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "showing dialog because it was not showing"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/amazon/android/framework/prompt/Prompt;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/Prompt;->isCompatible(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/Prompt;->showDialog(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/amazon/android/framework/prompt/d;->a:Lcom/amazon/android/framework/prompt/d;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/prompt/Prompt;->expire(Lcom/amazon/android/framework/prompt/d;)V

    goto :goto_0
.end method
