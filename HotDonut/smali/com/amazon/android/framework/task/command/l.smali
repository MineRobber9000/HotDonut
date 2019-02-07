.class public final Lcom/amazon/android/framework/task/command/l;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/os/RemoteException;

.field c:Lcom/amazon/venezia/command/SuccessResult;

.field d:Lcom/amazon/venezia/command/FailureResult;

.field e:Lcom/amazon/venezia/command/r;

.field f:Lcom/amazon/venezia/command/k;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/l;->d:Lcom/amazon/venezia/command/FailureResult;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/framework/task/command/l;->g:I

    :try_start_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/FailureResult;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->b:Landroid/os/RemoteException;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/l;->c:Lcom/amazon/venezia/command/SuccessResult;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/framework/task/command/l;->g:I

    :try_start_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/SuccessResult;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->b:Landroid/os/RemoteException;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/amazon/venezia/command/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/l;->f:Lcom/amazon/venezia/command/k;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/framework/task/command/l;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/venezia/command/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/l;->e:Lcom/amazon/venezia/command/r;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/framework/task/command/l;->g:I

    :try_start_0
    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/l;->b:Landroid/os/RemoteException;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandResult: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CallingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/android/framework/task/command/l;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SuccessResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/l;->c:Lcom/amazon/venezia/command/SuccessResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FailureResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/l;->d:Lcom/amazon/venezia/command/FailureResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DecisionResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/l;->e:Lcom/amazon/venezia/command/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ExceptionResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/l;->f:Lcom/amazon/venezia/command/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
