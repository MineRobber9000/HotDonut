.class final Lcom/amazon/android/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/amazon/android/Kiwi;


# direct methods
.method constructor <init>(Lcom/amazon/android/Kiwi;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/c;->a:Lcom/amazon/android/Kiwi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v3, "TEST_MODE"

    iget-object v0, p0, Lcom/amazon/android/c;->a:Lcom/amazon/android/Kiwi;

    invoke-static {v0}, Lcom/amazon/android/Kiwi;->a(Lcom/amazon/android/Kiwi;)Lcom/amazon/android/o/a;

    move-result-object v0

    const-string v1, "TEST_MODE"

    invoke-virtual {v0, v3}, Lcom/amazon/android/o/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/android/Kiwi;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "Enable test mode broadcast received!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/amazon/android/framework/util/KiwiLogger;->enableTest()V

    invoke-static {}, Lcom/amazon/android/Kiwi;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "Enabling test mode!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/android/Kiwi;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/c;->a:Lcom/amazon/android/Kiwi;

    invoke-static {v2}, Lcom/amazon/android/Kiwi;->b(Lcom/amazon/android/Kiwi;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/c;->a:Lcom/amazon/android/Kiwi;

    invoke-static {v0}, Lcom/amazon/android/Kiwi;->a(Lcom/amazon/android/Kiwi;)Lcom/amazon/android/o/a;

    move-result-object v0

    const-string v1, "TEST_MODE"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/android/c;->a:Lcom/amazon/android/Kiwi;

    invoke-static {v0}, Lcom/amazon/android/Kiwi;->c(Lcom/amazon/android/Kiwi;)Lcom/amazon/android/n/g;

    move-result-object v0

    new-instance v1, Lcom/amazon/android/a;

    invoke-direct {v1}, Lcom/amazon/android/a;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/android/n/g;->a(Lcom/amazon/android/n/d;)V

    goto :goto_0
.end method
