.class public abstract Lcom/amazon/venezia/command/q;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/amazon/venezia/command/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/q;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/amazon/venezia/command/h;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.amazon.venezia.command.CommandService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/amazon/venezia/command/h;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/amazon/venezia/command/h;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/l;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/l;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, "com.amazon.venezia.command.CommandService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v0, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v3

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/amazon/venezia/command/q;->a(Lcom/amazon/venezia/command/w;Lcom/amazon/venezia/command/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v4

    goto :goto_0

    :cond_0
    const-string v0, "com.amazon.venezia.command.Command"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/amazon/venezia/command/w;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/amazon/venezia/command/w;

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amazon/venezia/command/d;

    invoke-direct {v0, v1}, Lcom/amazon/venezia/command/d;-><init>(Landroid/os/IBinder;)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/amazon/venezia/command/f;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/amazon/venezia/command/f;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/amazon/venezia/command/t;

    invoke-direct {v0, v2}, Lcom/amazon/venezia/command/t;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
