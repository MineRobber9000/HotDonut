.class final Lcom/amazon/ags/api/ErrorCode$1;
.super Ljava/util/HashMap;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/api/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/ags/api/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42160b4e7cef19e0L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->AUTHENTICATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->CONNECTION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->UNRECOVERABLE:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v0, 0x1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->DATA_VALIDATION_ERROR:Lcom/amazon/ags/api/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/ags/api/ErrorCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
