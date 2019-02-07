.class final Lcom/amazon/android/licensing/d;
.super Lcom/amazon/android/o/b;


# instance fields
.field private synthetic b:Lcom/amazon/android/licensing/l;


# direct methods
.method constructor <init>(Lcom/amazon/android/licensing/l;Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/licensing/d;->b:Lcom/amazon/android/licensing/l;

    invoke-direct {p0, p2, p3}, Lcom/amazon/android/o/b;-><init>(Ljava/lang/Object;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final doExpiration()V
    .locals 3

    new-instance v0, Lcom/amazon/android/licensing/l;

    invoke-direct {v0}, Lcom/amazon/android/licensing/l;-><init>()V

    iget-object v1, p0, Lcom/amazon/android/licensing/d;->taskManager:Lcom/amazon/android/framework/task/TaskManager;

    sget-object v2, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-interface {v1, v2, v0}, Lcom/amazon/android/framework/task/TaskManager;->enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V

    return-void
.end method
