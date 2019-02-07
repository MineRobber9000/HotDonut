.class final Lcom/amazon/android/framework/task/command/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/task/command/m;

.field private synthetic b:Lcom/amazon/android/framework/task/command/c;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/command/c;Lcom/amazon/android/framework/task/command/m;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/command/d;->b:Lcom/amazon/android/framework/task/command/c;

    iput-object p2, p0, Lcom/amazon/android/framework/task/command/d;->a:Lcom/amazon/android/framework/task/command/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/framework/task/command/c;->b()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "Choice selected!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/d;->b:Lcom/amazon/android/framework/task/command/c;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/c;->a(Lcom/amazon/android/framework/task/command/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/d;->b:Lcom/amazon/android/framework/task/command/c;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/c;->b(Lcom/amazon/android/framework/task/command/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/d;->a:Lcom/amazon/android/framework/task/command/m;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
