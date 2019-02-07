.class public interface abstract Lcom/amazon/android/framework/task/TaskManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enqueue(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V
.end method

.method public abstract enqueueAfterDelay(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;J)V
.end method

.method public abstract enqueueAtFront(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;)V
.end method

.method public abstract enqueueAtTime(Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;Lcom/amazon/android/framework/task/Task;Ljava/util/Date;)V
.end method
