.class public Lcom/amazon/ags/api/profiles/AGProfiles;
.super Ljava/lang/Object;
.source "AGProfiles.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static varargs getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 3
    .param p0, "userData"    # [Ljava/lang/Object;
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
    .line 49
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 50
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getProfilesClient()Lcom/amazon/ags/api/profiles/ProfilesClient;

    move-result-object v1

    .line 52
    .local v1, "profilesClient":Lcom/amazon/ags/api/profiles/ProfilesClient;
    invoke-interface {v1, p0}, Lcom/amazon/ags/api/profiles/ProfilesClient;->getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    return-object v2
.end method

.method public static varargs getLocalPlayerProfile(Lcom/amazon/ags/api/AGResponseCallback;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "userData"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/api/AGResponseCallback",
            "<",
            "Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "callback":Lcom/amazon/ags/api/AGResponseCallback;, "Lcom/amazon/ags/api/AGResponseCallback<Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;>;"
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->getInstance()Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    .line 35
    .local v0, "client":Lcom/amazon/ags/api/AmazonGames;
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getProfilesClient()Lcom/amazon/ags/api/profiles/ProfilesClient;

    move-result-object v1

    .line 37
    .local v1, "profilesClient":Lcom/amazon/ags/api/profiles/ProfilesClient;
    invoke-interface {v1, p1}, Lcom/amazon/ags/api/profiles/ProfilesClient;->getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 38
    return-void
.end method
