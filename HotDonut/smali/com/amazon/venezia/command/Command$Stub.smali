.class public abstract Lcom/amazon/venezia/command/Command$Stub;
.super Landroid/os/Binder;
.source "Command.java"

# interfaces
.implements Lcom/amazon/venezia/command/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/Command$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.Command"

.field static final TRANSACTION_getData:I = 0x4

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getPackageName:I = 0x3

.field static final TRANSACTION_getVersion:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.amazon.venezia.command.Command"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/Command$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/Command;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 37
    :cond_0
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/Command;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/amazon/venezia/command/Command;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 41
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/Command$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/Command$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 45
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

    const-string v3, "com.amazon.venezia.command.Command"

    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 53
    :sswitch_0
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 54
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Command$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 62
    goto :goto_0

    .line 66
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Command$Stub;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 74
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Command$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 78
    goto :goto_0

    .line 82
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.amazon.venezia.command.Command"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Command$Stub;->getData()Ljava/util/Map;

    move-result-object v0

    .line 84
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v1, v2

    .line 86
    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
