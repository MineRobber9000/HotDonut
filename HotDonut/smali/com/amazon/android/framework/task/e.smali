.class final Lcom/amazon/android/framework/task/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/b;


# instance fields
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Lcom/amazon/android/framework/task/a;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/a;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/e;->b:Lcom/amazon/android/framework/task/a;

    iput-object p2, p0, Lcom/amazon/android/framework/task/e;->a:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/pipeline/f;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/e;->a:Ljava/util/Date;

    invoke-interface {p2, p1, v0}, Lcom/amazon/android/framework/task/pipeline/f;->a(Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V

    return-void
.end method
