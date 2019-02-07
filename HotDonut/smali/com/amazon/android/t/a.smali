.class public final Lcom/amazon/android/t/a;
.super Lcom/amazon/android/framework/task/command/AbstractCommandTask;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/t/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final getCommandData()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/t/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method protected final getCommandName()Ljava/lang/String;
    .locals 1

    const-string v0, "lifeCycle_Events"

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/amazon/android/framework/exception/KiwiException;
        }
    .end annotation

    return-void
.end method
