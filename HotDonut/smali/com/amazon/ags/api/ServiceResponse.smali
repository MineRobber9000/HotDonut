.class public Lcom/amazon/ags/api/ServiceResponse;
.super Ljava/lang/Object;
.source "ServiceResponse.java"


# instance fields
.field private final error:Lcom/amazon/ags/api/ErrorCode;

.field private final status:Lcom/amazon/ags/api/AmazonGamesStatus;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/api/AmazonGamesStatus;Lcom/amazon/ags/api/ErrorCode;)V
    .locals 2
    .param p1, "status"    # Lcom/amazon/ags/api/AmazonGamesStatus;
    .param p2, "error"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No status reported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/api/ServiceResponse;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 22
    iput-object p2, p0, Lcom/amazon/ags/api/ServiceResponse;->error:Lcom/amazon/ags/api/ErrorCode;

    .line 23
    return-void
.end method


# virtual methods
.method public final getError()Lcom/amazon/ags/api/ErrorCode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/ags/api/ServiceResponse;->error:Lcom/amazon/ags/api/ErrorCode;

    return-object v0
.end method

.method public final getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/ags/api/ServiceResponse;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceResponse{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/api/ServiceResponse;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/api/ServiceResponse;->error:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
