.class public abstract Lcom/amazon/venezia/command/FailureResult$Stub;
.super Landroid/os/Binder;
.source "FailureResult.java"

# interfaces
.implements Lcom/amazon/venezia/command/FailureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/FailureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/FailureResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.FailureResult"

.field static final TRANSACTION_getAuthToken:I = 0x1

.field static final TRANSACTION_getButtonLabel:I = 0x4

.field static final TRANSACTION_getDisplayableMessage:I = 0x3

.field static final TRANSACTION_getDisplayableName:I = 0x2

.field static final TRANSACTION_getExtensionData:I = 0x6

.field static final TRANSACTION_show:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/FailureResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/FailureResult;
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
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/FailureResult;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/amazon/venezia/command/FailureResult;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 42
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/FailureResult$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/FailureResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v3, "com.amazon.venezia.command.FailureResult"

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 54
    :sswitch_0
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 55
    goto :goto_0

    .line 59
    :sswitch_1
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 63
    goto :goto_0

    .line 67
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->getDisplayableName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 75
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->getDisplayableMessage()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 79
    goto :goto_0

    .line 83
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->getButtonLabel()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 87
    goto :goto_0

    .line 91
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->show()Z

    move-result v0

    .line 93
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 95
    goto :goto_0

    .line 94
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 99
    .end local v0    # "_result":Z
    :sswitch_6
    const-string v1, "com.amazon.venezia.command.FailureResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/venezia/command/FailureResult$Stub;->getExtensionData()Ljava/util/Map;

    move-result-object v0

    .line 101
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v1, v2

    .line 103
    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
