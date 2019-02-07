.class public final Lcom/amazon/android/licensing/b;
.super Lcom/amazon/android/l/c;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/o/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private c:Lcom/amazon/android/framework/prompt/PromptManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "LicenseKillTask"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/licensing/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/android/l/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 6

    const-string v5, "LICENSE_FAILURE_CONTENT"

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/licensing/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "License Kill Task Executing!!!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/licensing/b;->b:Lcom/amazon/android/o/a;

    const-string v1, "APPLICATION_LICENSE"

    invoke-virtual {v0, v1}, Lcom/amazon/android/o/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/licensing/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "license verification succeeded"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/licensing/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "License Kill Task determined app is not licensed, killing app"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/licensing/b;->isWorkflowChild()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/android/licensing/b;->quitParentWorkflow()V

    :cond_3
    new-instance v1, Lcom/amazon/android/framework/prompt/c;

    iget-object v0, p0, Lcom/amazon/android/licensing/b;->b:Lcom/amazon/android/o/a;

    const-string v2, "LICENSE_FAILURE_CONTENT"

    invoke-virtual {v0, v5}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/framework/prompt/PromptContent;

    if-eqz v0, :cond_5

    sget-boolean v2, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/amazon/android/licensing/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetched failure content from store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/amazon/android/licensing/b;->b:Lcom/amazon/android/o/a;

    const-string v3, "LICENSE_FAILURE_CONTENT"

    iget-object v2, v2, Lcom/amazon/android/o/a;->a:Lcom/amazon/android/o/d;

    invoke-virtual {v2, v5}, Lcom/amazon/android/o/d;->c(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Lcom/amazon/android/framework/prompt/c;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    iget-object v0, p0, Lcom/amazon/android/licensing/b;->c:Lcom/amazon/android/framework/prompt/PromptManager;

    invoke-interface {v0, v1}, Lcom/amazon/android/framework/prompt/PromptManager;->present(Lcom/amazon/android/framework/prompt/Prompt;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/amazon/android/licensing/i;->e:Lcom/amazon/android/framework/prompt/PromptContent;

    goto :goto_1
.end method
