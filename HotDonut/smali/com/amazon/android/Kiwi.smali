.class public final Lcom/amazon/android/Kiwi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;


# static fields
.field protected static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field protected static final EVENT_NAME:Ljava/lang/String; = "EventName"

.field private static INSTANCE:Lcom/amazon/android/Kiwi; = null

.field private static final LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

.field protected static final TIMESTAMP:Ljava/lang/String; = "Timestamp"


# instance fields
.field private application:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private authKeyLoader:Lcom/amazon/android/m/c;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private contextManager:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private dataStore:Lcom/amazon/android/o/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private final drmEnabled:Z

.field private eventManager:Lcom/amazon/android/n/g;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private promptManager:Lcom/amazon/android/framework/prompt/PromptManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private resultManager:Lcom/amazon/android/f/b;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private taskManager:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Kiwi"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean p2, p0, Lcom/amazon/android/Kiwi;->drmEnabled:Z

    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting initialization process for application: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRM enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/Kiwi;->instantiateTheWorld(Landroid/app/Application;)V

    invoke-direct {p0, p1}, Lcom/amazon/android/Kiwi;->registerTestModeReceiver(Landroid/app/Application;)V

    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.Constructor Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a()Lcom/amazon/android/framework/util/KiwiLogger;
    .locals 1

    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/android/Kiwi;)Lcom/amazon/android/o/a;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/Kiwi;->dataStore:Lcom/amazon/android/o/a;

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->unsafeAddCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method

.method public static addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "WARNING: Use of deprecated method detected."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amazon/android/Kiwi;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->unsafeAddCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Kiwi subsystem is not fully initialized.  Cannot process task."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/amazon/android/Kiwi;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/amazon/android/Kiwi;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/amazon/android/Kiwi;-><init>(Landroid/app/Application;Z)V

    sput-object v1, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    :cond_0
    invoke-static {p0}, Lcom/amazon/android/Kiwi;->unsafeAddCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Kiwi subsystem cannot be initialized because of null context. Unable to enqueue task."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/amazon/android/Kiwi;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/android/Kiwi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/android/Kiwi;->drmEnabled:Z

    return v0
.end method

.method static synthetic c(Lcom/amazon/android/Kiwi;)Lcom/amazon/android/n/g;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/Kiwi;->eventManager:Lcom/amazon/android/n/g;

    return-object v0
.end method

