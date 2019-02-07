.class public Lcom/amazon/ags/client/achievements/LoadIconResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "LoadIconResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/achievements/LoadIconResponse;


# instance fields
.field private final image:[B


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;->image:[B

    .line 29
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "image"    # [B
    .param p2, "responseCode"    # I

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;->image:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getImage()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;->image:[B

    return-object v0
.end method
