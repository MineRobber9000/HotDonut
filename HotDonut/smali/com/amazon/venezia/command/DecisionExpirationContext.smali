.class public interface abstract Lcom/amazon/venezia/command/DecisionExpirationContext;
.super Ljava/lang/Object;
.source "DecisionExpirationContext.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/DecisionExpirationContext$Stub;
    }
.end annotation


# virtual methods
.method public abstract getExtensionData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReason()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
