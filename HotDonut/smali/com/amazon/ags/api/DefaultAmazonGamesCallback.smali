.class public Lcom/amazon/ags/api/DefaultAmazonGamesCallback;
.super Ljava/lang/Object;
.source "DefaultAmazonGamesCallback.java"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGamesCallback;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGC"

.field private static final SERVICE_CONNECTED:Ljava/lang/String; = "Client Ready"

.field private static final SERVICE_DISCONNECTED:Ljava/lang/String; = "Client not Ready: "

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private updateStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-void
.end method


# virtual methods
.method public onServiceNotReady(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 2
    .param p1, "reason"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client not Ready: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->updateStatus(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onServiceReady()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "Client Ready"

    invoke-direct {p0, v0}, Lcom/amazon/ags/api/DefaultAmazonGamesCallback;->updateStatus(Ljava/lang/String;)V

    .line 37
    return-void
.end method
