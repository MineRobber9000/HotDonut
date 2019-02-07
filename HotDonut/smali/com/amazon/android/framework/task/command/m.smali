.class final Lcom/amazon/android/framework/task/command/m;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/amazon/venezia/command/n;

.field final b:Ljava/lang/String;

.field final c:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/amazon/venezia/command/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/m;->a:Lcom/amazon/venezia/command/n;

    invoke-interface {p1}, Lcom/amazon/venezia/command/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/m;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/venezia/command/n;->b()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/m;->c:Landroid/content/Intent;

    return-void
.end method
