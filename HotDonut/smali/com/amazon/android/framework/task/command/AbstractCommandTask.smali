.class public abstract Lcom/amazon/android/framework/task/command/AbstractCommandTask;
.super Lcom/amazon/android/l/c;


# static fields
.field private static final LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private application:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private authTokenVerifier:Lcom/amazon/android/framework/task/command/e;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private client:Lcom/amazon/android/framework/task/command/b;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private metricsManager:Lcom/amazon/android/q/d;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private promptManager:Lcom/amazon/android/framework/prompt/PromptManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field protected resultManager:Lcom/amazon/android/f/b;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "AbstractCommandTask"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/l/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->application:Landroid/app/Application;

    return-object v0
.end method

.method private expire(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring Decision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/framework/task/command/b;->a(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleCommandResult(Lcom/amazon/android/framework/task/command/l;)V

    return-void
.end method

.method private extractMetric(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/q/b;
    .locals 4

    new-instance v0, Lcom/amazon/android/q/b;

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getFailureMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/q/b;-><init>(Ljava/lang/String;)V

    const-string v1, "subType"

    invoke-virtual {p1}, Lcom/amazon/android/framework/exception/KiwiException;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/android/q/b;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p1}, Lcom/amazon/android/framework/exception/KiwiException;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/android/q/b;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {p1}, Lcom/amazon/android/framework/exception/KiwiException;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/android/q/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/android/q/b;

    return-object v0
.end method

.method private getCommand()Lcom/amazon/venezia/command/w;
    .locals 1

    new-instance v0, Lcom/amazon/android/framework/task/command/g;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/command/g;-><init>(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-object v0
.end method

.method private getFailureMetricName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleChoice(Lcom/amazon/venezia/command/r;Lcom/amazon/venezia/command/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling customer choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lcom/amazon/venezia/command/n;->b()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "Choice has intent, scheduling it to be fired!!"

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->resultManager:Lcom/amazon/android/f/b;

    invoke-interface {v1, v0}, Lcom/amazon/android/f/b;->a(Landroid/content/Intent;)Lcom/amazon/android/f/f;

    move-result-object v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "No result recived, expiring decision"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/amazon/android/framework/task/command/a;->a:Lcom/amazon/android/framework/task/command/a;

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->expire(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)V

    :goto_0
    return-void

    :cond_3
    iget v0, v0, Lcom/amazon/android/f/f;->b:I

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Result canceled, expiring decision"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/amazon/android/framework/task/command/a;->c:Lcom/amazon/android/framework/task/command/a;

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->expire(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Result received!!!, notifying service"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v0, p2}, Lcom/amazon/android/framework/task/command/b;->a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleCommandResult(Lcom/amazon/android/framework/task/command/l;)V

    goto :goto_0

    :cond_7
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "No intent given, choosing now"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v0, p2}, Lcom/amazon/android/framework/task/command/b;->a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleCommandResult(Lcom/amazon/android/framework/task/command/l;)V

    goto :goto_0
.end method

.method private handleCommandResult(Lcom/amazon/android/framework/task/command/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/framework/exception/KiwiException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received result from CommandService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Received null result from command service, exiting task"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->f:Lcom/amazon/venezia/command/k;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->f:Lcom/amazon/venezia/command/k;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleException(Lcom/amazon/venezia/command/k;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->b:Landroid/os/RemoteException;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->b:Landroid/os/RemoteException;

    throw v0

    :cond_4
    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->authTokenVerifier:Lcom/amazon/android/framework/task/command/e;

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v2}, Lcom/amazon/android/framework/task/command/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/framework/task/command/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->c:Lcom/amazon/venezia/command/SuccessResult;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->c:Lcom/amazon/venezia/command/SuccessResult;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleSuccess(Lcom/amazon/venezia/command/SuccessResult;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->d:Lcom/amazon/venezia/command/FailureResult;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->d:Lcom/amazon/venezia/command/FailureResult;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleFailure(Lcom/amazon/venezia/command/FailureResult;)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/amazon/android/framework/task/command/l;->e:Lcom/amazon/venezia/command/r;

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleDecision(Lcom/amazon/venezia/command/r;)V

    goto :goto_0
.end method

.method private handleDecision(Lcom/amazon/venezia/command/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Handling Decision"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/android/framework/task/command/c;

    invoke-direct {v0, p1}, Lcom/amazon/android/framework/task/command/c;-><init>(Lcom/amazon/venezia/command/r;)V

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->promptManager:Lcom/amazon/android/framework/prompt/PromptManager;

    invoke-interface {v1, v0}, Lcom/amazon/android/framework/prompt/PromptManager;->present(Lcom/amazon/android/framework/prompt/Prompt;)V

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/c;->a()Lcom/amazon/venezia/command/n;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "DecisionChooser returned null!!, expiring"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/amazon/android/framework/task/command/a;->a:Lcom/amazon/android/framework/task/command/a;

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->expire(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleChoice(Lcom/amazon/venezia/command/r;Lcom/amazon/venezia/command/n;)V
    :try_end_0
    .catch Lcom/amazon/android/b/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/amazon/android/b/c;->a:Lcom/amazon/android/framework/task/command/a;

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->expire(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)V

    goto :goto_0
.end method

.method private handleException(Lcom/amazon/venezia/command/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/android/b/e;

    invoke-direct {v0, p1}, Lcom/amazon/android/b/e;-><init>(Lcom/amazon/venezia/command/k;)V

    throw v0
.end method

.method private handleExecutionException(Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while processing task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->translate(Ljava/lang/Throwable;)Lcom/amazon/android/framework/exception/KiwiException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->onException(Lcom/amazon/android/framework/exception/KiwiException;)V

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->extractMetric(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->metricsManager:Lcom/amazon/android/q/d;

    invoke-interface {v1, v0}, Lcom/amazon/android/q/d;->a(Lcom/amazon/android/q/b;)V

    return-void
.end method

.method private handleFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command failed execution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getDisplayableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->onFailure(Lcom/amazon/venezia/command/FailureResult;)V

    return-void
.end method

.method private handleSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Command executed successfully"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V

    return-void
.end method

.method private postExecution()V
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->isWorkflowChild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/b;->b()V

    :cond_0
    return-void
.end method

.method private translate(Ljava/lang/Throwable;)Lcom/amazon/android/framework/exception/KiwiException;
    .locals 1

    instance-of v0, p1, Lcom/amazon/android/framework/exception/KiwiException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/android/framework/exception/KiwiException;

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amazon/android/b/a;

    check-cast p1, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Lcom/amazon/android/b/a;-><init>(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/amazon/android/b/b;

    invoke-direct {v0, p1}, Lcom/amazon/android/b/b;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final execute()V
    .locals 4

    const-string v0, "----------------------------------------------"

    const-string v3, "Task finished"

    :try_start_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "----------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "----------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->preExecution()V

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->isExecutionNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Execution not needed, quitting"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Task finished"

    invoke-virtual {v0, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->postExecution()V

    :goto_0
    return-void

    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->client:Lcom/amazon/android/framework/task/command/b;

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommand()Lcom/amazon/venezia/command/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/task/command/b;->a(Lcom/amazon/venezia/command/w;)Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleCommandResult(Lcom/amazon/android/framework/task/command/l;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Task finished"

    invoke-virtual {v0, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->postExecution()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->handleExecutionException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Task finished"

    invoke-virtual {v0, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->postExecution()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "Task finished"

    invoke-virtual {v1, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->postExecution()V

    throw v0
.end method

.method protected abstract getCommandData()Ljava/util/Map;
.end method

.method protected abstract getCommandName()Ljava/lang/String;
.end method

.method protected abstract getCommandVersion()Ljava/lang/String;
.end method

.method protected abstract isExecutionNeeded()Z
.end method

.method protected onException(Lcom/amazon/android/framework/exception/KiwiException;)V
    .locals 3

    sget-object v0, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On Exception!!!!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation
.end method

.method protected abstract onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation
.end method

.method protected preExecution()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    return-void
.end method
