.class final Lcom/amazon/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/c;


# instance fields
.field private synthetic a:Lcom/amazon/android/Kiwi;


# direct methods
.method constructor <init>(Lcom/amazon/android/Kiwi;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/e;->a:Lcom/amazon/android/Kiwi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/j/d;->b:Lcom/amazon/android/j/d;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/amazon/android/n/d;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/Kiwi;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning shutdown process for application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/e;->a:Lcom/amazon/android/Kiwi;

    invoke-static {v2}, Lcom/amazon/android/Kiwi;->e(Lcom/amazon/android/Kiwi;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/amazon/android/Kiwi;->b()Lcom/amazon/android/Kiwi;

    return-void
.end method

.method public final b()Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->c:Lcom/amazon/android/n/a;

    return-object v0
.end method
