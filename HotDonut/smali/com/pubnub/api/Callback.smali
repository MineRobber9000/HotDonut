.class public abstract Lcom/pubnub/api/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 43
    return-void
.end method

.method public disconnectCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public errorCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 34
    return-void
.end method

.method public reconnectCallback(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 53
    return-void
.end method

.method public successCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 23
    return-void
.end method
