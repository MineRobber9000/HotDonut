.class public Lcom/amazon/android/b/h;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "MALFORMED_RESPONSE"

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
