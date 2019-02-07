.class public final Lcom/amazon/android/h;
.super Lcom/amazon/android/l/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/android/l/b;-><init>()V

    new-instance v0, Lcom/amazon/android/i;

    invoke-direct {v0}, Lcom/amazon/android/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/h;->a(Lcom/amazon/android/framework/task/Task;)V

    new-instance v0, Lcom/amazon/android/r/a;

    invoke-direct {v0}, Lcom/amazon/android/r/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/h;->a(Lcom/amazon/android/framework/task/Task;)V

    new-instance v0, Lcom/amazon/android/e/a;

    invoke-direct {v0}, Lcom/amazon/android/e/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/android/h;->a(Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "DrmFreeApplicationLaunchTaskWorkflow"

    return-object v0
.end method
