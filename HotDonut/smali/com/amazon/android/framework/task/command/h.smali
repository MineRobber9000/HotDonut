.class final Lcom/amazon/android/framework/task/command/h;
.super Lcom/amazon/venezia/command/p;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/command/a;

.field private synthetic b:Lcom/amazon/android/framework/task/command/b;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/command/b;Lcom/amazon/android/framework/task/command/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/h;->b:Lcom/amazon/android/framework/task/command/b;

    iput-object p2, p0, Lcom/amazon/android/framework/task/command/h;->a:Lcom/amazon/android/framework/task/command/a;

    invoke-direct {p0}, Lcom/amazon/venezia/command/p;-><init>()V

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

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/h;->a:Lcom/amazon/android/framework/task/command/a;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/a;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
