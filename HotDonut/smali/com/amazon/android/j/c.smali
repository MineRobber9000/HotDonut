.class public final enum Lcom/amazon/android/j/c;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazon/android/n/f;


# static fields
.field public static final enum a:Lcom/amazon/android/j/c;

.field public static final enum b:Lcom/amazon/android/j/c;

.field public static final enum c:Lcom/amazon/android/j/c;

.field public static final enum d:Lcom/amazon/android/j/c;

.field public static final enum e:Lcom/amazon/android/j/c;

.field public static final enum f:Lcom/amazon/android/j/c;

.field private static final synthetic g:[Lcom/amazon/android/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->a:Lcom/amazon/android/j/c;

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "DESTROY"

    invoke-direct {v0, v1, v4}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->b:Lcom/amazon/android/j/c;

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->c:Lcom/amazon/android/j/c;

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->d:Lcom/amazon/android/j/c;

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->e:Lcom/amazon/android/j/c;

    new-instance v0, Lcom/amazon/android/j/c;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/j/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/j/c;->f:Lcom/amazon/android/j/c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/android/j/c;

    sget-object v1, Lcom/amazon/android/j/c;->a:Lcom/amazon/android/j/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/android/j/c;->b:Lcom/amazon/android/j/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/android/j/c;->c:Lcom/amazon/android/j/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/android/j/c;->d:Lcom/amazon/android/j/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/android/j/c;->e:Lcom/amazon/android/j/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/android/j/c;->f:Lcom/amazon/android/j/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/android/j/c;->g:[Lcom/amazon/android/j/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/j/c;
    .locals 1

    const-class v0, Lcom/amazon/android/j/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/j/c;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/j/c;
    .locals 1

    sget-object v0, Lcom/amazon/android/j/c;->g:[Lcom/amazon/android/j/c;

    invoke-virtual {v0}, [Lcom/amazon/android/j/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/j/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVITY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/j/c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
