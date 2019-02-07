.class final Lcom/amazon/android/framework/context/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/Task;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/context/d;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/context/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/context/a;->a:Lcom/amazon/android/framework/context/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    iget-object v0, p0, Lcom/amazon/android/framework/context/a;->a:Lcom/amazon/android/framework/context/d;

    invoke-virtual {v0}, Lcom/amazon/android/framework/context/d;->getRoot()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing Root Task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/android/framework/context/d;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v2, "Finishing Root"

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ContextManager: kill root task"

    return-object v0
.end method
