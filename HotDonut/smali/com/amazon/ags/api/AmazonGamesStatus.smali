.class public final enum Lcom/amazon/ags/api/AmazonGamesStatus;
.super Ljava/lang/Enum;
.source "AmazonGamesStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/ags/api/AmazonGamesStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum CANNOT_AUTHORIZE:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum INVALID_SESSION:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum NOT_AUTHENTICATED:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum NOT_AUTHORIZED:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum SERVICE_DISCONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

.field public static final enum SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 25
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "SERVICE_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 30
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "SERVICE_DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_DISCONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 35
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "CANNOT_BIND"

    invoke-direct {v0, v1, v6}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 40
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "INVALID_SESSION"

    invoke-direct {v0, v1, v7}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->INVALID_SESSION:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 46
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "CANNOT_AUTHORIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 52
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "NOT_AUTHORIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 57
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "SERVICE_NOT_OPTED_IN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 62
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    const-string v1, "NOT_AUTHENTICATED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHENTICATED:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/ags/api/AmazonGamesStatus;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_DISCONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->INVALID_SESSION:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHENTICATED:Lcom/amazon/ags/api/AmazonGamesStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->$VALUES:[Lcom/amazon/ags/api/AmazonGamesStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ags/api/AmazonGamesStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazon/ags/api/AmazonGamesStatus;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->$VALUES:[Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v0}, [Lcom/amazon/ags/api/AmazonGamesStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ags/api/AmazonGamesStatus;

    return-object v0
.end method
