.class public Lcom/amazon/android/s/a;
.super Lcom/amazon/android/framework/exception/KiwiException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Lcom/amazon/android/k/a;


# direct methods
.method public constructor <init>(Lcom/amazon/android/k/a;)V
    .locals 3

    const-string v0, "LICENSE_VERIFICATION_FAILURE"

    const-string v1, "VERIFICATION_ERRORS"

    invoke-static {p1}, Lcom/amazon/android/s/a;->a(Lcom/amazon/android/k/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/framework/exception/KiwiException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/android/k/a;->a()Z

    move-result v0

    const-string v1, "Created a verification exception with a Verifier that has no errors"

    invoke-static {v0, v1}, Lcom/amazon/android/d/a;->a(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/s/a;->a:Lcom/amazon/android/k/a;

    return-void
.end method

.method private static a(Lcom/amazon/android/k/a;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/android/k/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/k/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/amazon/android/k/b;->a:Lcom/amazon/android/k/c;

    invoke-interface {v2}, Lcom/amazon/android/k/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/s/a;->a:Lcom/amazon/android/k/a;

    invoke-virtual {v0}, Lcom/amazon/android/k/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
