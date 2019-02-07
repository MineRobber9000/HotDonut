.class public Lcom/amazon/android/b/e;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/amazon/venezia/command/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EXCEPTION_RESULT_FAILURE"

    invoke-interface {p1}, Lcom/amazon/venezia/command/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
