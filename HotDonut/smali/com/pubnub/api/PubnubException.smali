.class public Lcom/pubnub/api/PubnubException;
.super Ljava/lang/Exception;
.source "PubnubException.java"


# instance fields
.field private errormsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    const-string v0, "Pubnub Exception Occurred"

    iput-object v0, p0, Lcom/pubnub/api/PubnubException;->errormsg:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/pubnub/api/PubnubException;->errormsg:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pubnub/api/PubnubException;->errormsg:Ljava/lang/String;

    return-object v0
.end method
