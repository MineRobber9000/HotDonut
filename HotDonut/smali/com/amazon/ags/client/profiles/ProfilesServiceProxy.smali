.class public Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;
.super Ljava/lang/Object;
.source "ProfilesServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/client/profiles/ProfilesService;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "PROFILES"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final agClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private final amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final apiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROFILES_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "agClient"    # Lcom/amazon/ags/api/AmazonGamesClient;
    .param p2, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p3, "apiHandler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 41
    iput-object p1, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    .line 42
    iput-object p3, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->apiHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->createRequestBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;)Lcom/amazon/ags/client/AmazonGamesService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    return-object v0
.end method

.method private createRequestBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method


# virtual methods
.method public requestLocalPlayerProfile(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;>;"
    sget-object v2, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Request Local Player Profile called Asynchronously with handle."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v0, Landroid/os/Message;->what:I

    .line 52
    new-instance v1, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;

    iget-object v2, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->agClient:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "replyMessengerFactory":Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;, "Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory<Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;>;"
    iget-object v2, p0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;->apiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy$1;-><init>(Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;Landroid/os/Message;Lcom/amazon/ags/client/profiles/ProfilesReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
