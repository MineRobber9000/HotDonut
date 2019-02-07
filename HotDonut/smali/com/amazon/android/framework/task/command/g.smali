.class final Lcom/amazon/android/framework/task/command/g;
.super Lcom/amazon/venezia/command/z;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/g;->a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;

    invoke-direct {p0}, Lcom/amazon/venezia/command/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/g;->a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/g;->a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/g;->a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->a(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/g;->a:Lcom/amazon/android/framework/task/command/AbstractCommandTask;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/AbstractCommandTask;->getCommandData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
