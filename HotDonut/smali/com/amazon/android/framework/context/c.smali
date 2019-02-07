.class final Lcom/amazon/android/framework/context/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/Task;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/context/d;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/context/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/context/c;->a:Lcom/amazon/android/framework/context/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/context/c;->a:Lcom/amazon/android/framework/context/d;

    invoke-static {v0}, Lcom/amazon/android/framework/context/d;->a(Lcom/amazon/android/framework/context/d;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ContextManager: init app shutdown on main thread"

    return-object v0
.end method
