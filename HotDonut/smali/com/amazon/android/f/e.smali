.class final Lcom/amazon/android/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/c;


# instance fields
.field private synthetic a:Lcom/amazon/android/f/c;


# direct methods
.method constructor <init>(Lcom/amazon/android/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/f/e;->a:Lcom/amazon/android/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/j/c;->c:Lcom/amazon/android/j/c;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/amazon/android/n/d;)V
    .locals 4

    check-cast p1, Lcom/amazon/android/j/b;

    iget-object v0, p0, Lcom/amazon/android/f/e;->a:Lcom/amazon/android/f/c;

    invoke-static {v0}, Lcom/amazon/android/f/c;->a(Lcom/amazon/android/f/c;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/f/a;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/amazon/android/j/b;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/amazon/android/f/c;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v1

    const-string v2, "Context changed while awaiting result!"

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/f/a;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/android/f/c;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing activity from old context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/f/a;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/android/f/a;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/amazon/android/f/a;->a:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->finishActivity(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/android/f/a;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final b()Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    return-object v0
.end method
