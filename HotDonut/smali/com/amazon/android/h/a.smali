.class public Lcom/amazon/android/h/a;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "DATA_AUTH_KEY_LOAD_FAILURE"

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/amazon/android/h/a;
    .locals 2

    new-instance v0, Lcom/amazon/android/h/a;

    const-string v1, "CERT_FAILED_TO_LOAD"

    invoke-direct {v0, v1, p0}, Lcom/amazon/android/h/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
