.class public final enum Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

.field public static final enum BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

.field public static final enum COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

.field public static final enum FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    const-string v1, "COMMAND"

    invoke-direct {v0, v1, v3}, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    new-instance v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v4}, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->FOREGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->COMMAND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->BACKGROUND:Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->$VALUES:[Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;
    .locals 1

    const-class v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;
    .locals 1

    sget-object v0, Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->$VALUES:[Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    invoke-virtual {v0}, [Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/framework/task/pipeline/TaskPipelineId;

    return-object v0
.end method
