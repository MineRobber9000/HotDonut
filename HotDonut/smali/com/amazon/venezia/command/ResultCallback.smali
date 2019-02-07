.class public interface abstract Lcom/amazon/venezia/command/ResultCallback;
.super Ljava/lang/Object;
.source "ResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/ResultCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDecide(Lcom/amazon/venezia/command/DecisionResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onException(Lcom/amazon/venezia/command/ExceptionResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/amazon/venezia/command/FailureResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/amazon/venezia/command/SuccessResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
