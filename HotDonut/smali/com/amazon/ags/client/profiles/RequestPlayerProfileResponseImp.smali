.class public Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "RequestPlayerProfileResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;


# instance fields
.field private final player:Lcom/amazon/ags/api/profiles/Player;


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;->player:Lcom/amazon/ags/api/profiles/Player;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/profiles/Player;I)V
    .locals 0
    .param p1, "player"    # Lcom/amazon/ags/api/profiles/Player;
    .param p2, "responseCode"    # I

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 26
    iput-object p1, p0, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;->player:Lcom/amazon/ags/api/profiles/Player;

    .line 27
    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x12

    return v0
.end method

.method public getPlayer()Lcom/amazon/ags/api/profiles/Player;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;->player:Lcom/amazon/ags/api/profiles/Player;

    return-object v0
.end method
