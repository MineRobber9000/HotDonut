.class public final Lcom/amazon/android/licensing/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/h;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/amazon/android/b/h;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "license"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/c;->a:Ljava/lang/String;

    const-string v0, "customerId"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/c;->b:Ljava/lang/String;

    const-string v0, "deviceId"

    invoke-static {v0, p1}, Lcom/amazon/android/licensing/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/licensing/c;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/h;
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/amazon/android/b/h;

    const-string v1, "MISSING_FIELD"

    invoke-direct {v0, v1, p0}, Lcom/amazon/android/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-object v0
.end method
