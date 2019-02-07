.class public abstract Lcom/amazon/venezia/command/DecisionResult$Stub;
.super Landroid/os/Binder;
.source "DecisionResult.java"

# interfaces
.implements Lcom/amazon/venezia/command/DecisionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/DecisionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/DecisionResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.DecisionResult"

.field static final TRANSACTION_expire:I = 0x5

.field static final TRANSACTION_getAuthToken:I = 0x1

.field static final TRANSACTION_getDecisionDurationInSeconds:I = 0x4

.field static final TRANSACTION_getDescription:I = 0x3

.field static final TRANSACTION_getDisplayableName:I = 0x2

.field static final TRANSACTION_getExtensionData:I = 0x9

.field static final TRANSACTION_getNegativeChoice:I = 0x8

.field static final TRANSACTION_getNeutralChoice:I = 0x7

.field static final TRANSACTION_getPositiveChoice:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/DecisionResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 40
    :cond_0
    const-string v1, "com.amazon.venezia.command.DecisionResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/DecisionResult;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/amazon/venezia/command/DecisionResult;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 44
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/DecisionResult$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/DecisionResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "com.amazon.venezia.command.DecisionResult"

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 56
    :sswitch_0
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 57
    goto :goto_0

    .line 61
    :sswitch_1
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 65
    goto :goto_0

    .line 69
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getDisplayableName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 73
    goto :goto_0

    .line 77
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 81
    goto :goto_0

    .line 85
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getDecisionDurationInSeconds()J

    move-result-wide v1

    .line 87
    .local v1, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move v3, v4

    .line 89
    goto :goto_0

    .line 93
    .end local v1    # "_result":J
    :sswitch_5
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/venezia/command/DecisionExpirationContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/DecisionExpirationContext;

    move-result-object v0

    .line 96
    .local v0, "_arg0":Lcom/amazon/venezia/command/DecisionExpirationContext;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->expire(Lcom/amazon/venezia/command/DecisionExpirationContext;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 98
    goto :goto_0

    .line 102
    .end local v0    # "_arg0":Lcom/amazon/venezia/command/DecisionExpirationContext;
    :sswitch_6
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getPositiveChoice()Lcom/amazon/venezia/command/Choice;

    move-result-object v1

    .line 104
    .local v1, "_result":Lcom/amazon/venezia/command/Choice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/venezia/command/Choice;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 106
    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 105
    goto :goto_1

    .line 110
    .end local v1    # "_result":Lcom/amazon/venezia/command/Choice;
    :sswitch_7
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getNeutralChoice()Lcom/amazon/venezia/command/Choice;

    move-result-object v1

    .line 112
    .restart local v1    # "_result":Lcom/amazon/venezia/command/Choice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/venezia/command/Choice;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 114
    goto/16 :goto_0

    :cond_1
    move-object v3, v6

    .line 113
    goto :goto_2

    .line 118
    .end local v1    # "_result":Lcom/amazon/venezia/command/Choice;
    :sswitch_8
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getNegativeChoice()Lcom/amazon/venezia/command/Choice;

    move-result-object v1

    .line 120
    .restart local v1    # "_result":Lcom/amazon/venezia/command/Choice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/venezia/command/Choice;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 122
    goto/16 :goto_0

    :cond_2
    move-object v3, v6

    .line 121
    goto :goto_3

    .line 126
    .end local v1    # "_result":Lcom/amazon/venezia/command/Choice;
    :sswitch_9
    const-string v3, "com.amazon.venezia.command.DecisionResult"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/amazon/venezia/command/DecisionResult$Stub;->getExtensionData()Ljava/util/Map;

    move-result-object v1

    .line 128
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v3, v4

    .line 130
    goto/16 :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
