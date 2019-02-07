.class public interface abstract Lcom/amazon/venezia/command/CommandService;
.super Ljava/lang/Object;
.source "CommandService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/CommandService$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Lcom/amazon/venezia/command/Command;Lcom/amazon/venezia/command/ResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
