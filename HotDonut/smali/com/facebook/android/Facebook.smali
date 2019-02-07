.class public Lcom/facebook/android/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/Facebook$DialogListener;,
        Lcom/facebook/android/Facebook$ServiceListener;,
        Lcom/facebook/android/Facebook$SetterTokenCache;,
        Lcom/facebook/android/Facebook$TokenRefreshConnectionHandler;,
        Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field public static final FORCE_DIALOG_AUTH:I = -0x1

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private final REFRESH_TOKEN_BARRIER:J

.field private accessExpiresMillisecondsAfterEpoch:J

.field private accessToken:Ljava/lang/String;

.field private lastAccessUpdateMillisecondsAfterEpoch:J

.field private final lock:Ljava/lang/Object;

.field private mAppId:Ljava/lang/String;

.field private pendingAuthorizationActivity:Landroid/app/Activity;

.field private pendingAuthorizationPermissions:[Ljava/lang/String;

.field private pendingOpeningSession:Lcom/facebook/Session;

.field private volatile session:Lcom/facebook/Session;

.field private sessionInvalidated:Z

.field private shouldAutoPublishInstall:Z

.field private tokenCache:Lcom/facebook/android/Facebook$SetterTokenCache;

.field private volatile userSetSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/facebook/android/Facebook;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/facebook/android/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    .line 73
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 74
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    .line 79
    iput-wide v1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    .line 80
    iput-wide v1, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    .line 94
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/facebook/android/Facebook;->REFRESH_TOKEN_BARRIER:J

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->shouldAutoPublishInstall:Z

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/android/Facebook;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/android/Facebook;)Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/android/Facebook;J)V
    .locals 0

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/android/Facebook;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/android/Facebook;->onSessionCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/android/Facebook;)J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/facebook/android/Facebook;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4([Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1122
    invoke-static {p0}, Lcom/facebook/android/Facebook;->stringList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/android/Facebook;)J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/facebook/android/Facebook;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/android/Facebook;J)V
    .locals 0

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    return-void
.end method

