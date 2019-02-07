.class public final Lcom/amazon/android/n/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/g;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "EventManagerImpl"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/n/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/n/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/android/n/c;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/amazon/android/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/d/a;->a()V

    invoke-interface {p1}, Lcom/amazon/android/n/c;->a()Lcom/amazon/android/n/f;

    move-result-object v1

    sget-object v0, Lcom/amazon/android/n/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering listener for event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/n/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/n/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/android/n/e;

    invoke-direct {v0}, Lcom/amazon/android/n/e;-><init>()V

    iget-object v2, p0, Lcom/amazon/android/n/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/android/n/e;->a(Lcom/amazon/android/n/c;)V

    return-void
.end method

.method public final a(Lcom/amazon/android/n/d;)V
    .locals 4

    invoke-interface {p1}, Lcom/amazon/android/n/d;->a()Lcom/amazon/android/n/f;

    move-result-object v0

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/android/n/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/amazon/android/n/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/n/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "No registered listeners, returning"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/amazon/android/n/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/n/e;

    invoke-virtual {p0, p1}, Lcom/amazon/android/n/e;->a(Lcom/amazon/android/n/d;)V

    goto :goto_0
.end method
