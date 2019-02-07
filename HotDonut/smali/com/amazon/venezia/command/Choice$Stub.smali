.class public abstract Lcom/amazon/venezia/command/Choice$Stub;
.super Landroid/os/Binder;
.source "Choice.java"

# interfaces
.implements Lcom/amazon/venezia/command/Choice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/venezia/command/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/Choice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.venezia.command.Choice"

.field static final TRANSACTION_choose:I = 0x3

.field static final TRANSACTION_getDisplayableName:I = 0x1

.field static final TRANSACTION_getExtensionData:I = 0x4

.field static final TRANSACTION_getIntent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.amazon.venezia.command.Choice"

    invoke-virtual {p0, p0, v0}, Lcom/amazon/venezia/command/Choice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/Choice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 52
    :cond_0
    const-string v1, "com.amazon.venezia.command.Choice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/venezia/command/Choice;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/amazon/venezia/command/Choice;

    .end local v0    # "iin":Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 56
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/amazon/venezia/command/Choice$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/amazon/venezia/command/Choice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 60
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

    const-string v4, "com.amazon.venezia.command.Choice"

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 68
    :sswitch_0
    const-string v2, "com.amazon.venezia.command.Choice"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 69
    goto :goto_0

    .line 73
    :sswitch_1
    const-string v2, "com.amazon.venezia.command.Choice"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Choice$Stub;->getDisplayableName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 77
    goto :goto_0

    .line 81
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v2, "com.amazon.venezia.command.Choice"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Choice$Stub;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v1, p3, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v2, v3

    .line 91
    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 95
    .end local v1    # "_result":Landroid/content/Intent;
    :sswitch_3
    const-string v2, "com.amazon.venezia.command.Choice"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/venezia/command/ChoiceContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/venezia/command/ChoiceContext;

    move-result-object v0

    .line 98
    .local v0, "_arg0":Lcom/amazon/venezia/command/ChoiceContext;
    invoke-virtual {p0, v0}, Lcom/amazon/venezia/command/Choice$Stub;->choose(Lcom/amazon/venezia/command/ChoiceContext;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 100
    goto :goto_0

    .line 104
    .end local v0    # "_arg0":Lcom/amazon/venezia/command/ChoiceContext;
    :sswitch_4
    const-string v2, "com.amazon.venezia.command.Choice"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/venezia/command/Choice$Stub;->getExtensionData()Ljava/util/Map;

    move-result-object v1

    .line 106
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v2, v3

    .line 108
    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
