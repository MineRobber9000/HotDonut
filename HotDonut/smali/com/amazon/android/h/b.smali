.class public Lcom/amazon/android/h/b;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SIGNED_TOKEN_PARSE_FAILURE"

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/amazon/android/h/b;
    .locals 3

    new-instance v0, Lcom/amazon/android/h/b;

    const-string v1, "INVALID_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/h/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
