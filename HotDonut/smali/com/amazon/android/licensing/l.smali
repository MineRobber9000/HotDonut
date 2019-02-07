.class public final Lcom/amazon/android/licensing/l;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

.field private c:Lcom/amazon/android/q/d;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private d:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private e:Lcom/amazon/android/framework/task/TaskManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private f:Lcom/amazon/android/o/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private g:Lcom/amazon/android/m/c;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "VerifyApplicationEntitlmentTask"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/licensing/l;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    new-instance v0, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    invoke-direct {v0}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/licensing/l;->b:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

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

    const-string v0, "get_license"

    return-object v0
.end method

.method protected final getCommandVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method protected final isExecutionNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/licensing/l;->f:Lcom/amazon/android/o/a;

    const-string v1, "APPLICATION_LICENSE"

    invoke-virtual {v0, v1}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onException(Lcom/amazon/android/framework/exception/KiwiException;)V
    .locals 4

    iget-object v0, p0, Lcom/amazon/android/licensing/l;->b:Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/android/licensing/LicenseFailurePromptContentMapper;->map(Lcom/amazon/android/framework/exception/KiwiException;)Lcom/amazon/android/framework/prompt/PromptContent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/android/licensing/l;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mapping specified for exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v1, p0, Lcom/amazon/android/licensing/l;->f:Lcom/amazon/android/o/a;

    const-string v2, "LICENSE_FAILURE_CONTENT"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

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

    sget-object v1, Lcom/amazon/android/licensing/l;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/licensing/l;->f:Lcom/amazon/android/o/a;

    const-string v2, "LICENSE_FAILURE_CONTENT"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    const-string v8, "\'"

    new-instance v0, Lcom/amazon/android/licensing/c;

    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/licensing/c;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/amazon/android/licensing/l;->g:Lcom/amazon/android/m/c;

    invoke-virtual {v1}, Lcom/amazon/android/m/c;->a()Ljava/security/PublicKey;

    move-result-object v1

    new-instance v2, Lcom/amazon/android/m/d;

    iget-object v3, v0, Lcom/amazon/android/licensing/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/amazon/android/m/d;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    new-instance v1, Lcom/amazon/android/licensing/f;

    invoke-direct {v1, v2}, Lcom/amazon/android/licensing/f;-><init>(Lcom/amazon/android/m/d;)V

    new-instance v2, Lcom/amazon/android/k/a;

    invoke-direct {v2}, Lcom/amazon/android/k/a;-><init>()V

    iget-object v3, v0, Lcom/amazon/android/licensing/c;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/amazon/android/licensing/f;->b:Ljava/lang/String;

    sget-object v5, Lcom/amazon/android/licensing/k;->b:Lcom/amazon/android/licensing/k;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/android/k/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/k/c;)Lcom/amazon/android/k/a;

    iget-object v0, v0, Lcom/amazon/android/licensing/c;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/android/licensing/f;->c:Ljava/lang/String;

    sget-object v4, Lcom/amazon/android/licensing/k;->c:Lcom/amazon/android/licensing/k;

    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/android/k/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/k/c;)Lcom/amazon/android/k/a;

    iget-object v0, v1, Lcom/amazon/android/licensing/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/android/licensing/l;->d:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/licensing/k;->d:Lcom/amazon/android/licensing/k;

    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/android/k/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/k/c;)Lcom/amazon/android/k/a;

    iget-object v0, v1, Lcom/amazon/android/licensing/f;->d:Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/amazon/android/licensing/k;->a:Lcom/amazon/android/licensing/k;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_0

    new-instance v5, Lcom/amazon/android/k/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' <= \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Lcom/amazon/android/k/b;-><init>(Lcom/amazon/android/k/c;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/amazon/android/k/a;->a:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/licensing/l;->d:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/BC1;->getBC1ChecksumBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/amazon/android/licensing/f;->a:Ljava/lang/String;

    sget-object v4, Lcom/amazon/android/licensing/k;->e:Lcom/amazon/android/licensing/k;

    invoke-virtual {v2, v3, v0, v4}, Lcom/amazon/android/k/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/k/c;)Lcom/amazon/android/k/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lcom/amazon/android/k/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amazon/android/s/a;

    invoke-direct {v0, v2}, Lcom/amazon/android/s/a;-><init>(Lcom/amazon/android/k/a;)V

    throw v0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/amazon/android/licensing/k;->e:Lcom/amazon/android/licensing/k;

    new-instance v4, Lcom/amazon/android/k/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/amazon/android/k/b;-><init>(Lcom/amazon/android/k/c;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/amazon/android/k/a;->a:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/android/licensing/l;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "License Verification succeeded!"

    invoke-virtual {v0, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/android/licensing/d;

    iget-object v2, v1, Lcom/amazon/android/licensing/f;->d:Ljava/util/Date;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/android/licensing/d;-><init>(Lcom/amazon/android/licensing/l;Ljava/lang/Object;Ljava/util/Date;)V

    iget-object v1, p0, Lcom/amazon/android/licensing/l;->f:Lcom/amazon/android/o/a;

    const-string v2, "APPLICATION_LICENSE"

    iget-object v1, v1, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/o/d;->a(Ljava/lang/String;Lcom/amazon/android/o/b;)V

    iget-object v0, p0, Lcom/amazon/android/licensing/l;->c:Lcom/amazon/android/q/d;

    new-instance v1, Lcom/amazon/android/p/a;

    invoke-direct {v1}, Lcom/amazon/android/p/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/q/d;->a(Lcom/amazon/android/q/b;)V

    iget-object v0, p0, Lcom/amazon/android/licensing/l;->e:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v2, Lcom/amazon/android/licensing/n;

    invoke-direct {v2}, Lcom/amazon/android/licensing/n;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method
