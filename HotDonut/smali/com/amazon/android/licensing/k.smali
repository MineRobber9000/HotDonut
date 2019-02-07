.class public final enum Lcom/amazon/android/licensing/k;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazon/android/k/c;


# static fields
.field public static final enum a:Lcom/amazon/android/licensing/k;

.field public static final enum b:Lcom/amazon/android/licensing/k;

.field public static final enum c:Lcom/amazon/android/licensing/k;

.field public static final enum d:Lcom/amazon/android/licensing/k;

.field public static final enum e:Lcom/amazon/android/licensing/k;

.field private static final synthetic f:[Lcom/amazon/android/licensing/k;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/android/licensing/k;

    const-string v1, "EXPIRATION"

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/licensing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/licensing/k;->a:Lcom/amazon/android/licensing/k;

    new-instance v0, Lcom/amazon/android/licensing/k;

    const-string v1, "CUSTOMER_ID"

    invoke-direct {v0, v1, v3}, Lcom/amazon/android/licensing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/licensing/k;->b:Lcom/amazon/android/licensing/k;

    new-instance v0, Lcom/amazon/android/licensing/k;

    const-string v1, "DEVICE_ID"

    invoke-direct {v0, v1, v4}, Lcom/amazon/android/licensing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/licensing/k;->c:Lcom/amazon/android/licensing/k;

    new-instance v0, Lcom/amazon/android/licensing/k;

    const-string v1, "PACKAGE_NAME"

    invoke-direct {v0, v1, v5}, Lcom/amazon/android/licensing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/licensing/k;->d:Lcom/amazon/android/licensing/k;

    new-instance v0, Lcom/amazon/android/licensing/k;

    const-string v1, "CHECKSUM"

    invoke-direct {v0, v1, v6}, Lcom/amazon/android/licensing/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/licensing/k;->e:Lcom/amazon/android/licensing/k;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/android/licensing/k;

    sget-object v1, Lcom/amazon/android/licensing/k;->a:Lcom/amazon/android/licensing/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/android/licensing/k;->b:Lcom/amazon/android/licensing/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/android/licensing/k;->c:Lcom/amazon/android/licensing/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/android/licensing/k;->d:Lcom/amazon/android/licensing/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/android/licensing/k;->e:Lcom/amazon/android/licensing/k;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/android/licensing/k;->f:[Lcom/amazon/android/licensing/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/licensing/k;
    .locals 1

    const-class v0, Lcom/amazon/android/licensing/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/licensing/k;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/licensing/k;
    .locals 1

    sget-object v0, Lcom/amazon/android/licensing/k;->f:[Lcom/amazon/android/licensing/k;

    invoke-virtual {v0}, [Lcom/amazon/android/licensing/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/licensing/k;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/android/licensing/k;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
