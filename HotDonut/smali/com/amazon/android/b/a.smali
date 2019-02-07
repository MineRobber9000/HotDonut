.class public Lcom/amazon/android/b/a;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/os/RemoteException;)V
    .locals 1

    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    const-string v0, "COMMAND_SERVICE_DEAD_OBJECT_EXCEPTION"

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "COMMAND_SERVICE_REMOTE_EXCEPTION"

    goto :goto_0
.end method
