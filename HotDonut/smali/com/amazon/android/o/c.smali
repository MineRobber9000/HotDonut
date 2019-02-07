.class final Lcom/amazon/android/o/c;
.super Lcom/amazon/android/o/b;


# instance fields
.field private synthetic b:Lcom/amazon/android/o/d;


# direct methods
.method constructor <init>(Lcom/amazon/android/o/d;Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/o/c;->b:Lcom/amazon/android/o/d;

    invoke-direct {p0, p2, p3}, Lcom/amazon/android/o/b;-><init>(Ljava/lang/Object;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method protected final doExpiration()V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/android/o/d;->a()Lcom/amazon/android/framework/util/KiwiLogger;

    move-result-object v0

    const-string v1, "Woah, non-expirable value was expired!!!!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
