.class public abstract Lcom/amazon/venezia/command/o;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/amazon/venezia/command/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/o;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "com.amazon.venezia.command.ResultCallback"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/o;->a(Lcom/amazon/venezia/command/SuccessResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "com.amazon.venezia.command.SuccessResult"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/amazon/venezia/command/SuccessResult;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/amazon/venezia/command/SuccessResult;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amazon/venezia/command/x;

    invoke-direct {v0, v1}, Lcom/amazon/venezia/command/x;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/o;->a(Lcom/amazon/venezia/command/FailureResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v0, "com.amazon.venezia.command.FailureResult"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/amazon/venezia/command/FailureResult;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/amazon/venezia/command/FailureResult;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/amazon/venezia/command/ab;

    invoke-direct {v0, v1}, Lcom/amazon/venezia/command/ab;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :sswitch_3
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/o;->a(Lcom/amazon/venezia/command/r;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_4
    const-string v0, "com.amazon.venezia.command.DecisionResult"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/amazon/venezia/command/r;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/amazon/venezia/command/r;

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/amazon/venezia/command/aa;

    invoke-direct {v0, v1}, Lcom/amazon/venezia/command/aa;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    :sswitch_4
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/o;->a(Lcom/amazon/venezia/command/k;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_6
    const-string v0, "com.amazon.venezia.command.ExceptionResult"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v2, v0, Lcom/amazon/venezia/command/k;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/amazon/venezia/command/k;

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/amazon/venezia/command/v;

    invoke-direct {v0, v1}, Lcom/amazon/venezia/command/v;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
