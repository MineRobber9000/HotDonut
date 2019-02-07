.class public abstract Lcom/amazon/venezia/command/CommandService$Stub;
.super Landroid/os/Binder;
.source "CommandService.java"

# interfaces
.implements Lcom/amazon/venezia/command/CommandService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/CommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/CommandService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.CommandService"

.field static final TRANSACTION_execute:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/CommandService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/CommandService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    .line 36
    :cond_0
    const-string v1, "com.amazon.venezia.command.CommandService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/CommandService;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/amazon/venezia/command/CommandService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 40
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/CommandService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/CommandService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "com.amazon.venezia.command.CommandService"

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 52
    :sswitch_0
    const-string v2, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 53
    goto :goto_0

    .line 57
    :sswitch_1
    const-string v2, "com.amazon.venezia.command.CommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/venezia/command/Command$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/Command;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Lcom/amazon/venezia/command/Command;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/venezia/command/ResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/ResultCallback;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Lcom/amazon/venezia/command/ResultCallback;
    invoke-virtual {p0, v0, v1}, Lcom/amazon/venezia/command/CommandService$Stub;->execute(Lcom/amazon/venezia/command/Command;Lcom/amazon/venezia/command/ResultCallback;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 64
    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
