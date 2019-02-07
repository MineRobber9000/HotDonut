.class public abstract Lcom/amazon/venezia/command/ResultCallback$Stub;
.super Landroid/os/Binder;
.source "ResultCallback.java"

# interfaces
.implements Lcom/amazon/venezia/command/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/ResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/ResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.ResultCallback"

.field static final TRANSACTION_onDecide:I = 0x3

.field static final TRANSACTION_onException:I = 0x4

.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/ResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/ResultCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 38
    :cond_0
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/ResultCallback;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/amazon/venezia/command/ResultCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 42
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/ResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/ResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    const-string v3, "com.amazon.venezia.command.ResultCallback"

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 54
    :sswitch_0
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 55
    goto :goto_0

    .line 59
    :sswitch_1
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/venezia/command/SuccessResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/SuccessResult;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Lcom/amazon/venezia/command/SuccessResult;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/ResultCallback$Stub;->onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 64
    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Lcom/amazon/venezia/command/SuccessResult;
    :sswitch_2
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/venezia/command/FailureResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/FailureResult;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Lcom/amazon/venezia/command/FailureResult;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/ResultCallback$Stub;->onFailure(Lcom/amazon/venezia/command/FailureResult;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 73
    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/amazon/venezia/command/FailureResult;
    :sswitch_3
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/venezia/command/DecisionResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/DecisionResult;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Lcom/amazon/venezia/command/DecisionResult;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/ResultCallback$Stub;->onDecide(Lcom/amazon/venezia/command/DecisionResult;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 82
    goto :goto_0

    .line 86
    .end local v0    # "_arg0":Lcom/amazon/venezia/command/DecisionResult;
    :sswitch_4
    const-string v1, "com.amazon.venezia.command.ResultCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/venezia/command/ExceptionResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/ExceptionResult;

    move-result-object v0

    .line 89
    .local v0, "_arg0":Lcom/amazon/venezia/command/ExceptionResult;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/ResultCallback$Stub;->onException(Lcom/amazon/venezia/command/ExceptionResult;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 91
    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
