.class public Lcom/amazon/android/framework/util/KiwiLogger;
.super Ljava/lang/Object;


# static fields
.field public static ERROR_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "Kiwi"

.field private static TEST_ON:Z

.field public static TRACE_ON:Z


# instance fields
.field private componentName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TEST_ON:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/framework/util/KiwiLogger;->componentName:Ljava/lang/String;

    return-void
.end method

.method public static enableTest()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TEST_ON:Z

    return-void
.end method

.method private getComponentMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/android/framework/util/KiwiLogger;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTestEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TEST_ON:Z

    return v0
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "Kiwi"

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->getComponentMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "Kiwi"

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->getComponentMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TEST_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "Kiwi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->getComponentMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "Kiwi"

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->getComponentMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "Kiwi"

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/util/KiwiLogger;->getComponentMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
