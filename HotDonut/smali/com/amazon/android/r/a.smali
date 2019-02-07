.class public final Lcom/amazon/android/r/a;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/c/d;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "SubmitCrashReportsTask"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/r/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getCommandData()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/amazon/android/r/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/c/b;

    invoke-virtual {p0}, Lcom/amazon/android/c/b;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "reports"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final getCommandName()Ljava/lang/String;
    .locals 1

    const-string v0, "submit_crash_reports"

    return-object v0
.end method

.method protected final getCommandVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method protected final isExecutionNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/r/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    return-void
.end method

.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/r/a;->b:Lcom/amazon/android/c/d;

    iget-object v1, p0, Lcom/amazon/android/r/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazon/android/c/d;->a(Ljava/util/List;)V

    return-void
.end method

.method protected final preExecution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/r/a;->b:Lcom/amazon/android/c/d;

    invoke-interface {v0}, Lcom/amazon/android/c/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/r/a;->c:Ljava/util/List;

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/r/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "--------------- Crash Reports -------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/r/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/r/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/r/a;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "--------------------------------------------------"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
