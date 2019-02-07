.class public Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;
.super Ljava/lang/Object;
.source "ProfilesNativeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalPlayerProfile(IJ)V
    .locals 2
    .param p0, "developerTag"    # I
    .param p1, "callbackPointer"    # J

    .prologue
    .line 46
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerProfile - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/profiles/ProfilesClient;->getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    new-instance v1, Lcom/amazon/ags/jni/profiles/RequestLocalPlayerProfileJniResponseHandler;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/ags/jni/profiles/RequestLocalPlayerProfileJniResponseHandler;-><init>(IJ)V

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    goto :goto_0
.end method

.method public static getLocalPlayerProfileHandle(I)Lcom/amazon/ags/api/AGResponseHandle;
    .locals 4
    .param p0, "developerTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/ags/api/AGResponseHandle",
            "<",
            "Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalPlayerProfileHandle - initializeJni was not called beforehand."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/profiles/ProfilesClient;->getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public static initializeNativeHandler(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 1
    .param p0, "amazonGamesClient"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->getProfilesClient()Lcom/amazon/ags/api/profiles/ProfilesClient;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/profiles/ProfilesNativeHandler;->m_ProfilesClient:Lcom/amazon/ags/api/profiles/ProfilesClient;

    .line 43
    return-void
.end method