.method static synthetic access$8(Ljava/util/List;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    invoke-static {p0}, Lcom/facebook/android/Facebook;->stringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    return-void
.end method

.method private authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "activityCode"    # I
    .param p4, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p5, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    const/4 v3, 0x0

    .line 278
    const-string v2, "authorize"

    invoke-direct {p0, v2}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 279
    new-instance v2, Lcom/facebook/Session$Builder;

    invoke-direct {v2, p1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    iget-object v4, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v2

    .line 281
    invoke-direct {p0}, Lcom/facebook/android/Facebook;->getTokenCache()Lcom/facebook/TokenCache;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/Session$Builder;->setTokenCache(Lcom/facebook/TokenCache;)Lcom/facebook/Session$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getShouldAutoPublishInstall()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/facebook/Session$Builder;->setShouldAutoPublishInstall(Z)Lcom/facebook/Session$Builder;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    .line 279
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    .line 284
    iput-object p1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    .line 285
    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    .line 287
    new-instance v0, Lcom/facebook/android/Facebook$1;

    invoke-direct {v0, p0, p5}, Lcom/facebook/android/Facebook$1;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 295
    .local v0, "callback":Lcom/facebook/Session$StatusCallback;
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v2, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 296
    invoke-virtual {v2, v0}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    .line 297
    invoke-virtual {v2, p4}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    .line 298
    invoke-virtual {v2, p3}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v2

    .line 299
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 300
    .local v1, "openRequest":Lcom/facebook/Session$OpenRequest;
    iget-object v4, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    iget-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v4, v1, v2}, Lcom/facebook/android/Facebook;->openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V

    .line 301
    return-void

    .line 285
    .end local v0    # "callback":Lcom/facebook/Session$StatusCallback;
    .end local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    goto :goto_0

    .restart local v0    # "callback":Lcom/facebook/Session$StatusCallback;
    .restart local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_1
    move v2, v3

    .line 300
    goto :goto_1
.end method

.method private checkUserSession(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 884
    const-string v1, "Cannot call %s after setSession has been called."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_0
    return-void
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1172
    invoke-static {p0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenCache()Lcom/facebook/TokenCache;
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCache;

    if-nez v0, :cond_0

    .line 1105
    new-instance v0, Lcom/facebook/android/Facebook$SetterTokenCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/android/Facebook$SetterTokenCache;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$SetterTokenCache;)V

    iput-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCache;

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/facebook/android/Facebook;->tokenCache:Lcom/facebook/android/Facebook$SetterTokenCache;

    return-object v0
.end method

.method private onSessionCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .param p1, "callbackSession"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/facebook/Session;->getAuthorizationBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 316
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-ne p2, v3, :cond_3

    .line 317
    const/4 v2, 0x0

    .line 319
    .local v2, "sessionToClose":Lcom/facebook/Session;
    iget-object v4, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    if-eq p1, v3, :cond_0

    .line 321
    iget-object v2, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 322
    iput-object p1, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 323
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 319
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v2}, Lcom/facebook/Session;->close()V

    .line 331
    :cond_1
    invoke-interface {p4, v1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 347
    .end local v2    # "sessionToClose":Lcom/facebook/Session;
    :cond_2
    :goto_0
    return-void

    .line 319
    .restart local v2    # "sessionToClose":Lcom/facebook/Session;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 332
    .end local v2    # "sessionToClose":Lcom/facebook/Session;
    :cond_3
    if-eqz p3, :cond_2

    .line 333
    instance-of v3, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_4

    .line 334
    invoke-interface {p4}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 335
    :cond_4
    instance-of v3, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 336
    const-string v3, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 337
    const-string v3, "com.facebook.sdk.FailingUrl"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    new-instance v0, Lcom/facebook/android/DialogError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 339
    const-string v4, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 340
    const-string v5, "com.facebook.sdk.FailingUrl"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    .local v0, "error":Lcom/facebook/android/DialogError;
    invoke-interface {p4, v0}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    goto :goto_0

    .line 343
    .end local v0    # "error":Lcom/facebook/android/DialogError;
    :cond_5
    new-instance v0, Lcom/facebook/android/FacebookError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "error":Lcom/facebook/android/FacebookError;
    invoke-interface {p4, v0}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    goto :goto_0
.end method

.method private openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "openRequest"    # Lcom/facebook/Session$OpenRequest;
    .param p3, "isPublish"    # Z

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/facebook/Session$OpenRequest;->suppressLoginActivityVerification(Z)V

    .line 305
    if-eqz p3, :cond_0

    .line 306
    invoke-virtual {p1, p2}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method private static stringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 1113
    .local v0, "array":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 1119
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 1115
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static stringList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    if-eqz p0, :cond_0

    .line 1124
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1126
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 389
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return v3

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 384
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v2, v5, v4

    .line 385
    .local v2, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    const/4 v3, 0x1

    goto :goto_1

    .line 384
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 360
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/facebook/android/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const/16 v3, 0x7f99

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 124
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "activityCode"    # I
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    if-ltz p3, :cond_0

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .local v4, "behavior":Lcom/facebook/SessionLoginBehavior;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 208
    return-void

    .line 205
    .end local v4    # "behavior":Lcom/facebook/SessionLoginBehavior;
    :cond_0
    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    goto :goto_0
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    const/16 v3, 0x7f99

    sget-object v4, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/SessionLoginBehavior;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 136
    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 410
    const-string v1, "authorizeCallback"

    invoke-direct {p0, v1}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    .line 412
    .local v0, "pending":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingOpeningSession:Lcom/facebook/Session;

    .line 415
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    .line 416
    iput-object v2, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    .line 419
    :cond_0
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/facebook/android/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v2, "redirect_uri"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v2, "oauth"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    const-string v2, "type"

    const-string v3, "user_agent"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/facebook/android/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "url":Ljava/lang/String;
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 847
    const-string v2, "Error"

    const-string v3, "Application requires permission to access the Internet"

    invoke-static {p1, v2, v3}, Lcom/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_1
    return-void

    .line 839
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/facebook/android/FbDialog;

    invoke-direct {v2, p1, v1, p4}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {v2}, Lcom/facebook/android/FbDialog;->show()V

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 810
    return-void
.end method

.method public extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceListener"    # Lcom/facebook/android/Facebook$ServiceListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    const-string v1, "extendAccessToken"

    invoke-direct {p0, v1}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-direct {p0, p1, v0}, Lcom/facebook/android/Facebook;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    const/4 v1, 0x0

    .line 456
    :goto_0
    return v1

    :cond_0
    new-instance v1, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/android/Facebook$TokenRefreshServiceConnection;-><init>(Lcom/facebook/android/Facebook;Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)V

    .line 457
    const/4 v2, 0x1

    .line 456
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceListener"    # Lcom/facebook/android/Facebook$ServiceListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 470
    const-string v0, "extendAccessTokenIfNeeded"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/facebook/android/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/facebook/android/Facebook$ServiceListener;)Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessExpires()J
    .locals 3

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 983
    .local v0, "s":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 986
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 968
    .local v0, "s":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 971
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessUpdate()J
    .locals 2

    .prologue
    .line 997
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 895
    :cond_0
    const/4 v0, 0x0

    .line 896
    .local v0, "cachedToken":Ljava/lang/String;
    const/4 v3, 0x0

    .line 898
    .local v3, "oldSession":Lcom/facebook/Session;
    iget-object v10, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 899
    :try_start_0
    iget-object v7, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    if-eqz v7, :cond_1

    .line 900
    iget-object v6, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    monitor-exit v10

    .line 953
    :goto_0
    return-object v6

    .line 902
    :cond_1
    iget-object v7, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    if-nez v7, :cond_3

    .line 903
    :cond_2
    iget-object v6, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    monitor-exit v10

    goto :goto_0

    .line 898
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 906
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    .line 907
    iget-object v3, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 898
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    if-nez v0, :cond_4

    move-object v6, v9

    .line 911
    goto :goto_0

    .line 918
    :cond_4
    if-eqz v3, :cond_5

    .line 919
    invoke-virtual {v3}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v5

    .line 926
    .local v5, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v7, Lcom/facebook/Session$Builder;

    iget-object v10, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-direct {v7, v10}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    iget-object v10, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v7

    .line 928
    invoke-direct {p0}, Lcom/facebook/android/Facebook;->getTokenCache()Lcom/facebook/TokenCache;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/facebook/Session$Builder;->setTokenCache(Lcom/facebook/TokenCache;)Lcom/facebook/Session$Builder;

    move-result-object v7

    .line 929
    invoke-virtual {v7}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    .line 930
    .local v2, "newSession":Lcom/facebook/Session;
    invoke-virtual {v2}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    sget-object v10, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-eq v7, v10, :cond_7

    move-object v6, v9

    .line 931
    goto :goto_0

    .line 920
    .end local v2    # "newSession":Lcom/facebook/Session;
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v7, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 921
    iget-object v7, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 923
    .end local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .restart local v5    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 934
    .restart local v2    # "newSession":Lcom/facebook/Session;
    :cond_7
    new-instance v7, Lcom/facebook/Session$OpenRequest;

    iget-object v10, p0, Lcom/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-direct {v7, v10}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v7, v5}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v4

    .line 935
    .local v4, "openRequest":Lcom/facebook/Session$OpenRequest;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    move v7, v8

    :goto_2
    invoke-direct {p0, v2, v4, v7}, Lcom/facebook/android/Facebook;->openSession(Lcom/facebook/Session;Lcom/facebook/Session$OpenRequest;Z)V

    .line 937
    const/4 v1, 0x0

    .line 938
    .local v1, "invalidatedSession":Lcom/facebook/Session;
    const/4 v6, 0x0

    .line 940
    .local v6, "returnSession":Lcom/facebook/Session;
    iget-object v10, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 941
    :try_start_2
    iget-boolean v7, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    if-nez v7, :cond_9

    .line 942
    :cond_8
    iget-object v1, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 943
    iput-object v2, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    move-object v6, v2

    .line 944
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 940
    :cond_9
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 948
    if-eqz v1, :cond_a

    .line 949
    invoke-virtual {v1}, Lcom/facebook/Session;->close()V

    .line 952
    :cond_a
    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 935
    .end local v1    # "invalidatedSession":Lcom/facebook/Session;
    .end local v6    # "returnSession":Lcom/facebook/Session;
    :cond_b
    const/4 v7, 0x1

    goto :goto_2

    .line 940
    .restart local v1    # "invalidatedSession":Lcom/facebook/Session;
    .restart local v6    # "returnSession":Lcom/facebook/Session;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public getShouldAutoPublishInstall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/facebook/android/Facebook;->shouldAutoPublishInstall:Z

    return v0
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 860
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 859
    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/facebook/android/Facebook;->logoutImpl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logoutImpl(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    const-string v5, "logout"

    invoke-direct {p0, v5}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "method"

    const-string v6, "auth.expireSession"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v0}, Lcom/facebook/android/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "response":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 639
    .local v1, "currentTimeMillis":J
    const/4 v4, 0x0

    .line 641
    .local v4, "sessionToClose":Lcom/facebook/Session;
    iget-object v6, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 642
    :try_start_0
    iget-object v4, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 644
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/facebook/android/Facebook;->session:Lcom/facebook/Session;

    .line 645
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    .line 646
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    .line 647
    iput-wide v1, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    .line 648
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 641
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    if-eqz v4, :cond_0

    .line 652
    invoke-virtual {v4}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 655
    :cond_0
    return-object v3

    .line 641
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public publishInstall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/Settings;->publishInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 689
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 746
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "url":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/facebook/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 789
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 4
    .param p1, "timestampInMsec"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1050
    const-string v0, "setAccessExpires"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 1051
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 1051
    monitor-exit v1

    .line 1056
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 8
    .param p1, "expiresInSecsFromNow"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1069
    const-string v2, "setAccessExpiresIn"

    invoke-direct {p0, v2}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 1070
    if-eqz p1, :cond_0

    .line 1071
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    .line 1073
    .local v0, "expires":J
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 1075
    .end local v0    # "expires":J
    :cond_0
    return-void

    .line 1071
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1072
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1031
    const-string v0, "setAccessToken"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1033
    :try_start_0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 1032
    monitor-exit v1

    .line 1037
    return-void

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1094
    const-string v0, "setAppId"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1096
    :try_start_0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/android/Facebook;->sessionInvalidated:Z

    .line 1095
    monitor-exit v1

    .line 1099
    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->userSetSession:Lcom/facebook/Session;

    .line 876
    monitor-exit v1

    .line 879
    return-void

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShouldAutoPublishInstall(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    iput-boolean p1, p0, Lcom/facebook/android/Facebook;->shouldAutoPublishInstall:Z

    .line 1199
    return-void
.end method

.method public setTokenFromCache(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "accessExpires"    # J
    .param p4, "lastAccessUpdate"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1013
    const-string v0, "setTokenFromCache"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    iput-object p1, p0, Lcom/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    .line 1016
    iput-wide p2, p0, Lcom/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    .line 1017
    iput-wide p4, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    .line 1014
    monitor-exit v1

    .line 1019
    return-void

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldExtendAccessToken()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    const-string v0, "shouldExtendAccessToken"

    invoke-direct {p0, v0}, Lcom/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 488
    goto :goto_0
.end method
