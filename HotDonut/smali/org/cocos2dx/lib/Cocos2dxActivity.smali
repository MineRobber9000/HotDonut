.class public Lorg/cocos2dx/lib/Cocos2dxActivity;
.super Landroid/app/Activity;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;
.implements Lcom/tapjoy/TapjoyFeaturedAppNotifier;
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoyVideoNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;,
        Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;,
        Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;,
        Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;
    }
.end annotation


# static fields
.field public static AMAZON_GAMECIRCLE:Z = false

.field private static final AMAZON_IAP:Z = true

.field private static final CATALOG:[Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field private static final DIALOG_CANNOT_CONNECT_ID:I = 0x1

.field private static final HANDLER_SHOW_DIALOG:I = 0x1

.field private static final LOG_TEXT_KEY:Ljava/lang/String; = "HotDonut_LOG_TEXT"

.field private static final NO_SHOP_EDITION:Z = false

.field private static final TAG:Ljava/lang/String; = "Cocos2dxActivityIAP"

.field private static accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field private static accelerometerEnabled:Z

.field private static backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

.field private static channel:Ljava/lang/String;

.field private static cocosHandler:Landroid/os/Handler;

.field static gameID:Ljava/lang/String;

.field static gameKey:Ljava/lang/String;

.field static gameName:Ljava/lang/String;

.field static gameSecret:Ljava/lang/String;

.field private static inviteMessage:Ljava/lang/String;

.field private static mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static packageName:Ljava/lang/String;

.field private static resultfriendids:[Ljava/lang/Object;

.field private static resultfriendnames:[Ljava/lang/Object;

.field public static screenHeight:I

.field public static screenWidth:I

.field private static soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;


# instance fields
.field public agsClient:Lcom/amazon/ags/api/AmazonGames;

.field private currentUser:Ljava/lang/String;

.field private mBillingService:Lcom/gamenug/hotdonut/BillingService;

.field public mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field private mHotDonutPurchaseObserver:Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

.field private mOwnedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field myGameFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;"
        }
    .end annotation
.end field

.field pubnub:Lcom/fbt/Pubnub;

.field public requestIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    sput-boolean v5, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometerEnabled:Z

    .line 172
    sput-boolean v6, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    .line 363
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    .line 364
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    const-string v2, "crystals20"

    const v3, 0x7f05002d

    .line 365
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 364
    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;-><init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V

    aput-object v1, v0, v5

    .line 366
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    const-string v2, "crystals50"

    const v3, 0x7f05002e

    .line 367
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 366
    invoke-direct {v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;-><init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    .line 368
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    const-string v3, "crystals200"

    const v4, 0x7f05002f

    .line 369
    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 368
    invoke-direct {v2, v3, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;-><init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 370
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    const-string v3, "crystals500"

    const v4, 0x7f050030

    .line 371
    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 370
    invoke-direct {v2, v3, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;-><init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 372
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    const-string v3, "crystals2000"

    const v4, 0x7f050031

    .line 373
    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;->UNMANAGED:Lorg/cocos2dx/lib/Cocos2dxActivity$Managed;

    .line 372
    invoke-direct {v2, v3, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;-><init>(Ljava/lang/String;ILorg/cocos2dx/lib/Cocos2dxActivity$Managed;)V

    aput-object v2, v0, v1

    .line 363
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->CATALOG:[Lorg/cocos2dx/lib/Cocos2dxActivity$CatalogEntry;

    .line 415
    const-string v0, "Hot Donut"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameName:Ljava/lang/String;

    .line 416
    const-string v0, "373703"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameID:Ljava/lang/String;

    .line 417
    const-string v0, "1Vqb3qn9Ew15Kga91SqJA"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameKey:Ljava/lang/String;

    .line 418
    const-string v0, "Kqvrdwhn8C17PITD6Cqab2GNnew2Sd7h01b0ZOXs"

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->gameSecret:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->myGameFeatures:Ljava/util/EnumSet;

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mOwnedItems:Ljava/util/Set;

    .line 159
    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 384
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeLiveData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10()V
    .locals 0

    .prologue
    .line 393
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeCallRandComplete()V

    return-void
.end method

.method static synthetic access$11()V
    .locals 0

    .prologue
    .line 395
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeCallRandSend()V

    return-void
.end method

.method static synthetic access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeConnectedToChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->channel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/cocos2dx/lib/Cocos2dxActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1442
    invoke-direct {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->resultfriendids:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->resultfriendnames:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->inviteMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9()V
    .locals 0

    .prologue
    .line 397
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeAcceptInvite()V

    return-void
.end method

.method public static checkinHeyZap()V
    .locals 0

    .prologue
    .line 830
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 726
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 729
    return-void

    .line 727
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private createDialog(II)Landroid/app/Dialog;
    .locals 6
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 1683
    const v3, 0x7f050018

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    .local v2, "helpUrl":Ljava/lang/String;
    const-string v3, "Cocos2dxActivityIAP"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1689
    .local v1, "helpUri":Landroid/net/Uri;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1691
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1692
    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1693
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1694
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1695
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1696
    const v4, 0x7f050017

    .line 1697
    new-instance v5, Lorg/cocos2dx/lib/Cocos2dxActivity$18;

    invoke-direct {v5, p0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$18;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/net/Uri;)V

    .line 1696
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1705
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometerEnabled:Z

    .line 751
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 752
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometerEnabled:Z

    .line 746
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 747
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 811
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    .line 812
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    .line 813
    return-void
.end method

.method public static fbGetFriends()V
    .locals 2

    .prologue
    .line 1465
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$14;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method public static fbIsLoggedIn()Z
    .locals 1

    .prologue
    .line 1461
    sget-object v0, Lcom/gamenug/hotdonut/hotdonut;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public static fbLoginLike()V
    .locals 2

    .prologue
    .line 1492
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$17;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$17;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1498
    return-void
.end method

.method public static fbLoginOnly()V
    .locals 2

    .prologue
    .line 1483
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$16;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1489
    return-void
.end method

.method public static fbLogout()V
    .locals 2

    .prologue
    .line 1474
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$15;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1480
    return-void
.end method

.method public static friendResult(I[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "friendids"    # [Ljava/lang/Object;
    .param p2, "friendnames"    # [Ljava/lang/Object;

    .prologue
    .line 1075
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->resultfriendids:[Ljava/lang/Object;

    .line 1076
    sput-object p2, Lorg/cocos2dx/lib/Cocos2dxActivity;->resultfriendnames:[Ljava/lang/Object;

    .line 1077
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$7;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$7;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1085
    return-void
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 732
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "languageName":Ljava/lang/String;
    return-object v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 795
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static inviteFriends(Ljava/lang/String;)V
    .locals 2
    .param p0, "myfriendID"    # Ljava/lang/String;

    .prologue
    .line 1268
    sput-object p0, Lcom/gamenug/hotdonut/hotdonut;->friendid:Ljava/lang/String;

    .line 1269
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    check-cast v0, Lcom/gamenug/hotdonut/hotdonut;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$10;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1276
    return-void
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 775
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method public static liveCheckTime()D
    .locals 14

    .prologue
    .line 1354
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1355
    .local v6, "startTime":J
    sget-object v10, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v10, v10, Lorg/cocos2dx/lib/Cocos2dxActivity;->pubnub:Lcom/fbt/Pubnub;

    invoke-virtual {v10}, Lcom/fbt/Pubnub;->time()D

    move-result-wide v8

    .line 1356
    .local v8, "time":D
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1358
    .local v4, "endTime":J
    sub-long v2, v4, v6

    .line 1359
    .local v2, "duration":J
    long-to-double v10, v2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v0, v10, v12

    .line 1360
    .local v0, "diffmsec":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v0, v10

    sub-double v10, v8, v10

    return-wide v10
.end method

.method public static liveGetGameCenterName()V
    .locals 2

    .prologue
    .line 1087
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    if-eqz v0, :cond_0

    .line 1089
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 1090
    invoke-interface {v0}, Lcom/amazon/ags/api/AmazonGames;->getProfilesClient()Lcom/amazon/ags/api/profiles/ProfilesClient;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1091
    invoke-interface {v0, v1}, Lcom/amazon/ags/api/profiles/ProfilesClient;->getLocalPlayerProfile([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v0

    .line 1093
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$8;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$8;-><init>()V

    .line 1092
    invoke-interface {v0, v1}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 1119
    :cond_0
    return-void
.end method

.method public static liveGetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    invoke-static {}, Lcom/fbt/Pubnub;->uuid()Ljava/lang/String;

    move-result-object v0

    .line 1333
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method

.method public static liveJoinChannel(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1339
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->channel:Ljava/lang/String;

    .line 1340
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 1341
    .local v0, "d":Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "xml"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1343
    return-void
.end method

.method public static liveLeaveChannel(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1347
    const-string v1, "pubnub"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsubscribe "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1349
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "channel"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->pubnub:Lcom/fbt/Pubnub;

    invoke-virtual {v1, v0}, Lcom/fbt/Pubnub;->unsubscribe(Ljava/util/HashMap;)V

    .line 1351
    return-void
.end method

.method public static livePublish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "txt"    # Ljava/lang/String;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 1322
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1323
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->pubnub:Lcom/fbt/Pubnub;

    invoke-virtual {v1, v0}, Lcom/fbt/Pubnub;->publish(Ljava/util/HashMap;)V

    .line 1329
    return-void
.end method

.method public static liveRandSendTimer(DZ)V
    .locals 4
    .param p0, "delay"    # D
    .param p2, "complete"    # Z

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 1279
    if-eqz p2, :cond_0

    .line 1280
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$11;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$11;-><init>()V

    .line 1293
    mul-double/2addr v2, p0

    double-to-long v2, v2

    .line 1280
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1311
    :goto_0
    return-void

    .line 1295
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$12;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$12;-><init>()V

    .line 1308
    mul-double/2addr v2, p0

    double-to-long v2, v2

    .line 1295
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 850
    const-string v1, "WinAd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DiedAd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 853
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isLiteVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showAdColony()V

    .line 865
    :cond_1
    :goto_0
    return-void

    .line 860
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 861
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static native nativeAcceptInvite()V
.end method

.method private static native nativeCallRandComplete()V
.end method

.method private static native nativeCallRandSend()V
.end method

.method private static native nativeConnectedToChannel(Ljava/lang/String;)V
.end method

.method public static native nativeFacebookLoggedIn()Z
.end method

.method public static native nativeFriendResult(I[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private static native nativeGiveCrystals(I)V
.end method

.method private static native nativeLiveData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetFBNameAndID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetGameCenterName(Ljava/lang/String;)V
.end method

.method private static native nativeSetPaths(Ljava/lang/String;)V
.end method

.method public static native nativeSubmitRace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFF)V
.end method

.method private static native nativeTapPoints(I)V
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string v3, "NabiFull"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    const-string v3, "Cocos2dxActivityIAP"

    const-string v4, "STARTED NABI INTENT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.fuhu.fkappzone.SHOWAPP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "id"

    const-string v4, "com.gamenug.hotdonutfull"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 954
    :cond_0
    const-string v3, "SAVEWALL1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->saveWallpaper()V

    goto :goto_0

    .line 957
    :cond_1
    const-string v3, "V4VC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 959
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runV4VC()V

    goto :goto_0

    .line 961
    :cond_2
    const-string v3, "Launch1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 963
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showChartboost()V

    goto :goto_0

    .line 965
    :cond_3
    const-string v3, "NOOK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 966
    const-string v3, "Cocos2dxActivityIAP"

    const-string v4, "STARTED NOOK INTENT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 968
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "com.bn.sdk.shop.details"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const-string v3, "product_details_ean"

    const-string v4, "2940043883896"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 974
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    .local v2, "urlIntent":Landroid/content/Intent;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v3, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    .line 764
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 755
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 756
    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 787
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 803
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method public static purchaseItem(IZ)V
    .locals 7
    .param p0, "item"    # I
    .param p1, "amazon"    # Z

    .prologue
    .line 881
    const-string v3, ""

    .line 882
    .local v3, "sku":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    .line 883
    const-string v3, "crystals20"

    .line 900
    :goto_0
    if-eqz p1, :cond_8

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 901
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "fullproductstring":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "requestId":Ljava/lang/String;
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v4, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->storeRequestId(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v0    # "fullproductstring":Ljava/lang/String;
    .end local v2    # "requestId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 884
    :cond_1
    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    .line 885
    const-string v3, "crystals50"

    goto :goto_0

    .line 886
    :cond_2
    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    .line 887
    const-string v3, "crystals200"

    goto :goto_0

    .line 888
    :cond_3
    const/4 v4, 0x4

    if-ne p0, v4, :cond_4

    .line 889
    const-string v3, "crystals500"

    goto :goto_0

    .line 890
    :cond_4
    const/4 v4, 0x5

    if-ne p0, v4, :cond_5

    .line 891
    const-string v3, "crystals2000"

    goto :goto_0

    .line 892
    :cond_5
    const/4 v4, 0x6

    if-ne p0, v4, :cond_6

    .line 893
    const-string v3, "removeAds"

    goto :goto_0

    .line 894
    :cond_6
    const/4 v4, 0x7

    if-ne p0, v4, :cond_7

    .line 895
    const-string v3, "unlockLevels"

    goto :goto_0

    .line 897
    :cond_7
    const-string v4, "Cocos2dxActivityIAP"

    const-string v5, "BAD ITEM IN PRUCHASE ITEM!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    :cond_8
    const/4 v1, 0x0

    .line 912
    .local v1, "mPayloadContents":Ljava/lang/String;
    const-string v4, "Cocos2dxActivityIAP"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buying sku: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v4, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v4, v4, Lorg/cocos2dx/lib/Cocos2dxActivity;->mBillingService:Lcom/gamenug/hotdonut/BillingService;

    invoke-virtual {v4, v3, v1}, Lcom/gamenug/hotdonut/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 916
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showTapjoy()V

    goto :goto_1
.end method

.method private replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1729
    const-string v1, "%lang%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1730
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1731
    .local v0, "locale":Ljava/util/Locale;
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1732
    const-string v1, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1734
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    return-object p1
.end method

.method public static reportScore(II)V
    .locals 5
    .param p0, "score"    # I
    .param p1, "leaderboardID"    # I

    .prologue
    .line 999
    sget-boolean v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    if-eqz v2, :cond_1

    .line 1000
    const-string v0, "GameScore"

    .line 1002
    .local v0, "boardname":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1003
    const-string v0, "WorldScore_1"

    .line 1015
    :cond_0
    :goto_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 1016
    invoke-interface {v2}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v1

    .line 1017
    .local v1, "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    int-to-long v2, p0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->submitScore(Ljava/lang/String;J[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v2

    .line 1018
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$4;

    invoke-direct {v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$4;-><init>()V

    .line 1017
    invoke-interface {v2, v3}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 1035
    .end local v0    # "boardname":Ljava/lang/String;
    .end local v1    # "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    :cond_1
    return-void

    .line 1004
    .restart local v0    # "boardname":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1005
    const-string v0, "WorldScore_2"

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 1007
    const-string v0, "WorldScore_3"

    goto :goto_0

    .line 1008
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 1009
    const-string v0, "WorldScore_4"

    goto :goto_0

    .line 1010
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 1011
    const-string v0, "WorldScore_5"

    goto :goto_0

    .line 1012
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 1013
    const-string v0, "LiveRankings"

    goto :goto_0
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    .line 768
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    .line 772
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 783
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    .line 784
    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 799
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    .line 800
    return-void
.end method

.method public static showAchievements()V
    .locals 3

    .prologue
    .line 1056
    sget-boolean v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    if-eqz v1, :cond_0

    .line 1057
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 1058
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 1059
    .local v0, "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/achievements/AchievementsClient;->showAchievementsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 1072
    .end local v0    # "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    :goto_0
    return-void

    .line 1062
    :cond_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$6;

    invoke-direct {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$6;-><init>()V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1443
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1444
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1445
    const-string v2, "Ok"

    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$13;

    invoke-direct {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$13;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1449
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1451
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1452
    return-void
.end method

.method public static showGameInvite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "fromName"    # Ljava/lang/String;
    .param p1, "fromID"    # Ljava/lang/String;

    .prologue
    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Play a live race with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->inviteMessage:Ljava/lang/String;

    .line 1231
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$9;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$9;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1265
    return-void
.end method

.method public static showLeaderboard()V
    .locals 3

    .prologue
    .line 1038
    sget-boolean v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    if-eqz v1, :cond_0

    .line 1039
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 1040
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;

    move-result-object v0

    .line 1041
    .local v0, "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;->showLeaderboardsOverlay([Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    .line 1053
    .end local v0    # "lbClient":Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    :goto_0
    return-void

    .line 1044
    :cond_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$5;

    invoke-direct {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$5;-><init>()V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showLeaderboardLive()V
    .locals 0

    .prologue
    .line 1364
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->showLeaderboard()V

    .line 1382
    return-void
.end method

.method public static showMessageBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 737
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 738
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 739
    new-instance v1, Lorg/cocos2dx/lib/DialogMessage;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->cocosHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    return-void
.end method

.method public static showTapjoy()V
    .locals 1

    .prologue
    .line 834
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 835
    return-void
.end method

.method public static showTapjoyFeatured()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 760
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 791
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    .line 792
    return-void
.end method

.method private storeRequestId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->requestIds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    return-void
.end method

.method public static submitAchievement(Ljava/lang/String;)V
    .locals 3
    .param p0, "achievementID"    # Ljava/lang/String;

    .prologue
    .line 980
    sget-boolean v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->AMAZON_GAMECIRCLE:Z

    if-eqz v1, :cond_0

    .line 981
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 982
    invoke-interface {v1}, Lcom/amazon/ags/api/AmazonGames;->getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;

    move-result-object v0

    .line 983
    .local v0, "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/amazon/ags/api/achievements/AchievementsClient;->updateProgress(Ljava/lang/String;F[Ljava/lang/Object;)Lcom/amazon/ags/api/AGResponseHandle;

    move-result-object v1

    .line 984
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$3;

    invoke-direct {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$3;-><init>()V

    .line 983
    invoke-interface {v1, v2}, Lcom/amazon/ags/api/AGResponseHandle;->setCallback(Lcom/amazon/ags/api/AGResponseCallback;)V

    .line 996
    .end local v0    # "acClient":Lcom/amazon/ags/api/achievements/AchievementsClient;
    :cond_0
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 821
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 807
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    .line 808
    return-void
.end method


# virtual methods
.method public getCurrentUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V
    .locals 2
    .param p1, "featuredApObject"    # Lcom/tapjoy/TapjoyFeaturedAppObject;

    .prologue
    .line 1527
    const-string v0, "HOT_DONUT_TAPJOY"

    const-string v1, "Displaying Featured App.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showFeaturedAppFullScreenAd()V

    .line 1531
    return-void
.end method

.method public getFeaturedAppResponseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1535
    const-string v0, "HOT_DONUT_TAPJOY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Featured App to display: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 1543
    const-string v0, "HOT_DONUT_TAPJOY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currencyName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string v0, "HOT_DONUT_TAPJOY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointTotal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeTapPoints(I)V

    .line 1552
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1558
    const-string v0, "HOT_DONUT_TAPJOY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTapPoints error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void
.end method

.method public isFullVersion()Z
    .locals 2

    .prologue
    .line 1710
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

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
    .line 1715
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotdonutlite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 430
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 431
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxActivity$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 473
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->myGameFeatures:Ljava/util/EnumSet;

    .line 430
    invoke-static {v0, v1, v2}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Application;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)Lcom/amazon/ags/api/AmazonGames;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->agsClient:Lcom/amazon/ags/api/AmazonGames;

    .line 488
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 498
    new-instance v0, Lcom/fbt/Pubnub;

    const-string v1, "pub-c-c545aa5c-838e-47a5-876b-19c778645d14"

    .line 499
    const-string v2, "sub-c-7f593a1a-56b1-11e2-a4a3-12313f022c90"

    .line 500
    const-string v3, ""

    .line 501
    const-string v4, ""

    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/fbt/Pubnub;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->pubnub:Lcom/fbt/Pubnub;

    .line 505
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;

    invoke-direct {v6, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 506
    .local v6, "d":Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v5

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->requestIds:Ljava/util/Map;

    .line 545
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 546
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 547
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->screenWidth:I

    .line 548
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->screenHeight:I

    .line 549
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 552
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->backgroundMusicPlayer:Lorg/cocos2dx/lib/Cocos2dxMusic;

    .line 553
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->soundPlayer:Lorg/cocos2dx/lib/Cocos2dxSound;

    .line 555
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 557
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mInstance:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 559
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Landroid/os/Handler;

    .line 563
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHotDonutPurchaseObserver:Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

    .line 564
    new-instance v0, Lcom/gamenug/hotdonut/BillingService;

    invoke-direct {v0}, Lcom/gamenug/hotdonut/BillingService;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mBillingService:Lcom/gamenug/hotdonut/BillingService;

    .line 565
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mBillingService:Lcom/gamenug/hotdonut/BillingService;

    invoke-virtual {v0, p0}, Lcom/gamenug/hotdonut/BillingService;->setContext(Landroid/content/Context;)V

    .line 571
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHotDonutPurchaseObserver:Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

    invoke-static {v0}, Lcom/gamenug/hotdonut/ResponseHandler;->register(Lcom/gamenug/hotdonut/PurchaseObserver;)V

    .line 572
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mBillingService:Lcom/gamenug/hotdonut/BillingService;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService;->checkBillingSupported()Z

    .line 575
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isFullVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 581
    const-string v1, "e01eeb56-ac7b-49aa-8c63-c7f16ae498c2"

    .line 582
    const-string v2, "Vhxf84ySBsJJcLgpHrNr"

    .line 580
    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 589
    const-string v1, "fb869328-421e-4dd4-9fa7-9e726fa20955"

    .line 588
    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 605
    :goto_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 650
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->cocosHandler:Landroid/os/Handler;

    .line 661
    return-void

    .line 591
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isLiteVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 594
    const-string v1, "800a3f43-7eef-46e6-9663-b29e5c5495ef"

    .line 595
    const-string v2, "Vk0JRM1cjNHqYFgWtd9N"

    .line 593
    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    const-string v1, "d5167769-ce71-495c-acaa-9e047f5387fe"

    .line 601
    const-string v2, "RiXHln0rHI3wBkn5Gzu4"

    .line 599
    invoke-static {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1670
    packed-switch p1, :pswitch_data_0

    .line 1678
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1672
    :pswitch_0
    const v0, 0x7f050014

    .line 1673
    const v1, 0x7f050015

    .line 1672
    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1675
    :pswitch_1
    const v0, 0x7f050012

    .line 1676
    const v1, 0x7f050013

    .line 1675
    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1670
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1640
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1643
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mBillingService:Lcom/gamenug/hotdonut/BillingService;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/BillingService;->unbind()V

    .line 1644
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1410
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1411
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 1412
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 1416
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->pauseBackgroundMusic()V

    .line 1421
    return-void
.end method

.method public onPurchaseAmazon(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".crystals20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const/16 v0, 0x14

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    .line 692
    :goto_0
    return-void

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".crystals50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    const/16 v0, 0x32

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    goto :goto_0

    .line 683
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".crystals200"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    goto :goto_0

    .line 685
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".crystals500"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    const/16 v0, 0x1f4

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    goto :goto_0

    .line 687
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".crystals2000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 688
    const/16 v0, 0x7d0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    goto/16 :goto_0

    .line 690
    :cond_4
    const-string v0, "Cocos2dxActivityIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMAZON Purchase itemId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    const-string v2, " Doesn\'t match any thing!! :P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1662
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1666
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1386
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1388
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 1390
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 1391
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 1394
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 1402
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->resumeBackgroundMusic()V

    .line 1406
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1652
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1655
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1584
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1586
    new-instance v0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-direct {v0, p0}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 1588
    .local v0, "PurchaseObserverAmazon":Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 1590
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isFullVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1591
    const-string v1, "E6ISINB4MXLLSIEX8SB4"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 1603
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHotDonutPurchaseObserver:Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

    invoke-static {v1}, Lcom/gamenug/hotdonut/ResponseHandler;->register(Lcom/gamenug/hotdonut/PurchaseObserver;)V

    .line 1606
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isLiteVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1596
    const-string v1, "UY7AGTBUX5UYSQ2XT8ER"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1600
    :cond_1
    const-string v1, "GAQYH5WE6DBKXF3ACZ9E"

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1631
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1633
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 1635
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mHotDonutPurchaseObserver:Lorg/cocos2dx/lib/Cocos2dxActivity$HotDonutPurchaseObserver;

    invoke-static {v0}, Lcom/gamenug/hotdonut/ResponseHandler;->unregister(Lcom/gamenug/hotdonut/PurchaseObserver;)V

    .line 1636
    return-void
.end method

.method public onV4VCResult(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "amount"    # I

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    invoke-static {p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeGiveCrystals(I)V

    .line 946
    :cond_0
    return-void
.end method

.method public runV4VC()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public saveWallpaper()V
    .locals 8

    .prologue
    .line 696
    const-string v3, "wall1.jpg"

    .line 698
    .local v3, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 699
    .local v4, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 700
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/hotdonut"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 702
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 703
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    const-string v7, "/hotdonut/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 702
    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 706
    .local v5, "out":Ljava/io/OutputStream;
    invoke-direct {p0, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 707
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 708
    const/4 v4, 0x0

    .line 709
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 710
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 711
    const/4 v5, 0x0

    .line 713
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 714
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/hotdonut/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 713
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v2, "f":Ljava/io/File;
    new-instance v6, Lcom/gamenug/hotdonut/SingleMediaScanner;

    invoke-direct {v6, p0, v2}, Lcom/gamenug/hotdonut/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Cocos2dxActivityIAP"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 1801
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->currentUser:Ljava/lang/String;

    .line 1802
    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1424
    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxActivity;->packageName:Ljava/lang/String;

    .line 1426
    const-string v0, ""

    .line 1427
    .local v0, "apkFilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1428
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1430
    .local v3, "packMgmr":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1435
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1436
    const-string v4, "apk path"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->nativeSetPaths(Ljava/lang/String;)V

    .line 1440
    return-void

    .line 1431
    :catch_0
    move-exception v2

    .line 1432
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1433
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to locate assets, aborting..."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public showAdColony()V
    .locals 0

    .prologue
    .line 1610
    return-void
.end method

.method public showChartboost()V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->isLiteVersion()Z

    .line 676
    return-void
.end method

.method public videoComplete()V
    .locals 2

    .prologue
    .line 1576
    const-string v0, "EASY_APP"

    const-string v1, "VIDEO COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void
.end method

.method public videoError(I)V
    .locals 3
    .param p1, "statusCode"    # I

    .prologue
    .line 1570
    const-string v0, "EASY_APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VIDEO ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void
.end method

.method public videoReady()V
    .locals 2

    .prologue
    .line 1564
    const-string v0, "EASY_APP"

    const-string v1, "VIDEO READY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void
.end method
