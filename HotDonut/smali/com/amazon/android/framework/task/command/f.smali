.class final Lcom/amazon/android/framework/task/command/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:Lcom/amazon/android/framework/task/command/m;

.field final e:Lcom/amazon/android/framework/task/command/m;

.field final f:Lcom/amazon/android/framework/task/command/m;


# direct methods
.method public constructor <init>(Lcom/amazon/venezia/command/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/f;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/f;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/framework/task/command/f;->c:J

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->e()Lcom/amazon/venezia/command/n;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/f;->a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/m;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/f;->d:Lcom/amazon/android/framework/task/command/m;

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->f()Lcom/amazon/venezia/command/n;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/f;->a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/m;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/f;->e:Lcom/amazon/android/framework/task/command/m;

    invoke-interface {p1}, Lcom/amazon/venezia/command/r;->g()Lcom/amazon/venezia/command/n;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/f;->a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/m;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/f;->f:Lcom/amazon/android/framework/task/command/m;

    return-void
.end method

.method private static a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazon/android/framework/task/command/m;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/command/m;-><init>(Lcom/amazon/venezia/command/n;)V

    goto :goto_0
.end method
