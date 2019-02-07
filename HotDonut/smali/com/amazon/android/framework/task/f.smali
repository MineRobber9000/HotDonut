.class final Lcom/amazon/android/framework/task/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/b;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/amazon/android/framework/task/a;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/task/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/task/f;->b:Lcom/amazon/android/framework/task/a;

    iput-wide p2, p0, Lcom/amazon/android/framework/task/f;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/android/framework/task/Task;Lcom/amazon/android/framework/task/pipeline/f;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/android/framework/task/f;->a:J

    invoke-interface {p2, p1, v0, v1}, Lcom/amazon/android/framework/task/pipeline/f;->a(Lcom/amazon/android/framework/task/Task;J)V

    return-void
.end method
