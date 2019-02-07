.class public Lcom/amazon/ags/client/profiles/ProfilesClientImpl;
.super Ljava/lang/Object;
.source "ProfilesClientImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/profiles/ProfilesClient;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "PROFILES"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROFILES_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/profiles/ProfilesService;)V
    .locals 0
    .param p1, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p2, "profilesService"    # Lcom/amazon/ags/client/profiles/ProfilesService;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 37
    iput-object p2, p0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    .line 38
    return-void
.end method


# virtual methods
.method public final varargs getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-direct {v0, p1}, Lcom/amazon/ags/client/GCResponseHandleImpl;-><init>([Ljava/lang/Object;)V

    .line 45
    .local v0, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;>;"
    iget-object v1, p0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v1}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sget-object v1, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Service not bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;

    const/16 v2, 0x16

    sget-object v3, Lcom/amazon/ags/api/ErrorCode;->SERVICE_NOT_READY:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ags/client/profiles/RequestPlayerProfileResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    invoke-interface {v1, v0}, Lcom/amazon/ags/client/profiles/ProfilesService;->requestLocalPlayerProfile(Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    goto :goto_0
.end method
