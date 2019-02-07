.class public abstract Lcom/amazon/venezia/command/ExceptionResult$Stub;
.super Landroid/os/Binder;
.source "ExceptionResult.java"

# interfaces
.implements Lcom/amazon/venezia/command/ExceptionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/ExceptionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/ExceptionResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.ExceptionResult"

.field static final TRANSACTION_getErrorCode:I = 0x1

.field static final TRANSACTION_getExtensionData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.amazon.venezia.command.ExceptionResult"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/ExceptionResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/ExceptionResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 52
    :goto_0
    return-object v1

    .line 48
    :cond_0
    const-string v1, "com.amazon.venezia.command.ExceptionResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/ExceptionResult;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/amazon/venezia/command/ExceptionResult;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 52
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/ExceptionResult$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/ExceptionResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 56
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

    const-string v3, "com.amazon.venezia.command.ExceptionResult"

    .line 60
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 64
    :sswitch_0
    const-string v1, "com.amazon.venezia.command.ExceptionResult"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 65
    goto :goto_0

    .line 69
    :sswitch_1
    const-string v1, "com.amazon.venezia.command.ExceptionResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/venezia/command/ExceptionResult$Stub;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 73
    goto :goto_0

    .line 77
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.amazon.venezia.command.ExceptionResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/venezia/command/ExceptionResult$Stub;->getExtensionData()Ljava/util/Map;

    move-result-object v0

    .line 79
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v1, v2

    .line 81
    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
