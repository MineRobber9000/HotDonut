.class final Lcom/amazon/android/framework/task/command/j;
.super Lcom/amazon/venezia/command/o;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/command/b;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/command/b;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/j;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-direct {p0}, Lcom/amazon/venezia/command/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/venezia/command/FailureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/j;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->b(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/framework/task/command/l;

    invoke-direct {v1, p1}, Lcom/amazon/android/framework/task/command/l;-><init>(Lcom/amazon/venezia/command/FailureResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/amazon/venezia/command/SuccessResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/j;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->b(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/framework/task/command/l;

    invoke-direct {v1, p1}, Lcom/amazon/android/framework/task/command/l;-><init>(Lcom/amazon/venezia/command/SuccessResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/amazon/venezia/command/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/j;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->b(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/framework/task/command/l;

    invoke-direct {v1, p1}, Lcom/amazon/android/framework/task/command/l;-><init>(Lcom/amazon/venezia/command/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/amazon/venezia/command/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/j;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->b(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/framework/task/command/l;

    invoke-direct {v1, p1}, Lcom/amazon/android/framework/task/command/l;-><init>(Lcom/amazon/venezia/command/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
