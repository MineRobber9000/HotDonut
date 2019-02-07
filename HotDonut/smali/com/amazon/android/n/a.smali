.class public final enum Lcom/amazon/android/n/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/amazon/android/n/a;

.field public static final enum b:Lcom/amazon/android/n/a;

.field public static final enum c:Lcom/amazon/android/n/a;

.field private static final synthetic d:[Lcom/amazon/android/n/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/android/n/a;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/n/a;->a:Lcom/amazon/android/n/a;

    new-instance v0, Lcom/amazon/android/n/a;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/android/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    new-instance v0, Lcom/amazon/android/n/a;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v4}, Lcom/amazon/android/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/n/a;->c:Lcom/amazon/android/n/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/android/n/a;

    sget-object v1, Lcom/amazon/android/n/a;->a:Lcom/amazon/android/n/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/android/n/a;->b:Lcom/amazon/android/n/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/android/n/a;->c:Lcom/amazon/android/n/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/android/n/a;->d:[Lcom/amazon/android/n/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/n/a;
    .locals 1

    const-class v0, Lcom/amazon/android/n/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/n/a;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/n/a;
    .locals 1

    sget-object v0, Lcom/amazon/android/n/a;->d:[Lcom/amazon/android/n/a;

    invoke-virtual {v0}, [Lcom/amazon/android/n/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/n/a;

    return-object v0
.end method
