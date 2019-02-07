.class final Lcom/amazon/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/c;


# instance fields
.field private synthetic a:Lcom/amazon/android/Kiwi;


# direct methods
.method constructor <init>(Lcom/amazon/android/Kiwi;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/d;->a:Lcom/amazon/android/Kiwi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/j/c;->d:Lcom/amazon/android/j/c;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/amazon/android/n/d;)V
    .locals 4

    check-cast p1, Lcom/amazon/android/j/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "EventName"

    sget-object v2, Lcom/amazon/android/j/c;->d:Lcom/amazon/android/j/c;

    invoke-virtual {v2}, Lcom/amazon/android/j/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ActivityName"

    iget-object v2, p1, Lcom/amazon/android/j/b;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazon/android/t/a;

    invoke-direct {v1, v0}, Lcom/amazon/android/t/a;-><init>(Ljava/util/Map;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/Kiwi;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v2, "Adding lifecycle PAUSE command to pipeline"

    invoke-virtual {v0, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/amazon/android/Kiwi;->a(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method

.method public final b()Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    return-object v0
.end method
