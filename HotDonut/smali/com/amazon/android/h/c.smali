.class public Lcom/amazon/android/h/c;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SIGNED_TOKEN_VERIFICATION_FAILURE"

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;)V

    return-void
.end method
