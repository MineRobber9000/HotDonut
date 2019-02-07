.class public final Lcom/amazon/android/framework/prompt/c;
.super Lcom/amazon/android/framework/prompt/SimplePrompt;

# interfaces
.implements Lcom/amazon/android/framework/resource/b;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "ShutdownPrompt"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/prompt/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/SimplePrompt;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    return-void
.end method


# virtual methods
.method protected final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/c;->b:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->finishActivities()V

    sget-object v0, Lcom/amazon/android/framework/prompt/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "license verification failed"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/prompt/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Killing application"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    return-void
.end method

.method protected final getExpirationDurationInSeconds()J
    .locals 2

    const-wide/32 v0, 0x1e13380

    return-wide v0
.end method

.method public final onResourcesPopulatedImpl()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/prompt/c;->b:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->stopServices()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ShutdownPrompt"

    return-object v0
.end method
