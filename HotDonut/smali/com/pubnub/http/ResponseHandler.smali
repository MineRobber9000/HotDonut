.class public abstract Lcom/pubnub/http/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleError(Ljava/lang/String;)V
.end method

.method public abstract handleResponse(Ljava/lang/String;)V
.end method

.method public handleTimeout()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method
