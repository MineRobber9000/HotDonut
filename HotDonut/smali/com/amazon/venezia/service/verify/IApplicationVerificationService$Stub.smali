.class public abstract Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;
.super Landroid/os/Binder;
.source "IApplicationVerificationService.java"

# interfaces
.implements Lcom/amazon/venezia/service/verify/IApplicationVerificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/service/verify/IApplicationVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.service.verify.IApplicationVerificationService"

.field static final TRANSACTION_getAmazonId:I = 0x3

.field static final TRANSACTION_getDeviceId:I = 0x4

.field static final TRANSACTION_getToken:I = 0x2

.field static final TRANSACTION_reportVerificationResults:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/service/verify/IApplicationVerificationService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    .line 34
    :cond_0
    const-string v1, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/service/verify/IApplicationVerificationService;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/amazon/venezia/service/verify/IApplicationVerificationService;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    const-string v6, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 50
    :sswitch_0
    const-string v4, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 51
    goto :goto_0

    .line 55
    :sswitch_1
    const-string v4, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    .line 61
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;->reportVerificationResults(Ljava/lang/String;ZLjava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 64
    goto :goto_0

    .line 59
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 74
    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;->getAmazonId()Ljava/lang/String;

    move-result-object v3

    .line 80
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 82
    goto :goto_0

    .line 86
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.amazon.venezia.service.verify.IApplicationVerificationService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/venezia/service/verify/IApplicationVerificationService$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 88
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 90
    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
