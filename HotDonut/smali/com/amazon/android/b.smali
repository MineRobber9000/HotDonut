.class public final Lcom/amazon/android/b;
.super Lcom/amazon/android/l/b;


# instance fields
.field private a:Lcom/amazon/android/framework/task/command/b;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/l/b;-><init>()V

    new-instance v0, Lcom/amazon/android/i;

    invoke-direct {v0}, Lcom/amazon/android/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/b;->a(Lcom/amazon/android/framework/task/Task;)V

    new-instance v0, Lcom/amazon/android/r/a;

    invoke-direct {v0}, Lcom/amazon/android/r/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/b;->a(Lcom/amazon/android/framework/task/Task;)V

    new-instance v0, Lcom/amazon/android/licensing/e;

    invoke-direct {v0}, Lcom/amazon/android/licensing/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/b;->a(Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/android/b;->isWorkflowChild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/b;->a:Lcom/amazon/android/framework/task/command/b;

    invoke-virtual {v0}, Lcom/amazon/android/framework/task/command/b;->b()V

    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "DrmFullApplicationLaunchTaskWorkflow"

    return-object v0
.end method
