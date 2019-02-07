.class public Lcom/facebook/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest;,
        Lcom/facebook/Session$AuthorizationType;,
        Lcom/facebook/Session$AutoPublishAsyncTask;,
        Lcom/facebook/Session$Builder;,
        Lcom/facebook/Session$OpenRequest;,
        Lcom/facebook/Session$ReauthorizeRequest;,
        Lcom/facebook/Session$SerializationProxyV1;,
        Lcom/facebook/Session$StartActivityDelegate;,
        Lcom/facebook/Session$StatusCallback;,
        Lcom/facebook/Session$TokenRefreshRequest;,
        Lcom/facebook/Session$TokenRefreshRequestHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionState:[I = null

.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field public static final APPLICATION_ID_PROPERTY:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field public static final TAG:Ljava/lang/String;

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;

.field private static staticLock:Ljava/lang/Object;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private lock:Ljava/lang/Object;

.field private pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private shouldAutoPublish:Z

.field private state:Lcom/facebook/SessionState;

.field private tokenCache:Lcom/facebook/TokenCache;

.field private tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionState()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionState;->values()[Lcom/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/facebook/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Session;->staticLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/facebook/Session$1;

    invoke-direct {v0}, Lcom/facebook/Session$1;-><init>()V

    sput-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCache;Z)V

    .line 220
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCache;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "tokenCache"    # Lcom/facebook/TokenCache;
    .param p4, "shouldAutoPublish"    # Z

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 147
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    .line 157
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 225
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 226
    invoke-static {p1}, Lcom/facebook/Session;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 229
    :cond_0
    const-string v3, "applicationId"

    invoke-static {p2, v3}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 233
    if-nez p3, :cond_1

    .line 234
    new-instance p3, Lcom/facebook/SharedPreferencesTokenCache;

    .end local p3    # "tokenCache":Lcom/facebook/TokenCache;
    sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {p3, v3}, Lcom/facebook/SharedPreferencesTokenCache;-><init>(Landroid/content/Context;)V

    .line 237
    .restart local p3    # "tokenCache":Lcom/facebook/TokenCache;
    :cond_1
    iput-object p2, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    .line 239
    sget-object v3, Lcom/facebook/SessionState;->CREATED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 240
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 242
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 243
    iput-boolean p4, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    .line 245
    invoke-virtual {p3}, Lcom/facebook/TokenCache;->load()Landroid/os/Bundle;

    move-result-object v2

    .line 246
    .local v2, "tokenState":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/facebook/TokenCache;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    const-string v3, "com.facebook.TokenCache.ExpirationDate"

    invoke-static {v2, v3}, Lcom/facebook/TokenCache;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 248
    .local v0, "cachedExpirationDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 250
    .local v1, "now":Ljava/util/Date;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/TokenCache;->clear()V

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 263
    .end local v0    # "cachedExpirationDate":Ljava/util/Date;
    .end local v1    # "now":Ljava/util/Date;
    :goto_0
    return-void

    .line 257
    .restart local v0    # "cachedExpirationDate":Ljava/util/Date;
    .restart local v1    # "now":Ljava/util/Date;
    :cond_3
    invoke-static {v2}, Lcom/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 258
    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    iput-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0

    .line 261
    .end local v0    # "cachedExpirationDate":Ljava/util/Date;
    .end local v1    # "now":Ljava/util/Date;
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 4
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "tokenInfo"    # Lcom/facebook/AccessToken;
    .param p4, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;
    .param p5, "shouldAutoPublish"    # Z
    .param p6, "pendingRequest"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 199
    iput-object p1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 201
    iput-object p3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 202
    iput-object p4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 203
    iput-boolean p5, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    .line 204
    iput-object p6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    .line 207
    iput-object v3, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 208
    iput-object v3, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct/range {p0 .. p6}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-void
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1344
    invoke-static {p0, p1}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/Session;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateFacebookAppSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/Session;)Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/facebook/Session;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1545
    if-nez p0, :cond_1

    .line 1546
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1548
    :goto_0
    return v0

    .line 1546
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1548
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private autoPublishAsync()V
    .locals 4

    .prologue
    .line 1619
    const/4 v1, 0x0

    .line 1620
    .local v1, "asyncTask":Lcom/facebook/Session$AutoPublishAsyncTask;
    monitor-enter p0

    .line 1621
    :try_start_0
    iget-object v3, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    if-eqz v3, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    .line 1626
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1627
    new-instance v2, Lcom/facebook/Session$AutoPublishAsyncTask;

    sget-object v3, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {v2, p0, v0, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;

    .end local v1    # "asyncTask":Lcom/facebook/Session$AutoPublishAsyncTask;
    .local v2, "asyncTask":Lcom/facebook/Session$AutoPublishAsyncTask;
    move-object v1, v2

    .line 1620
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v2    # "asyncTask":Lcom/facebook/Session$AutoPublishAsyncTask;
    .restart local v1    # "asyncTask":Lcom/facebook/Session$AutoPublishAsyncTask;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    if-eqz v1, :cond_1

    .line 1633
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/facebook/Session$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1635
    :cond_1
    return-void

    .line 1620
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static final getActiveSession()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 804
    sget-object v1, Lcom/facebook/Session;->staticLock:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_0
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    monitor-exit v1

    return-object v0

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1412
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1413
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 1412
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1414
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1415
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1421
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 1417
    :catch_0
    move-exception v1

    .line 1421
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getStaticContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "currentContext"    # Landroid/content/Context;

    .prologue
    .line 978
    if-eqz p0, :cond_0

    sget-object v1, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 980
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    sput-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    .line 982
    :cond_0
    return-void

    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    move-object v0, p0

    .line 980
    goto :goto_0
.end method

.method private isPublishPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1138
    if-eqz p1, :cond_1

    .line 1139
    const-string v0, "publish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    const-string v0, "manage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    sget-object v0, Lcom/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1138
    goto :goto_0
.end method

.method private open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/Session$AuthorizationType;)V
    .locals 5
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;
    .param p2, "authType"    # Lcom/facebook/Session$AuthorizationType;

    .prologue
    .line 1028
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 1029
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1031
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1032
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v2, :cond_0

    .line 1033
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 1034
    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    .line 1033
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1031
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1036
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1038
    .local v1, "oldState":Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1059
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 1060
    const-string v4, "Session: an attempt was made to open an already opened session."

    .line 1059
    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1040
    :pswitch_0
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .local v0, "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1041
    if-nez p1, :cond_1

    .line 1042
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "openRequest cannot be null when opening a new Session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :cond_1
    iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1062
    :goto_0
    if-eqz p1, :cond_2

    .line 1063
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 1065
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1031
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    sget-object v2, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v2, :cond_3

    .line 1069
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1071
    :cond_3
    return-void

    .line 1047
    .end local v0    # "newState":Lcom/facebook/SessionState;
    :pswitch_1
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1048
    invoke-virtual {p1}, Lcom/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/facebook/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1049
    iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1052
    :cond_4
    iget-object v2, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-nez v2, :cond_5

    .line 1053
    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    .restart local v0    # "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    goto :goto_0

    .line 1055
    .end local v0    # "newState":Lcom/facebook/SessionState;
    :cond_5
    sget-object v0, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    .restart local v0    # "newState":Lcom/facebook/SessionState;
    iput-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1038
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;Z)Lcom/facebook/Session;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "allowLoginUI"    # Z

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "allowLoginUI"    # Z
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 906
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;)Lcom/facebook/Session;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 860
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;Z)Lcom/facebook/Session;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "allowLoginUI"    # Z

    .prologue
    .line 929
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "allowLoginUI"    # Z
    .param p3, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 956
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/facebook/Session$OpenRequest;)Lcom/facebook/Session;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "allowLoginUI"    # Z
    .param p2, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 960
    new-instance v1, Lcom/facebook/Session$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 961
    .local v0, "session":Lcom/facebook/Session;
    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    .line 962
    :cond_0
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 963
    if-eqz p2, :cond_1

    .line 964
    invoke-virtual {v0, p2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 970
    .end local v0    # "session":Lcom/facebook/Session;
    :goto_0
    return-object v0

    .line 966
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->open()V

    goto :goto_0

    .line 970
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 1339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1342
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 729
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reauthorize(Lcom/facebook/Session$ReauthorizeRequest;Lcom/facebook/Session$AuthorizationType;)V
    .locals 3
    .param p1, "reauthorizeRequest"    # Lcom/facebook/Session$ReauthorizeRequest;
    .param p2, "authType"    # Lcom/facebook/Session$AuthorizationType;

    .prologue
    .line 1074
    invoke-direct {p0, p1, p2}, Lcom/facebook/Session;->validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 1075
    invoke-direct {p0, p1}, Lcom/facebook/Session;->validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1076
    if-eqz p1, :cond_1

    .line 1077
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1080
    const-string v2, "Session: an attempt was made to reauthorize a session that has a pending request."

    .line 1079
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1082
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1088
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1089
    const-string v2, "Session: an attempt was made to reauthorize a session that is not currently open."

    .line 1088
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :pswitch_0
    iput-object p1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1077
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    invoke-virtual {p0, p1}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1095
    :cond_1
    return-void

    .line 1082
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resolveIntent(Landroid/content/Intent;Z)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "validateSignature"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1165
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1166
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 1167
    if-eqz p2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/Session;->validateFacebookAppSignature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/facebook/TokenCache;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cache"    # Lcom/facebook/TokenCache;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 769
    if-nez p3, :cond_0

    move-object v3, v4

    .line 794
    :goto_0
    return-object v3

    .line 772
    :cond_0
    const-string v5, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 773
    .local v0, "data":[B
    if-eqz v0, :cond_2

    .line 774
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 776
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 777
    .local v3, "session":Lcom/facebook/Session;
    invoke-static {p0}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 778
    if-eqz p1, :cond_3

    .line 779
    iput-object p1, v3, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    .line 783
    :goto_1
    if-eqz p2, :cond_1

    .line 784
    invoke-virtual {v3, p2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 786
    :cond_1
    const-string v5, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v3, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 788
    .end local v3    # "session":Lcom/facebook/Session;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v6, "Unable to restore session"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    :cond_2
    :goto_2
    move-object v3, v4

    .line 794
    goto :goto_0

    .line 781
    .restart local v2    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "session":Lcom/facebook/Session;
    :cond_3
    :try_start_1
    new-instance v5, Lcom/facebook/SharedPreferencesTokenCache;

    invoke-direct {v5, p0}, Lcom/facebook/SharedPreferencesTokenCache;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 790
    .end local v3    # "session":Lcom/facebook/Session;
    :catch_1
    move-exception v1

    .line 791
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    const-string v6, "Unable to restore session."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1345
    if-eqz p0, :cond_0

    .line 1346
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1350
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 739
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 740
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 742
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    const-string v2, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 747
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 749
    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void

    .line 743
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Unable to save session."

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final setActiveSession(Lcom/facebook/Session;)V
    .locals 3
    .param p0, "session"    # Lcom/facebook/Session;

    .prologue
    .line 826
    sget-object v2, Lcom/facebook/Session;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 827
    :try_start_0
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-eq p0, v1, :cond_2

    .line 828
    sget-object v0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 830
    .local v0, "oldSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 834
    :cond_0
    sput-object p0, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    .line 836
    if-eqz v0, :cond_1

    .line 837
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 840
    :cond_1
    if-eqz p0, :cond_2

    .line 841
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 826
    .end local v0    # "oldSession":Lcom/facebook/Session;
    :cond_2
    monitor-exit v2

    .line 849
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryActivityAuth(Landroid/content/Intent;Lcom/facebook/Session$AuthorizationRequest;Z)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "request"    # Lcom/facebook/Session$AuthorizationRequest;
    .param p3, "validateSignature"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1146
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    invoke-virtual {p2}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    const-string v2, "scope"

    const-string v3, ","

    invoke-virtual {p2}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1161
    :goto_0
    return v1

    .line 1157
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    const/4 v1, 0x1

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method private tryDialogAuth(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 14
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1174
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1176
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/facebook/LoginActivity;

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1177
    invoke-direct {p0, v2, p1, v9}, Lcom/facebook/Session;->tryActivityAuth(Landroid/content/Intent;Lcom/facebook/Session$AuthorizationRequest;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1242
    :goto_0
    return v8

    .line 1181
    :cond_0
    sget-object v10, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 1182
    const-string v11, "Please add %s as an activity to your AndroidManifest.xml"

    new-array v12, v8, [Ljava/lang/Object;

    .line 1183
    const-class v13, Lcom/facebook/LoginActivity;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 1182
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1181
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "android.permission.INTERNET"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 1186
    .local v5, "permissionCheck":I
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;

    move-result-object v10

    invoke-interface {v10}, Lcom/facebook/Session$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 1187
    .local v0, "activityContext":Landroid/app/Activity;
    if-eqz v5, :cond_1

    .line 1188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "AndroidManifest Error"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1190
    const-string v8, "WebView login requires INTERNET permission"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    move v8, v9

    .line 1192
    goto :goto_0

    .line 1195
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1196
    .local v4, "parameters":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1197
    const-string v9, ","

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 1198
    .local v6, "scope":Ljava/lang/String;
    const-string v9, "scope"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .end local v6    # "scope":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 1204
    new-instance v3, Lcom/facebook/Session$2;

    invoke-direct {v3, p0, p1}, Lcom/facebook/Session$2;-><init>(Lcom/facebook/Session;Lcom/facebook/Session$AuthorizationRequest;)V

    .line 1234
    .local v3, "listener":Lcom/facebook/android/Facebook$DialogListener;
    const-string v9, "display"

    const-string v10, "touch"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v9, "redirect_uri"

    const-string v10, "fbconnect://success"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v9, "type"

    const-string v10, "user_agent"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v9, "client_id"

    iget-object v10, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v9, "m.facebook.com"

    const-string v10, "dialog/oauth"

    invoke-static {v9, v10, v4}, Lcom/facebook/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v7

    .line 1240
    .local v7, "uri":Landroid/net/Uri;
    new-instance v9, Lcom/facebook/android/FbDialog;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10, v3}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {v9}, Lcom/facebook/android/FbDialog;->show()V

    goto/16 :goto_0
.end method

.method private tryKatanaProxyAuth(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 3
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 1246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1248
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/Session;->tryActivityAuth(Landroid/content/Intent;Lcom/facebook/Session$AuthorizationRequest;Z)Z

    move-result v1

    return v1
.end method

.method private validateFacebookAppSignature(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1253
    const/4 v1, 0x0

    .line 1255
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    sget-object v4, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1256
    const/16 v5, 0x40

    .line 1255
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1261
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 1267
    :goto_1
    return v3

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 1261
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    aget-object v2, v5, v4

    .line 1262
    .local v2, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1263
    const/4 v3, 0x1

    goto :goto_1

    .line 1261
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private validateLoginBehavior(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    const/4 v5, 0x0

    .line 1098
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/facebook/Session$AuthorizationRequest;->access$3(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1099
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionLoginBehavior;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/SessionLoginBehavior;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1102
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1103
    invoke-direct {p0, v0, v5}, Lcom/facebook/Session;->resolveIntent(Landroid/content/Intent;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    new-instance v1, Lcom/facebook/FacebookException;

    .line 1105
    const-string v2, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1106
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v5, Lcom/facebook/LoginActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1104
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private validatePermissions(Lcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$AuthorizationType;)V
    .locals 7
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;
    .param p2, "authType"    # Lcom/facebook/Session$AuthorizationType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    :cond_0
    sget-object v1, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v1, p2}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1114
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot request publish authorization with no permissions."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1118
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1135
    :cond_3
    return-void

    .line 1118
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1119
    .local v0, "permission":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1120
    sget-object v2, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    new-instance v1, Lcom/facebook/FacebookException;

    .line 1123
    const-string v2, "Cannot pass a publish permission (%s) to a request for read authorization"

    new-array v3, v6, [Ljava/lang/Object;

    .line 1124
    aput-object v0, v3, v5

    .line 1122
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1127
    :cond_5
    sget-object v2, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v2, p2}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1128
    sget-object v2, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    .line 1130
    const-string v3, "Should not pass a read permission (%s) to a request for publish authorization"

    new-array v4, v6, [Ljava/lang/Object;

    .line 1131
    aput-object v0, v4, v5

    .line 1129
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1128
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 723
    new-instance v0, Lcom/facebook/Session$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 724
    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/facebook/Session;->shouldAutoPublish:Z

    iget-object v6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 723
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1014
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 1015
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_0
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

.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/facebook/Session$AuthorizationRequest;

    .prologue
    .line 985
    const/4 v1, 0x0

    .line 987
    .local v1, "started":Z
    invoke-direct {p0}, Lcom/facebook/Session;->autoPublishAsync()V

    .line 989
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->allowKatana()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryKatanaProxyAuth(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    .line 992
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/Session$AuthorizationRequest;->allowWebView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 993
    invoke-direct {p0, p1}, Lcom/facebook/Session;->tryDialogAuth(Lcom/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    .line 996
    :cond_1
    if-nez v1, :cond_2

    .line 997
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 998
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1000
    .local v0, "oldState":Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v4}, Lcom/facebook/SessionState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1006
    sget-object v2, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1007
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "Log in attempt failed."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v4}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 997
    monitor-exit v3

    .line 1011
    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :cond_2
    :goto_0
    return-void

    .line 1003
    .restart local v0    # "oldState":Lcom/facebook/SessionState;
    :pswitch_0
    monitor-exit v3

    goto :goto_0

    .line 997
    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    .prologue
    .line 644
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 647
    .local v0, "oldState":Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 644
    :goto_0
    monitor-exit v2

    .line 663
    return-void

    .line 650
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 651
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    new-instance v3, Lcom/facebook/FacebookException;

    .line 652
    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    goto :goto_0

    .line 644
    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 658
    .restart local v0    # "oldState":Lcom/facebook/SessionState;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 659
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    invoke-virtual {v0}, Lcom/facebook/TokenCache;->clear()V

    .line 673
    :cond_0
    sget-object v0, Lcom/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    .line 674
    invoke-virtual {p0}, Lcom/facebook/Session;->close()V

    .line 675
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1533
    instance-of v2, p1, Lcom/facebook/Session;

    if-nez v2, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1536
    check-cast v0, Lcom/facebook/Session;

    .line 1538
    .local v0, "other":Lcom/facebook/Session;
    iget-object v2, v0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    iget-object v2, v0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    iget-object v2, v0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 4

    .prologue
    .line 1359
    const/4 v0, 0x0

    .line 1360
    .local v0, "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    iget-object v3, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1361
    :try_start_0
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-nez v2, :cond_0

    .line 1362
    new-instance v1, Lcom/facebook/Session$TokenRefreshRequest;

    invoke-direct {v1, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    .end local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .local v1, "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :try_start_1
    iput-object v1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 1360
    .end local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1367
    if-eqz v0, :cond_1

    .line 1368
    invoke-virtual {v0}, Lcom/facebook/Session$TokenRefreshRequest;->bind()V

    .line 1370
    :cond_1
    return-void

    .line 1360
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    .restart local v0    # "newTokenRefreshRequest":Lcom/facebook/Session$TokenRefreshRequest;
    goto :goto_0
.end method

.method extendAccessTokenIfNeeded()V
    .locals 1

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/facebook/Session;->extendAccessToken()V

    .line 1356
    :cond_0
    return-void
.end method

.method finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "newToken"    # Lcom/facebook/AccessToken;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    const/4 p1, 0x0

    .line 1275
    new-instance p2, Lcom/facebook/FacebookException;

    .end local p2    # "exception":Ljava/lang/Exception;
    const-string v1, "Invalid access token."

    invoke-direct {p2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 1279
    .restart local p2    # "exception":Ljava/lang/Exception;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    if-eqz v1, :cond_1

    .line 1280
    iget-object v1, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/TokenCache;->save(Landroid/os/Bundle;)V

    .line 1283
    :cond_1
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1286
    .local v0, "oldState":Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1301
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 1283
    monitor-exit v2

    .line 1303
    return-void

    .line 1290
    :pswitch_0
    if-eqz p1, :cond_4

    .line 1291
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1292
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    :goto_1
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 1298
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1283
    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1293
    .restart local v0    # "oldState":Lcom/facebook/SessionState;
    :cond_3
    :try_start_1
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    goto :goto_1

    .line 1294
    :cond_4
    if-eqz p2, :cond_2

    .line 1295
    sget-object v1, Lcom/facebook/SessionState;->OPENING:Lcom/facebook/SessionState;

    if-ne v0, v1, :cond_5

    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    :goto_3
    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move-object v1, v0

    .line 1296
    goto :goto_3

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getState()Lcom/facebook/SessionState;
    .locals 2

    .prologue
    .line 302
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    monitor-exit v1

    return-object v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTokenInfo()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1528
    const/4 v0, 0x0

    return v0
.end method

.method public internalRefreshToken(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 700
    iget-object v2, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 703
    .local v0, "oldState":Lcom/facebook/SessionState;
    invoke-static {}, Lcom/facebook/Session;->$SWITCH_TABLE$com$facebook$SessionState()[I

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3}, Lcom/facebook/SessionState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 712
    sget-object v1, Lcom/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshToken ignored in state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v2

    .line 720
    :goto_0
    return-void

    .line 705
    :pswitch_0
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    iput-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    .line 706
    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 715
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-static {v1, p1}, Lcom/facebook/AccessToken;->createForRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 716
    iget-object v1, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/facebook/Session;->tokenCache:Lcom/facebook/TokenCache;

    iget-object v3, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/TokenCache;->save(Landroid/os/Bundle;)V

    .line 700
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldState":Lcom/facebook/SessionState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 703
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isClosed()Z
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isOpened()Z
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 8
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 570
    const-string v6, "currentActivity"

    invoke-static {p1, v6}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-static {p1}, Lcom/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "currentRequest":Lcom/facebook/Session$AuthorizationRequest;
    const/4 v5, 0x0

    .line 576
    .local v5, "retryRequest":Lcom/facebook/Session$AuthorizationRequest;
    const/4 v4, 0x0

    .line 577
    .local v4, "newToken":Lcom/facebook/AccessToken;
    const/4 v3, 0x0

    .line 579
    .local v3, "exception":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 580
    :try_start_0
    iget-object v6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    invoke-virtual {v6}, Lcom/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v6

    if-eq p2, v6, :cond_1

    .line 581
    :cond_0
    monitor-exit v7

    const/4 v6, 0x0

    .line 635
    :goto_0
    return v6

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 579
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    .line 589
    if-nez p3, :cond_4

    .line 590
    if-nez p4, :cond_3

    .line 592
    new-instance v3, Lcom/facebook/FacebookOperationCanceledException;

    .end local v3    # "exception":Ljava/lang/Exception;
    const-string v6, "Log in was canceled by the user"

    invoke-direct {v3, v6}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v3    # "exception":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v5, :cond_b

    .line 623
    iget-object v7, p0, Lcom/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 624
    :try_start_1
    iget-object v6, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    if-ne v6, v0, :cond_a

    .line 625
    iput-object v5, p0, Lcom/facebook/Session;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 623
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    invoke-virtual {p0, v5}, Lcom/facebook/Session;->authorize(Lcom/facebook/Session$AuthorizationRequest;)V

    .line 635
    :goto_3
    const/4 v6, 0x1

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 594
    :cond_3
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    .line 595
    new-instance v3, Lcom/facebook/FacebookAuthorizationException;

    .end local v3    # "exception":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .restart local v3    # "exception":Ljava/lang/Exception;
    goto :goto_1

    .line 597
    :cond_4
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2

    .line 598
    const-string v6, "data"

    invoke-static {p4, v6}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    .line 601
    iget-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "error":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 603
    iget-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    const-string v7, "error_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 605
    :cond_5
    if-eqz v2, :cond_9

    .line 606
    sget-object v6, Lcom/facebook/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 607
    sget-object v6, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v6}, Lcom/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    move-result-object v5

    goto :goto_1

    .line 608
    :cond_6
    sget-object v6, Lcom/facebook/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 609
    new-instance v3, Lcom/facebook/FacebookOperationCanceledException;

    .end local v3    # "exception":Ljava/lang/Exception;
    const-string v6, "User canceled log in."

    invoke-direct {v3, v6}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    .restart local v3    # "exception":Ljava/lang/Exception;
    goto :goto_1

    .line 611
    :cond_7
    iget-object v6, p0, Lcom/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    const-string v7, "error_description"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "description":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    :cond_8
    new-instance v3, Lcom/facebook/FacebookAuthorizationException;

    .end local v3    # "exception":Ljava/lang/Exception;
    invoke-direct {v3, v2}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    .restart local v3    # "exception":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 618
    .end local v1    # "description":Ljava/lang/String;
    :cond_9
    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, p4}, Lcom/facebook/AccessToken;->createFromSSO(Ljava/util/List;Landroid/content/Intent;)Lcom/facebook/AccessToken;

    move-result-object v4

    goto/16 :goto_1

    .line 627
    .end local v2    # "error":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 623
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 632
    :cond_b
    invoke-virtual {p0, v4, v3}, Lcom/facebook/Session;->finishAuth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    goto/16 :goto_3
.end method

.method public final open()V
    .locals 5

    .prologue
    .line 496
    iget-object v0, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    sget-object v1, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 503
    return-void

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 500
    const-string v1, "Cannot call open without an OpenRequest when the state is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 501
    iget-object v4, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v4}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 499
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openForPublish(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 426
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 427
    return-void
.end method

.method public final openForRead(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 450
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 451
    return-void
.end method

.method public final openForRead(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 474
    new-instance v0, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 475
    return-void
.end method

.method public final openForRead(Lcom/facebook/Session$OpenRequest;)V
    .locals 1
    .param p1, "openRequest"    # Lcom/facebook/Session$OpenRequest;

    .prologue
    .line 393
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->open(Lcom/facebook/Session$OpenRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 394
    return-void
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "oldState"    # Lcom/facebook/SessionState;
    .param p2, "newState"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 1306
    iget-object v2, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v2

    .line 1310
    :try_start_0
    new-instance v0, Lcom/facebook/Session$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/Session$3;-><init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1324
    .local v0, "runCallbacks":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1306
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    sget-object v1, Lcom/facebook/Session;->activeSession:Lcom/facebook/Session;

    if-ne p0, v1, :cond_0

    .line 1328
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1329
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1330
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1306
    .end local v0    # "runCallbacks":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1332
    .restart local v0    # "runCallbacks":Ljava/lang/Runnable;
    :cond_1
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v1}, Lcom/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final reauthorizeForPublish(Lcom/facebook/Session$ReauthorizeRequest;)V
    .locals 1
    .param p1, "reauthorizeRequest"    # Lcom/facebook/Session$ReauthorizeRequest;

    .prologue
    .line 542
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->reauthorize(Lcom/facebook/Session$ReauthorizeRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 543
    return-void
.end method

.method public final reauthorizeForRead(Lcom/facebook/Session$ReauthorizeRequest;)V
    .locals 1
    .param p1, "reauthorizeRequest"    # Lcom/facebook/Session$ReauthorizeRequest;

    .prologue
    .line 522
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/Session;->reauthorize(Lcom/facebook/Session$ReauthorizeRequest;Lcom/facebook/Session$AuthorizationType;)V

    .line 523
    return-void
.end method

.method public final removeCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1022
    monitor-exit v1

    .line 1025
    return-void

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/facebook/Session$TokenRefreshRequest;

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    .line 1408
    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "lastAttemptedTokenExtendDate"    # Ljava/util/Date;

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 1404
    return-void
.end method

.method setTokenInfo(Lcom/facebook/AccessToken;)V
    .locals 0
    .param p1, "tokenInfo"    # Lcom/facebook/AccessToken;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    .line 1396
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 6

    .prologue
    .line 1373
    iget-object v2, p0, Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;

    if-eqz v2, :cond_1

    .line 1374
    const/4 v1, 0x0

    .line 1387
    :cond_0
    :goto_0
    return v1

    .line 1377
    :cond_1
    const/4 v1, 0x0

    .line 1379
    .local v1, "result":Z
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1381
    .local v0, "now":Ljava/util/Date;
    iget-object v2, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getIsSSO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1382
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1383
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1384
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Session;->state:Lcom/facebook/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 680
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    return-object v0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/facebook/Session;->tokenInfo:Lcom/facebook/AccessToken;

    goto :goto_0

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/facebook/Session;->applicationId:Ljava/lang/String;

    goto :goto_1
.end method