.method static synthetic d(Lcom/amazon/android/Kiwi;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->enqueueAppLaunchWorkflowTask()V

    return-void
.end method

.method static synthetic e(Lcom/amazon/android/Kiwi;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/Kiwi;->application:Landroid/app/Application;

    return-object v0
.end method

.method private enqueueAppLaunchWorkflowTask()V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Enqueuing launch workflow"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->getLaunchWorkflow()Lcom/amazon/android/framework/task/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/Kiwi;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method

.method private getLaunchWorkflow()Lcom/amazon/android/framework/task/Task;
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/android/Kiwi;->drmEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/android/b;

    invoke-direct {v0}, Lcom/amazon/android/b;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/android/h;

    invoke-direct {v0}, Lcom/amazon/android/h;-><init>()V

    goto :goto_0
.end method

.method public static getPromptManager()Lcom/amazon/android/framework/prompt/PromptManager;
    .locals 1

    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v0, v0, Lcom/amazon/android/Kiwi;->promptManager:Lcom/amazon/android/framework/prompt/PromptManager;

    return-object v0
.end method

.method private static ignoreEvent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called on context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kiwi is dead, ignoring..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private instantiateTheWorld(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/resource/c;

    invoke-direct {v0}, Lcom/amazon/android/framework/resource/c;-><init>()V

    invoke-interface {v0, p1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/framework/task/a;

    invoke-direct {v1}, Lcom/amazon/android/framework/task/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/o/a;

    invoke-direct {v1}, Lcom/amazon/android/o/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/f/c;

    invoke-direct {v1}, Lcom/amazon/android/f/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/framework/context/d;

    invoke-direct {v1}, Lcom/amazon/android/framework/context/d;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    invoke-direct {v1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/n/b;

    invoke-direct {v1}, Lcom/amazon/android/n/b;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/c/a;

    invoke-direct {v1}, Lcom/amazon/android/c/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/q/c;

    invoke-direct {v1}, Lcom/amazon/android/q/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/framework/task/command/b;

    invoke-direct {v1}, Lcom/amazon/android/framework/task/command/b;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/m/c;

    invoke-direct {v1}, Lcom/amazon/android/m/c;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/framework/task/command/e;

    invoke-direct {v1}, Lcom/amazon/android/framework/task/command/e;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/amazon/android/g/a;

    invoke-direct {v1}, Lcom/amazon/android/g/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/resource/a;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/amazon/android/framework/resource/a;->a()V

    invoke-interface {v0, p0}, Lcom/amazon/android/framework/resource/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSignedByKiwi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/amazon/android/Kiwi;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v0, v0, Lcom/amazon/android/Kiwi;->authKeyLoader:Lcom/amazon/android/m/c;

    invoke-virtual {v0}, Lcom/amazon/android/m/c;->a()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/amazon/android/m/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z
    :try_end_0
    .catch Lcom/amazon/android/h/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to validate signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/android/h/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Kiwi was not yet initialized - cannot do the IAP call"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2

    const-string v0, "onActivityResult"

    invoke-static {v0, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/android/f/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/android/f/f;-><init>(Landroid/app/Activity;IILandroid/content/Intent;)V

    sget-object v1, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v1, v1, Lcom/amazon/android/Kiwi;->resultManager:Lcom/amazon/android/f/b;

    invoke-interface {v1, v0}, Lcom/amazon/android/f/b;->a(Lcom/amazon/android/f/f;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/amazon/android/Kiwi;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/amazon/android/Kiwi;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/amazon/android/Kiwi;-><init>(Landroid/app/Application;Z)V

    sput-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    :cond_0
    const-string v2, "onCreate"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onCreate(Landroid/app/Activity;)V

    :cond_1
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnCreate Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static onCreate(Landroid/app/Service;Z)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onCreate"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onCreate(Landroid/app/Service;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ServiceOnCreate Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onCreateDialog"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v0, v0, Lcom/amazon/android/Kiwi;->promptManager:Lcom/amazon/android/framework/prompt/PromptManager;

    invoke-interface {v0, p0, p1}, Lcom/amazon/android/framework/prompt/PromptManager;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnCreateDialog Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onDestroy"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnDestroy Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    sget-object v3, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "Kiwi.ActivityOnDestroy Error: "

    invoke-virtual {v3, v4, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onDestroy(Landroid/app/Service;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onDestroy"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onDestroy(Landroid/app/Service;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ServiceOnDestroy Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onPause"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onPause(Landroid/app/Activity;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnPause Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onResume"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onResume(Landroid/app/Activity;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnResume Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onStart"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onStart(Landroid/app/Activity;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnStart Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "onStop"

    invoke-static {v2, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v2, v2, Lcom/amazon/android/Kiwi;->contextManager:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v2, p0}, Lcom/amazon/android/framework/context/ContextManager;->onStop(Landroid/app/Activity;)V

    :cond_0
    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kiwi.ActivityOnStop Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1

    const-string v0, "onWindowFocusChanged"

    invoke-static {v0, p0}, Lcom/amazon/android/Kiwi;->preProcess(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v0, v0, Lcom/amazon/android/Kiwi;->promptManager:Lcom/amazon/android/framework/prompt/PromptManager;

    invoke-interface {v0, p0, p1}, Lcom/amazon/android/framework/prompt/PromptManager;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method private static preProcess(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/Kiwi;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amazon/android/Kiwi;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->ignoreEvent(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerActivityLifeCyclePauseListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/d;

    invoke-direct {v0, p0}, Lcom/amazon/android/d;-><init>(Lcom/amazon/android/Kiwi;)V

    iget-object v1, p0, Lcom/amazon/android/Kiwi;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerActivityLifeCycleResumeListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/f;

    invoke-direct {v0, p0}, Lcom/amazon/android/f;-><init>(Lcom/amazon/android/Kiwi;)V

    iget-object v1, p0, Lcom/amazon/android/Kiwi;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerApplicationCreationListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/g;

    invoke-direct {v0, p0}, Lcom/amazon/android/g;-><init>(Lcom/amazon/android/Kiwi;)V

    iget-object v1, p0, Lcom/amazon/android/Kiwi;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerApplicationDestructionListener()V
    .locals 2

    new-instance v0, Lcom/amazon/android/e;

    invoke-direct {v0, p0}, Lcom/amazon/android/e;-><init>(Lcom/amazon/android/Kiwi;)V

    iget-object v1, p0, Lcom/amazon/android/Kiwi;->eventManager:Lcom/amazon/android/n/g;

    invoke-interface {v1, v0}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method private registerTestModeReceiver(Landroid/app/Application;)V
    .locals 3

    new-instance v0, Lcom/amazon/android/c;

    invoke-direct {v0, p0}, Lcom/amazon/android/c;-><init>(Lcom/amazon/android/Kiwi;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".enable.test.mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static unsafeAddCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V
    .locals 2

    sget-object v0, Lcom/amazon/android/Kiwi;->INSTANCE:Lcom/amazon/android/Kiwi;

    iget-object v0, v0, Lcom/amazon/android/Kiwi;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v0, v1, p0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method


# virtual methods
.method public final onResourcesPopulated()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->registerApplicationCreationListener()V

    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->registerApplicationDestructionListener()V

    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->registerActivityLifeCyclePauseListener()V

    invoke-direct {p0}, Lcom/amazon/android/Kiwi;->registerActivityLifeCycleResumeListener()V

    return-void
.end method
