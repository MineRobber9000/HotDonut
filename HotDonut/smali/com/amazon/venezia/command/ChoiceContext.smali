.class public interface abstract Lcom/amazon/venezia/command/ChoiceContext;
.super Ljava/lang/Object;
.source "ChoiceContext.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/venezia/command/ChoiceContext$Stub;
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
