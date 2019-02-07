.class final Lcom/amazon/android/framework/task/command/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/command/b;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/command/b;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/i;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/amazon/android/framework/task/command/b;->c()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/i;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->a(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {p2}, Lcom/amazon/venezia/command/q;->a(Landroid/os/IBinder;)Lcom/amazon/venezia/command/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/amazon/android/framework/task/command/b;->c()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "onServiceDisconnected!!!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    return-void
.end method
