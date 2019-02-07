.class public Lcom/gamenug/hotdonut/hotdonut;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamenug/hotdonut/hotdonut$AppRequestsListener;,
        Lcom/gamenug/hotdonut/hotdonut$BaseDialogListener;,
        Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;,
        Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;,
        Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;,
        Lcom/gamenug/hotdonut/hotdonut$MyLicenseCheckerCallback;,
        Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;,
        Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;,
        Lcom/gamenug/hotdonut/hotdonut$WallPostListener;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA9GFqYHKnpGVCLiuKFKtU27db2ILuhhXmE2yfh9KaBtg2zaPsTq0PQ5Rw1BGLYIqNsLxwaYOWrq0KXMJDJZCVSmlGIehxxT02ddeJlvI3UoUs42LwWvG6/Sa6S8UzvsY5EywrZa1j/c69T8N0QGIIbuihIoCWe4B/Br+Td3tpgK3eyqnJgfp9g2W+hHPagtQAlrW576lb+fhK7JVPN4Tq55pO/YnCRbCk2n+KYK42RhFjFlgee7AhXHsZb4nhIy5HXKgW4CxEoWpBKNLSjk+qSyELr/QNTcHfg0Y6A21XilUS8DIY28YyQO7bla3DRKj0u+WGlOnQADtp2GRalD5k+wIDAQAB"

