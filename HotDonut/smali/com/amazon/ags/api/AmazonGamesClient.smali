.class public Lcom/amazon/ags/api/AmazonGamesClient;
.super Ljava/lang/Object;
.source "AmazonGamesClient.java"

# interfaces
.implements Lcom/amazon/ags/api/AmazonGames;


# static fields
.field private static final APK_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.ags.app"

.field private static final FEATURE_NAME:Ljava/lang/String; = "GC"

.field private static INSTANCE:Lcom/amazon/ags/api/AmazonGames; = null

.field private static final SOFTKEY_BAR_WRAPPER_CLASS_NAME:Ljava/lang/String; = "com.amazon.ags.app.util.SoftkeyBarWrapper"

.field private static final SOFTKEY_BAR_WRAPPER_SETUP_METHOD_NAME:Ljava/lang/String; = "setup"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

.field private amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field public final apiHandler:Landroid/os/Handler;

.field private final application:Landroid/app/Application;

.field private final context:Landroid/content/Context;

.field private leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

.field private profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "amazonGamesCallback"    # Lcom/amazon/ags/api/AmazonGamesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/amazon/ags/api/AmazonGamesCallback;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "features":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    .line 87
    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/amazon/ags/client/AmazonGamesStatusHandler;

    invoke-direct {v0, p2}, Lcom/amazon/ags/client/AmazonGamesStatusHandler;-><init>(Lcom/amazon/ags/api/AmazonGamesCallback;)V

    .line 89
    .local v0, "statusHandler":Landroid/os/Handler;
    new-instance v1, Lcom/amazon/ags/client/ServiceProxy;

    invoke-direct {v1, v0, p3}, Lcom/amazon/ags/client/ServiceProxy;-><init>(Landroid/os/Handler;Ljava/util/EnumSet;)V

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 90
    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/amazon/ags/client/AmazonGamesService;->bind(Landroid/content/Context;)V

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    .line 93
    new-instance v1, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .line 94
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    .line 95
    new-instance v1, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    .line 96
    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    iget-object v4, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-static {v1, v2, v3, v4}, Lcom/amazon/ags/overlay/PopUpManager;->initialize(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)Lcom/amazon/ags/overlay/PopUpManager;

    .line 98
    invoke-direct {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->enableSoftKeyButton()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/amazon/ags/client/AmazonGamesService;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "amazonGames"    # Lcom/amazon/ags/client/AmazonGamesService;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    .line 119
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 121
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/AmazonGamesService;->bind(Landroid/content/Context;)V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .line 126
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/client/achievements/AchievementsServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    .line 127
    new-instance v0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    .line 128
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ags/overlay/PopUpManager;->initialize(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)Lcom/amazon/ags/overlay/PopUpManager;

    .line 130
    invoke-direct {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->enableSoftKeyButton()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "amazonGames"    # Lcom/amazon/ags/client/AmazonGamesService;
    .param p3, "leaderboardsService"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsService;
    .param p4, "achievementsService"    # Lcom/amazon/ags/client/achievements/AchievementsService;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    .line 140
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 142
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/ags/client/AmazonGamesService;->bind(Landroid/content/Context;)V

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    .line 146
    iput-object p3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .line 147
    iput-object p4, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    .line 148
    new-instance v0, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/ags/client/profiles/ProfilesServiceProxy;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    .line 149
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-static {v0, p3, p4, v1}, Lcom/amazon/ags/overlay/PopUpManager;->initialize(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)Lcom/amazon/ags/overlay/PopUpManager;

    .line 151
    invoke-direct {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->enableSoftKeyButton()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/amazon/ags/api/AmazonGamesClient;->handleSoftkeyButtonPress()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/client/AmazonGamesService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    return-object v0
.end method

.method private enableSoftKeyButton()V
    .locals 11

    .prologue
    .line 220
    :try_start_0
    iget-object v7, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.amazon.ags.app"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 221
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 222
    .local v0, "apkName":Ljava/lang/String;
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 223
    .local v5, "myClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.amazon.ags.app.util.SoftkeyBarWrapper"

    const/4 v8, 0x1

    invoke-static {v7, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 224
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "setup"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/app/Application;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/content/BroadcastReceiver;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 226
    .local v6, "setupMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 228
    .local v4, "instance":Ljava/lang/Object;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amazon/ags/api/AmazonGamesClient;->application:Landroid/app/Application;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/amazon/ags/api/AmazonGamesClient$1;

    invoke-direct {v9, p0}, Lcom/amazon/ags/api/AmazonGamesClient$1;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_7

    .line 252
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v1    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "myClassLoader":Ldalvik/system/PathClassLoader;
    .end local v6    # "setupMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/InstantiationException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_6
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v7, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to enable softkey button: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/amazon/ags/api/AmazonGames;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->TAG:Ljava/lang/String;

    const-string v1, "AmazonGames is not initialized.  Be sure to call AmazonGamesClient.initialize() first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;

    return-object v0
.end method

.method private handleSoftkeyButtonPress()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/ags/api/AmazonGamesClient$2;

    invoke-direct {v1, p0}, Lcom/amazon/ags/api/AmazonGamesClient$2;-><init>(Lcom/amazon/ags/api/AmazonGamesClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)Lcom/amazon/ags/api/AmazonGames;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "callback"    # Lcom/amazon/ags/api/AmazonGamesCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lcom/amazon/ags/api/AmazonGamesCallback;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;)",
            "Lcom/amazon/ags/api/AmazonGames;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "features":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    const-class v1, Lcom/amazon/ags/api/AmazonGamesClient;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/ags/api/AmazonGamesClient;-><init>(Landroid/app/Application;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V

    sput-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;

    .line 104
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized initialize(Lcom/amazon/ags/api/AmazonGames;)V
    .locals 2
    .param p0, "inst"    # Lcom/amazon/ags/api/AmazonGames;

    .prologue
    .line 157
    const-class v0, Lcom/amazon/ags/api/AmazonGamesClient;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/amazon/ags/api/AmazonGamesClient;->INSTANCE:Lcom/amazon/ags/api/AmazonGames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v0

    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getAchievementsClient()Lcom/amazon/ags/api/achievements/AchievementsClient;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/achievements/AchievementsClientImpl;-><init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/achievements/AchievementsService;)V

    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getLeaderboardsClient()Lcom/amazon/ags/api/leaderboards/LeaderboardsClient;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/leaderboards/LeaderboardsClientImpl;-><init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;)V

    return-object v0
.end method

.method public final getProfilesClient()Lcom/amazon/ags/api/profiles/ProfilesClient;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->profilesService:Lcom/amazon/ags/client/profiles/ProfilesService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ags/client/profiles/ProfilesClientImpl;-><init>(Lcom/amazon/ags/client/AmazonGamesService;Lcom/amazon/ags/client/profiles/ProfilesService;)V

    return-object v0
.end method

.method public final getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v0}, Lcom/amazon/ags/client/AmazonGamesService;->getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getWhisperSyncClient()Lcom/amazon/ags/api/whispersync/WhisperSyncClient;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;

    iget-object v1, p0, Lcom/amazon/ags/api/AmazonGamesClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    iget-object v3, p0, Lcom/amazon/ags/api/AmazonGamesClient;->apiHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/ags/client/whispersync/WhisperSyncServiceProxy;-><init>(Landroid/content/Context;Lcom/amazon/ags/client/AmazonGamesService;Landroid/os/Handler;)V

    return-object v0
.end method

.method public initializeJni()V
    .locals 0

    .prologue
    .line 192
    invoke-static {p0}, Lcom/amazon/ags/jni/AGSJniHandler;->initializeJni(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 193
    return-void
.end method

.method public final isReady()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    invoke-interface {v0}, Lcom/amazon/ags/client/AmazonGamesService;->isReady()Z

    move-result v0

    return v0
.end method

.method public setPopUpLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V
    .locals 1
    .param p1, "location"    # Lcom/amazon/ags/api/overlay/PopUpLocation;

    .prologue
    .line 201
    sget-object v0, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    invoke-virtual {v0, p1}, Lcom/amazon/ags/overlay/PopUpPrefs;->setLocation(Lcom/amazon/ags/api/overlay/PopUpLocation;)V

    .line 202
    return-void
.end method
