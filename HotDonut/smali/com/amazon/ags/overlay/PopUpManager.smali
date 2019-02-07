.class public Lcom/amazon/ags/overlay/PopUpManager;
.super Ljava/lang/Object;
.source "PopUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGS_OL"

.field private static INSTANCE:Lcom/amazon/ags/overlay/PopUpManager;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

.field private final amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

.field private final context:Landroid/content/Context;

.field private final leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

.field private final preferences:Lcom/amazon/ags/overlay/PopUpPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGS_OL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/overlay/PopUpManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/overlay/PopUpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leaderboardsService"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsService;
    .param p3, "achievementsService"    # Lcom/amazon/ags/client/achievements/AchievementsService;
    .param p4, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    iput-object v0, p0, Lcom/amazon/ags/overlay/PopUpManager;->preferences:Lcom/amazon/ags/overlay/PopUpPrefs;

    .line 55
    iput-object p1, p0, Lcom/amazon/ags/overlay/PopUpManager;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/amazon/ags/overlay/PopUpManager;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    .line 57
    iput-object p3, p0, Lcom/amazon/ags/overlay/PopUpManager;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    .line 58
    iput-object p4, p0, Lcom/amazon/ags/overlay/PopUpManager;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/achievements/AchievementsService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/overlay/PopUpManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/ags/overlay/PopUpManager;->achievementsService:Lcom/amazon/ags/client/achievements/AchievementsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/leaderboards/LeaderboardsService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/overlay/PopUpManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/ags/overlay/PopUpManager;->leaderboardsService:Lcom/amazon/ags/client/leaderboards/LeaderboardsService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/ags/overlay/PopUpManager;)Lcom/amazon/ags/client/AmazonGamesService;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/ags/overlay/PopUpManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/ags/overlay/PopUpManager;->amazonGamesService:Lcom/amazon/ags/client/AmazonGamesService;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/amazon/ags/overlay/PopUpManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/ags/overlay/PopUpManager;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/amazon/ags/overlay/PopUpManager;->INSTANCE:Lcom/amazon/ags/overlay/PopUpManager;

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/amazon/ags/overlay/PopUpManager;->TAG:Ljava/lang/String;

    const-string v1, "Be sure to call initialize() first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    sget-object v0, Lcom/amazon/ags/overlay/PopUpManager;->INSTANCE:Lcom/amazon/ags/overlay/PopUpManager;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)Lcom/amazon/ags/overlay/PopUpManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "leaderboardsService"    # Lcom/amazon/ags/client/leaderboards/LeaderboardsService;
    .param p2, "achievementsService"    # Lcom/amazon/ags/client/achievements/AchievementsService;
    .param p3, "amazonGamesService"    # Lcom/amazon/ags/client/AmazonGamesService;

    .prologue
    .line 64
    const-class v1, Lcom/amazon/ags/overlay/PopUpManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amazon/ags/overlay/PopUpManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/ags/overlay/PopUpManager;-><init>(Landroid/content/Context;Lcom/amazon/ags/client/leaderboards/LeaderboardsService;Lcom/amazon/ags/client/achievements/AchievementsService;Lcom/amazon/ags/client/AmazonGamesService;)V

    sput-object v0, Lcom/amazon/ags/overlay/PopUpManager;->INSTANCE:Lcom/amazon/ags/overlay/PopUpManager;

    .line 65
    sget-object v0, Lcom/amazon/ags/overlay/PopUpManager;->INSTANCE:Lcom/amazon/ags/overlay/PopUpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public executePopUp(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "overlayActionCode"    # I

    .prologue
    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, "overlayDataBundle":Landroid/os/Bundle;
    new-instance v0, Lcom/amazon/ags/overlay/PopUpContent;

    invoke-direct {v0, p2, p1, v1}, Lcom/amazon/ags/overlay/PopUpContent;-><init>(ILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 78
    .local v0, "content":Lcom/amazon/ags/overlay/PopUpContent;
    invoke-virtual {p0, v0}, Lcom/amazon/ags/overlay/PopUpManager;->executePopUp(Lcom/amazon/ags/overlay/PopUpContent;)V

    .line 79
    return-void
.end method

.method public executePopUp(Lcom/amazon/ags/overlay/PopUpContent;)V
    .locals 7
    .param p1, "content"    # Lcom/amazon/ags/overlay/PopUpContent;

    .prologue
    .line 82
    sget-object v1, Lcom/amazon/ags/overlay/PopUpManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering executePopUp with content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/amazon/ags/overlay/PopUpManager;->preferences:Lcom/amazon/ags/overlay/PopUpPrefs;

    invoke-virtual {v1}, Lcom/amazon/ags/overlay/PopUpPrefs;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lcom/amazon/ags/overlay/PopUpManager;->TAG:Ljava/lang/String;

    const-string v2, "Pop-ups disabled, skipping pop-up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v6, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    .line 88
    .local v6, "prefs":Lcom/amazon/ags/overlay/PopUpPrefs;
    new-instance v0, Lcom/amazon/ags/overlay/AGSToast;

    iget-object v1, p0, Lcom/amazon/ags/overlay/PopUpManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/amazon/ags/overlay/PopUpPrefs;->getLocation()Lcom/amazon/ags/api/overlay/PopUpLocation;

    move-result-object v3

    invoke-virtual {v6}, Lcom/amazon/ags/overlay/PopUpPrefs;->getFadeInDuration()I

    move-result v4

    invoke-virtual {v6}, Lcom/amazon/ags/overlay/PopUpPrefs;->getFadeOutDuration()I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/overlay/AGSToast;-><init>(Landroid/content/Context;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/api/overlay/PopUpLocation;II)V

    .line 90
    .local v0, "overlay":Lcom/amazon/ags/overlay/AGSToast;
    new-instance v1, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;-><init>(Lcom/amazon/ags/overlay/PopUpManager;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/overlay/AGSToast;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/overlay/AGSToast;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v0}, Lcom/amazon/ags/overlay/AGSToast;->show()V

    goto :goto_0
.end method

.method public executeWelcomeBackPopUp(Landroid/widget/RemoteViews;I)V
    .locals 8
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "overlayActionCode"    # I

    .prologue
    .line 102
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v6, "overlayDataBundle":Landroid/os/Bundle;
    new-instance v2, Lcom/amazon/ags/overlay/PopUpContent;

    invoke-direct {v2, p2, p1, v6}, Lcom/amazon/ags/overlay/PopUpContent;-><init>(ILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 104
    .local v2, "content":Lcom/amazon/ags/overlay/PopUpContent;
    sget-object v7, Lcom/amazon/ags/overlay/PopUpPrefs;->INSTANCE:Lcom/amazon/ags/overlay/PopUpPrefs;

    .line 105
    .local v7, "prefs":Lcom/amazon/ags/overlay/PopUpPrefs;
    new-instance v0, Lcom/amazon/ags/overlay/AGSToast;

    iget-object v1, p0, Lcom/amazon/ags/overlay/PopUpManager;->context:Landroid/content/Context;

    sget-object v3, Lcom/amazon/ags/api/overlay/PopUpLocation;->BOTTOM_CENTER:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-virtual {v7}, Lcom/amazon/ags/overlay/PopUpPrefs;->getWelcomeBackFadeInDuration()I

    move-result v4

    invoke-virtual {v7}, Lcom/amazon/ags/overlay/PopUpPrefs;->getWelcomeBackFadeOutDuration()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/overlay/AGSToast;-><init>(Landroid/content/Context;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/api/overlay/PopUpLocation;II)V

    .line 107
    .local v0, "overlay":Lcom/amazon/ags/overlay/AGSToast;
    new-instance v1, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;

    invoke-direct {v1, p0, v2, v0}, Lcom/amazon/ags/overlay/PopUpManager$AGOverlayClickListener;-><init>(Lcom/amazon/ags/overlay/PopUpManager;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/overlay/AGSToast;)V

    invoke-virtual {v0, v1}, Lcom/amazon/ags/overlay/AGSToast;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v0}, Lcom/amazon/ags/overlay/AGSToast;->show()V

    .line 109
    return-void
.end method
