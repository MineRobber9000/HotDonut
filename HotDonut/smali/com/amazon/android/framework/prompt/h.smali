.class final Lcom/amazon/android/framework/prompt/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/Task;


# instance fields
.field private synthetic a:Lcom/amazon/android/framework/prompt/Prompt;

.field private synthetic b:Lcom/amazon/android/framework/prompt/PromptManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/framework/prompt/h;->b:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    iput-object p2, p0, Lcom/amazon/android/framework/prompt/h;->a:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/h;->b:Lcom/amazon/android/framework/prompt/PromptManagerImpl;

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/h;->a:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-static {v0, v1}, Lcom/amazon/android/framework/prompt/PromptManagerImpl;->a(Lcom/amazon/android/framework/prompt/PromptManagerImpl;Lcom/amazon/android/framework/prompt/Prompt;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prompt Presentation on Main Thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/h;->a:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/prompt/h;->a:Lcom/amazon/android/framework/prompt/Prompt;

    invoke-virtual {v1}, Lcom/amazon/android/framework/prompt/Prompt;->getExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
