.class public Lcom/facebook/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/LoginButton$LoginButtonCallback;,
        Lcom/facebook/LoginButton$LoginClickListener;,
        Lcom/facebook/LoginButton$OnErrorListener;,
        Lcom/facebook/LoginButton$UserInfoChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private authorizationType:Lcom/facebook/Session$AuthorizationType;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionTracker:Lcom/facebook/SessionTracker;

.field private user:Lcom/facebook/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LoginButton;->TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 52
    iput-object v1, p0, Lcom/facebook/LoginButton;->applicationId:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    .line 55
    iput-object v1, p0, Lcom/facebook/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 97
    invoke-direct {p0}, Lcom/facebook/LoginButton;->finishInit()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 52
    iput-object v1, p0, Lcom/facebook/LoginButton;->applicationId:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    .line 55
    iput-object v1, p0, Lcom/facebook/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 107
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_loginbutton_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setBackgroundResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setTextColor(I)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/LoginButton;->setTextSize(IF)V

    .line 114
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 114
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/LoginButton;->setPadding(IIII)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setWidth(I)V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setHeight(I)V

    .line 120
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setGravity(I)V

    .line 122
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 52
    iput-object v1, p0, Lcom/facebook/LoginButton;->applicationId:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    .line 55
    iput-object v1, p0, Lcom/facebook/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 133
    invoke-direct {p0, p2}, Lcom/facebook/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/facebook/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 135
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/LoginButton;)Lcom/facebook/SessionTracker;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/LoginButton;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$10(Lcom/facebook/LoginButton;)Lcom/facebook/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/LoginButton;->userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/LoginButton;)Lcom/facebook/GraphUser;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/LoginButton;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/LoginButton;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/LoginButton;)Lcom/facebook/Session$AuthorizationType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/facebook/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/facebook/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/LoginButton;Lcom/facebook/GraphUser;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .prologue
    .line 412
    iget-boolean v2, p0, Lcom/facebook/LoginButton;->fetchUserInfo:Z

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 414
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 415
    iget-object v2, p0, Lcom/facebook/LoginButton;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v2, :cond_0

    .line 416
    new-instance v2, Lcom/facebook/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/LoginButton$1;-><init>(Lcom/facebook/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .local v1, "request":Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    .line 430
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 431
    iput-object v0, p0, Lcom/facebook/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 440
    .end local v0    # "currentSession":Lcom/facebook/Session;
    .end local v1    # "request":Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 434
    .restart local v0    # "currentSession":Lcom/facebook/Session;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    .line 435
    iget-object v2, p0, Lcom/facebook/LoginButton;->userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/facebook/LoginButton;->userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

    iget-object v3, p0, Lcom/facebook/LoginButton;->user:Lcom/facebook/GraphUser;

    invoke-interface {v2, v3}, Lcom/facebook/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/GraphUser;)V

    goto :goto_0
.end method

.method private finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 327
    new-instance v0, Lcom/facebook/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/LoginButton$LoginButtonCallback;

    invoke-direct {v2, p0, v4}, Lcom/facebook/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/LoginButton;Lcom/facebook/LoginButton$LoginButtonCallback;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    iput-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    .line 328
    new-instance v0, Lcom/facebook/LoginButton$LoginClickListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/LoginButton$LoginClickListener;-><init>(Lcom/facebook/LoginButton;Lcom/facebook/LoginButton$LoginClickListener;)V

    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    invoke-direct {p0}, Lcom/facebook/LoginButton;->setButtonText()V

    .line 330
    invoke-direct {p0}, Lcom/facebook/LoginButton;->fetchUserInfo()V

    .line 331
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 387
    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v2

    .line 391
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 392
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {p1}, Lcom/facebook/Session;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 401
    new-instance v1, Lcom/facebook/Session;

    .end local v1    # "session":Lcom/facebook/Session;
    invoke-direct {v1, p1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 402
    .restart local v1    # "session":Lcom/facebook/Session;
    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    sget-object v4, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    if-ne v3, v4, :cond_0

    .line 406
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 407
    invoke-virtual {v1}, Lcom/facebook/Session;->open()V

    .line 408
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/LoginButton;->confirmLogout:Z

    .line 369
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/LoginButton;->fetchUserInfo:Z

    .line 370
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LoginButton;->loginText:Ljava/lang/String;

    .line 371
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/LoginButton;->logoutText:Ljava/lang/String;

    .line 372
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    return-void
.end method

.method private setButtonText()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/facebook/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/LoginButton;->logoutText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_1
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/facebook/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/LoginButton;->loginText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private validatePermissions(Ljava/util/List;Lcom/facebook/Session$AuthorizationType;)Z
    .locals 3
    .param p2, "authType"    # Lcom/facebook/Session$AuthorizationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session$AuthorizationType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v1, p2}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p1}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 228
    .local v0, "openSession":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    sget-object v1, Lcom/facebook/LoginButton;->TAG:Ljava/lang/String;

    const-string v2, "Cannot set additional permissions when session is already open."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 241
    iput-object v0, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 242
    return-void
.end method

.method public getOnErrorListener()Lcom/facebook/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/LoginButton;->onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
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
    .line 363
    iget-object v0, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/LoginButton;->userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/facebook/LoginButton;->onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

    if-eqz v0, :cond_0

    .line 517
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/facebook/LoginButton;->onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

    check-cast p1, Lcom/facebook/FacebookException;

    .end local p1    # "exception":Ljava/lang/Exception;
    invoke-interface {v0, p1}, Lcom/facebook/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    .restart local p1    # "exception":Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Lcom/facebook/LoginButton;->onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 295
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v1

    .line 299
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 348
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->startTracking()V

    .line 350
    invoke-direct {p0}, Lcom/facebook/LoginButton;->fetchUserInfo()V

    .line 351
    invoke-direct {p0}, Lcom/facebook/LoginButton;->setButtonText()V

    .line 353
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 358
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->stopTracking()V

    .line 359
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 323
    invoke-direct {p0}, Lcom/facebook/LoginButton;->finishInit()V

    .line 324
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/facebook/LoginButton;->applicationId:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/facebook/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 343
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/LoginButton$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/LoginButton$OnErrorListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/LoginButton;->onErrorListener:Lcom/facebook/LoginButton$OnErrorListener;

    .line 145
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    iget-object v1, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 213
    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/LoginButton;->validatePermissions(Ljava/util/List;Lcom/facebook/Session$AuthorizationType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iput-object p1, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 217
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    iput-object v0, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 219
    :cond_1
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    iget-object v1, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 180
    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/LoginButton;->validatePermissions(Ljava/util/List;Lcom/facebook/Session$AuthorizationType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iput-object p1, p0, Lcom/facebook/LoginButton;->permissions:Ljava/util/List;

    .line 184
    sget-object v0, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    iput-object v0, p0, Lcom/facebook/LoginButton;->authorizationType:Lcom/facebook/Session$AuthorizationType;

    .line 186
    :cond_1
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/LoginButton;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/LoginButton;->fetchUserInfo()V

    .line 317
    invoke-direct {p0}, Lcom/facebook/LoginButton;->setButtonText()V

    .line 318
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/LoginButton$UserInfoChangedCallback;)V
    .locals 0
    .param p1, "userInfoChangedCallback"    # Lcom/facebook/LoginButton$UserInfoChangedCallback;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/facebook/LoginButton;->userInfoChangedCallback:Lcom/facebook/LoginButton$UserInfoChangedCallback;

    .line 268
    return-void
.end method
