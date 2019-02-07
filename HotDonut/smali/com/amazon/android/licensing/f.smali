.class public final Lcom/amazon/android/licensing/f;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Date;

.field final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/m/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/h/b;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "checksum"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/f;->a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/f;->a:Ljava/lang/String;

    const-string v0, "customerId"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/f;->a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/f;->b:Ljava/lang/String;

    const-string v0, "deviceId"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/f;->a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/f;->c:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/f;->a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/f;->e:Ljava/lang/String;

    const-string v0, "expiration"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/f;->b(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/f;->d:Ljava/util/Date;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/h/b;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/amazon/android/m/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/framework/util/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amazon/android/h/b;

    const-string v1, "MISSING_FIELD"

    invoke-direct {v0, v1, p0}, Lcom/amazon/android/h/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/h/b;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/amazon/android/licensing/f;->a(Ljava/lang/String;Lcom/amazon/android/m/d;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Lcom/amazon/android/h/b;

    const-string v2, "INVALID_FIELD_VALUE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/h/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
