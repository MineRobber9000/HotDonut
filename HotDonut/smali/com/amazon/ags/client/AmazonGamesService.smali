.class public interface abstract Lcom/amazon/ags/client/AmazonGamesService;
.super Ljava/lang/Object;
.source "AmazonGamesService.java"


# virtual methods
.method public abstract bind(Landroid/content/Context;)V
.end method

.method public abstract getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;
.end method

.method public abstract isReady()Z
.end method

.method public abstract sendMessage(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transact(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
