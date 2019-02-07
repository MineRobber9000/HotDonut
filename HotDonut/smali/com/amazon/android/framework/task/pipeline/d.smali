.class final Lcom/amazon/android/framework/task/pipeline/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/Task;

.field private synthetic b:Lcom/amazon/android/framework/task/pipeline/a;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/pipeline/a;Lcom/amazon/android/framework/task/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    iput-object p2, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v4, ": Task finished executing: "

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    invoke-static {v0}, Lcom/amazon/android/framework/task/pipeline/a;->a(Lcom/amazon/android/framework/task/pipeline/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/framework/task/pipeline/a;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    invoke-static {v2}, Lcom/amazon/android/framework/task/pipeline/a;->b(Lcom/amazon/android/framework/task/pipeline/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Executing Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-interface {v0}, Lcom/amazon/android/framework/task/Task;->execute()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/android/framework/task/pipeline/a;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    invoke-static {v2}, Lcom/amazon/android/framework/task/pipeline/a;->b(Lcom/amazon/android/framework/task/pipeline/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Task finished executing: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amazon/android/framework/task/pipeline/a;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task Failed with unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/android/framework/task/pipeline/a;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    invoke-static {v2}, Lcom/amazon/android/framework/task/pipeline/a;->b(Lcom/amazon/android/framework/task/pipeline/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Task finished executing: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amazon/android/framework/task/pipeline/a;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/android/framework/task/pipeline/d;->b:Lcom/amazon/android/framework/task/pipeline/a;

    invoke-static {v3}, Lcom/amazon/android/framework/task/pipeline/a;->b(Lcom/amazon/android/framework/task/pipeline/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Task finished executing: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_3
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/pipeline/d;->a:Lcom/amazon/android/framework/task/Task;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
