.class public Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;
.super Ljava/lang/Object;
.source "AuthenticationServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/client/authentication/AuthenticationService;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/authentication/AuthenticationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/AmazonGamesService;)V
    .locals 0
    .param p1, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 30
    return-void
.end method


# virtual methods
.method public final isAuthenticated()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 34
    sget-object v6, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->TAG:Ljava/lang/String;

    const-string v7, "Attempting to check is authenticated"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 37
    .local v4, "request":Landroid/os/Parcel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 39
    iget-object v6, p0, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    const/4 v7, 0x3

    invoke-interface {v6, v7, v4}, Lcom/amazon/ags/client/AmazonGamesService;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v2

    .line 40
    .local v2, "reply":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 41
    .local v3, "replyCode":I
    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    const/4 v5, 0x1

    .line 44
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "replyCode":I
    .end local v4    # "request":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return v5

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->TAG:Ljava/lang/String;

    const-string v7, "isAuthenticated(): "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
