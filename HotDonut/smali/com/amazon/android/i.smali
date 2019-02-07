.class public final Lcom/amazon/android/i;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/framework/prompt/PromptManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "CheckIfAppisBlockedTask"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/i;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getCommandData()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getCommandName()Ljava/lang/String;
    .locals 1

    const-string v0, "check_blocked_status"

    return-object v0
.end method

.method protected final getCommandVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method protected final isExecutionNeeded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/android/i;->isWorkflowChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/i;->quitParentWorkflow()V

    :cond_0
    sget-object v0, Lcom/amazon/android/i;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "app is blocked, killing"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getDisplayableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getDisplayableMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getButtonLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->show()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/android/framework/prompt/PromptContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/amazon/android/framework/prompt/c;

    invoke-direct {v1, v0}, Lcom/amazon/android/framework/prompt/c;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    iget-object v0, p0, Lcom/amazon/android/i;->b:Lcom/amazon/android/framework/prompt/PromptManager;

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/prompt/PromptManager;->present(Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method

.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    const-string v2, "verbose"

    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "verbose"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "verbose"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    :cond_0
    return-void
.end method