.field private static final SALT:[B

.field public static facebook:Lcom/facebook/android/Facebook; = null

.field public static friendid:Ljava/lang/String; = null

.field public static mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner; = null

.field private static m_uPlayerFBID:Ljava/lang/String; = null

.field private static m_uPlayerFBName:Ljava/lang/String; = null

.field public static final marketURL:Ljava/lang/String; = "http://market.android.com/details?id="

.field public static final useLicensing:Z

.field public static walllevel:I

.field public static walltime:F

.field public static wallxpos:Ljava/lang/String;

.field public static wallypos:Ljava/lang/String;


# instance fields
.field public currentParams:Landroid/os/Bundle;

.field private doPostToWall:Z

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mHandler:Landroid/os/Handler;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private requestId:Ljava/lang/String;

.field private resultFriendIds:[Ljava/lang/String;

.field private resultFriendNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->SALT:[B

    .line 121
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "177676515619741"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    .line 122
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    .line 123
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    .line 122
    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBID:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBName:Ljava/lang/String;

    .line 127
    const-string v0, ""

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->wallxpos:Ljava/lang/String;

    .line 128
    const-string v0, ""

    sput-object v0, Lcom/gamenug/hotdonut/hotdonut;->wallypos:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    sput v0, Lcom/gamenug/hotdonut/hotdonut;->walllevel:I

    .line 130
    const/4 v0, 0x0

    sput v0, Lcom/gamenug/hotdonut/hotdonut;->walltime:F

    .line 1123
    const-string v0, "cocos2d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1124
    const-string v0, "box2d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1125
    const-string v0, "cocosdenshion"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1126
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 107
    return-void

    .line 115
    :array_0
    .array-data 1
        0x24t
        0x1t
        0x1et
        -0x6ft
        -0x67t
        -0x39t
        0x4at
        0x40t
        0x39t
        0x58t
        -0x5ft
        -0x2t
        0x4dt
        0x11t
        -0x24t
        -0xdt
        -0x15t
        0x21t
        -0x4t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall:Z

    .line 107
    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/hotdonut;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut;->resultFriendIds:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/gamenug/hotdonut/hotdonut;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut;->resultFriendNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut;->save(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/gamenug/hotdonut/hotdonut;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1222
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut;->getRequestData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut;->requestId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/gamenug/hotdonut/hotdonut;->getPendingRequests()V

    return-void
.end method

.method static synthetic access$15(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut;->deleteRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gamenug/hotdonut/hotdonut;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->resultFriendIds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gamenug/hotdonut/hotdonut;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->resultFriendNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    sput-object p0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    sput-object p0, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/gamenug/hotdonut/hotdonut;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall:Z

    return v0
.end method

.method static synthetic access$9(Lcom/gamenug/hotdonut/hotdonut;Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall:Z

    return-void
.end method

.method private deleteRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "inRequestId"    # Ljava/lang/String;

    .prologue
    .line 1303
    new-instance v0, Lcom/facebook/Request;

    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v1

    const/4 v3, 0x0

    .line 1304
    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$16;

    invoke-direct {v5, p0}, Lcom/gamenug/hotdonut/hotdonut$16;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    move-object v2, p1

    .line 1303
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .local v0, "request":Lcom/facebook/Request;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    .line 1316
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 1317
    return-void
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method

.method private doCheck()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method private getPendingRequests()V
    .locals 6

    .prologue
    .line 1136
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    .line 1140
    new-instance v0, Lcom/facebook/Request;

    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/apprequests"

    .line 1141
    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$14;

    invoke-direct {v5, p0}, Lcom/gamenug/hotdonut/hotdonut$14;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 1140
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .local v0, "request":Lcom/facebook/Request;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    .line 1219
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 1220
    return-void
.end method

.method private getRequestData(Ljava/lang/String;)V
    .locals 6
    .param p1, "inRequestId"    # Ljava/lang/String;

    .prologue
    .line 1223
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    .line 1226
    new-instance v0, Lcom/facebook/Request;

    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v1

    const/4 v3, 0x0

    .line 1227
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$15;

    invoke-direct {v5, p0, p1}, Lcom/gamenug/hotdonut/hotdonut$15;-><init>(Lcom/gamenug/hotdonut/hotdonut;Ljava/lang/String;)V

    move-object v2, p1

    .line 1226
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .local v0, "request":Lcom/facebook/Request;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    .line 1297
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 1298
    return-void
.end method

.method private onActivityResulthotdonut(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 141
    return-void
.end method

.method private onCreateDialoghotdonut(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1069
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    const v1, 0x7f050027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1071
    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1072
    const v1, 0x7f050029

    .line 1073
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$12;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$12;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 1072
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1084
    const v1, 0x7f05002b

    .line 1085
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$13;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$13;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 1084
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1091
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1069
    return-object v0
.end method

.method private onCreatehotdonut(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 981
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 984
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "packageName":Ljava/lang/String;
    invoke-super {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setPackageName(Ljava/lang/String;)V

    .line 1012
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/gamenug/hotdonut/hotdonut;->setContentView(I)V

    .line 1013
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/gamenug/hotdonut/hotdonut;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object v1, p0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 1014
    iget-object v2, p0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/gamenug/hotdonut/hotdonut;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Landroid/widget/TextView;)V

    .line 1017
    iget-object v1, p0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$10;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$10;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1026
    return-void
.end method

.method private onDestroyhotdonut()V
    .locals 0

    .prologue
    .line 1112
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 1119
    return-void
.end method

.method private onPausehotdonut()V
    .locals 1

    .prologue
    .line 1099
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 1100
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 1102
    return-void
.end method

.method private onResumehotdonut()V
    .locals 1

    .prologue
    .line 1106
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 1108
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 1109
    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1132
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Token"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1133
    return-void
.end method


# virtual methods
.method public doFacebookGetPendingRequests()V
    .locals 4

    .prologue
    .line 387
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/gamenug/hotdonut/hotdonut;->getPendingRequests()V

    .line 419
    :goto_0
    return-void

    .line 392
    :cond_0
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "publish_stream"

    aput-object v3, v1, v2

    .line 394
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$6;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$6;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 392
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doFacebookGetRequest()V
    .locals 4

    .prologue
    .line 351
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->requestId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gamenug/hotdonut/hotdonut;->getRequestData(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->requestId:Ljava/lang/String;

    .line 383
    :goto_0
    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "publish_stream"

    aput-object v3, v1, v2

    .line 359
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$5;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$5;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 357
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doFacebookLogin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iput-boolean v3, p0, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall:Z

    .line 271
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->requestUserData()V

    .line 307
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "read_friendlists"

    aput-object v2, v1, v3

    .line 280
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$3;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$3;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 278
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doFacebookLoginLike()V
    .locals 5

    .prologue
    .line 311
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 313
    const-string v2, "http://www.facebook.com/hotdonut"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .local v0, "urlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/gamenug/hotdonut/hotdonut;->startActivity(Landroid/content/Intent;)V

    .line 347
    .end local v0    # "urlIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_stream"

    aput-object v4, v2, v3

    .line 320
    new-instance v3, Lcom/gamenug/hotdonut/hotdonut$4;

    invoke-direct {v3, p0}, Lcom/gamenug/hotdonut/hotdonut$4;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 318
    invoke-virtual {v1, p0, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doFacebookRequest()V
    .locals 5

    .prologue
    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v0, "params":Landroid/os/Bundle;
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->friendid:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 427
    const-string v1, "to"

    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->friendid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "notification_text"

    const-string v2, "Play Hot Donut"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "message"

    const-string v2, "Get online in Hot Donut. I want to play a live race with you!"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    iput-object v0, p0, Lcom/gamenug/hotdonut/hotdonut;->currentParams:Landroid/os/Bundle;

    .line 444
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const-string v2, "apprequests"

    iget-object v3, p0, Lcom/gamenug/hotdonut/hotdonut;->currentParams:Landroid/os/Bundle;

    .line 446
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$AppRequestsListener;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$AppRequestsListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 445
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 478
    :goto_1
    return-void

    .line 435
    :cond_0
    const-string v1, "notification_text"

    const-string v2, "Check this out"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "message"

    const-string v2, "Get Hot Donut so we can play!"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_stream"

    aput-object v4, v2, v3

    .line 452
    new-instance v3, Lcom/gamenug/hotdonut/hotdonut$7;

    invoke-direct {v3, p0}, Lcom/gamenug/hotdonut/hotdonut$7;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 450
    invoke-virtual {v1, p0, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_1
.end method

.method public doLoginForFriendRequest()V
    .locals 6

    .prologue
    .line 170
    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const-string v1, "select name, uid, is_app_user from user where uid in (select uid2 from friend where uid1=me()) and is_app_user = 1 order by name"

    .line 180
    .local v1, "query":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "fql.query"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const/4 v3, 0x0

    .line 184
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 183
    invoke-virtual {v2, v3, v0, v4}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 231
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v1    # "query":Ljava/lang/String;
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v2, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "read_friendlists"

    aput-object v5, v3, v4

    .line 191
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$1;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$1;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 189
    invoke-virtual {v2, p0, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doLoginGetIDforWallPost()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 234
    iput-boolean v1, p0, Lcom/gamenug/hotdonut/hotdonut;->doPostToWall:Z

    .line 235
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->requestUserData()V

    .line 267
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "publish_stream"

    aput-object v3, v1, v2

    .line 243
    new-instance v2, Lcom/gamenug/hotdonut/hotdonut$2;

    invoke-direct {v2, p0}, Lcom/gamenug/hotdonut/hotdonut$2;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 241
    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public doPostToWall()V
    .locals 7

    .prologue
    .line 870
    sget v3, Lcom/gamenug/hotdonut/hotdonut;->walltime:F

    const/high16 v4, 0x44610000    # 900.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 871
    const-string v0, "Can you beat my time of - ?"

    .line 879
    .local v0, "caption":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.gamenug.com/hd.html?fbid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 880
    const-string v4, "&fbn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gamenug/hotdonut/hotdonut;->m_uPlayerFBName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/gamenug/hotdonut/hotdonut;->walllevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 881
    const-string v4, "&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/gamenug/hotdonut/hotdonut;->walltime:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 882
    const-string v4, "&xp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gamenug/hotdonut/hotdonut;->wallxpos:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 883
    const-string v4, "&yp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gamenug/hotdonut/hotdonut;->wallypos:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 879
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "deeplink":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 887
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "caption"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v3, "description"

    const-string v4, "Come challenge me!"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v3, "picture"

    .line 890
    const-string v4, "http://www.gamenug.com/uploads/4/1/1/0/4110452/iconhd144.jpg"

    .line 889
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v3, "name"

    const-string v4, "Challenge me in Hot Donut"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v3, "link"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iput-object v2, p0, Lcom/gamenug/hotdonut/hotdonut;->currentParams:Landroid/os/Bundle;

    .line 896
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 897
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const-string v4, "feed"

    iget-object v5, p0, Lcom/gamenug/hotdonut/hotdonut;->currentParams:Landroid/os/Bundle;

    .line 898
    new-instance v6, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;

    invoke-direct {v6, p0}, Lcom/gamenug/hotdonut/hotdonut$WallPostListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 897
    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 930
    :goto_1
    return-void

    .line 875
    .end local v0    # "caption":Ljava/lang/String;
    .end local v1    # "deeplink":Ljava/lang/String;
    .end local v2    # "params":Landroid/os/Bundle;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can you beat my time of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/gamenug/hotdonut/hotdonut;->walltime:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "caption":Ljava/lang/String;
    goto/16 :goto_0

    .line 902
    .restart local v1    # "deeplink":Ljava/lang/String;
    .restart local v2    # "params":Landroid/os/Bundle;
    :cond_1
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "publish_stream"

    aput-object v6, v4, v5

    .line 904
    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$9;

    invoke-direct {v5, p0}, Lcom/gamenug/hotdonut/hotdonut$9;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 902
    invoke-virtual {v3, p0, v4, v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_1
.end method

.method public isFullVersion()Z
    .locals 2

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotdonutfull"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isLiteVersion()Z
    .locals 2

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotdonutlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public logoutFacebook()V
    .locals 2

    .prologue
    .line 1029
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    new-instance v1, Lcom/gamenug/hotdonut/hotdonut$11;

    invoke-direct {v1, p0}, Lcom/gamenug/hotdonut/hotdonut$11;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 1064
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/android/Kiwi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/gamenug/hotdonut/hotdonut;->onActivityResulthotdonut(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut;->onCreatehotdonut(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut;->onCreateDialoghotdonut(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/gamenug/hotdonut/hotdonut;->onDestroyhotdonut()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/gamenug/hotdonut/hotdonut;->onPausehotdonut()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/gamenug/hotdonut/hotdonut;->onResumehotdonut()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public postPhoto()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 725
    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v9, v1

    .line 727
    check-cast v9, [B

    .line 729
    .local v9, "data":[B
    :try_start_0
    new-instance v12, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    const-string v4, "/hovershot.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .local v12, "myFile":Ljava/io/File;
    if-nez v12, :cond_0

    .line 814
    .end local v9    # "data":[B
    .end local v12    # "myFile":Ljava/io/File;
    :goto_0
    return-void

    .line 735
    .restart local v9    # "data":[B
    .restart local v12    # "myFile":Ljava/io/File;
    :cond_0
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 737
    .local v13, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/gamenug/hotdonut/hotdonut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 738
    .local v8, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v8, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 739
    .local v11, "fis":Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 740
    .local v7, "bi":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 741
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v7, v3, v4, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 742
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 747
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bi":Landroid/graphics/Bitmap;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "fis":Ljava/io/InputStream;
    .end local v12    # "myFile":Ljava/io/File;
    .end local v13    # "uri":Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "method"

    const-string v4, "photos.upload"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v3, "picture"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 751
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    sget-object v3, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v3}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    .line 752
    .local v0, "mAsyncRunner":Lcom/facebook/android/AsyncFacebookRunner;
    const-string v3, "POST"

    .line 753
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    move-object v5, v1

    .line 752
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 743
    .end local v0    # "mAsyncRunner":Lcom/facebook/android/AsyncFacebookRunner;
    .end local v2    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .line 744
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 759
    .end local v9    # "data":[B
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_stream"

    aput-object v5, v3, v4

    .line 761
    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$8;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$8;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 759
    invoke-virtual {v1, p0, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public requestUserData()V
    .locals 4

    .prologue
    .line 861
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 863
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "first_name, last_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v1, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v2, "me"

    new-instance v3, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;

    invoke-direct {v3, p0}, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 865
    return-void
.end method
