.class public Lcom/jirbo/adcolony/AdColony;
.super Ljava/lang/Object;
.source "AdColony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColony$URLS;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "AdColony"

.field private static ad_manager:Lcom/jirbo/adcolony/AdManager; = null

.field static final adc_version:Ljava/lang/String; = "1.9.11"

.field static ads_disabled:Z = false

.field static android_id:Ljava/lang/String; = null

.field static carrier_name:Ljava/lang/String; = null

.field private static device_id:Ljava/lang/String; = null

.field static imei:Ljava/lang/String; = null

.field static is_tablet:Z = false

.field static language:Ljava/lang/String; = null

.field static on_vc_result_handler:Landroid/os/Handler; = null

.field static on_vc_success_handler:Landroid/os/Handler; = null

.field static final timeout_ms:I = 0x7530

.field static url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

.field static vc_listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyV4VCListener;",
            ">;"
        }
    .end annotation
.end field

.field static vc_post_popup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/AdColony;->vc_listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static adManager()Lcom/jirbo/adcolony/AdManager;
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdColony.configure() must be called before any other AdColony methods."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    return-object v0
.end method

.method public static addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 244
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->vc_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "app_version"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;

    .prologue
    .line 120
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    if-eqz v7, :cond_1

    .line 122
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    iget-object v7, v7, Lcom/jirbo/adcolony/AdManager;->app_id:Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, p2, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 124
    const-string v7, "ADC configure() called twice"

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->trace(Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    invoke-virtual {v7}, Lcom/jirbo/adcolony/AdManager;->terminate()V

    .line 127
    const/4 v7, 0x0

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    .line 131
    :cond_1
    new-instance v7, Lcom/jirbo/adcolony/OnVCResultHandler;

    invoke-direct {v7}, Lcom/jirbo/adcolony/OnVCResultHandler;-><init>()V

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->on_vc_result_handler:Landroid/os/Handler;

    .line 132
    new-instance v7, Lcom/jirbo/adcolony/OnVCSuccessHandler;

    invoke-direct {v7}, Lcom/jirbo/adcolony/OnVCSuccessHandler;-><init>()V

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->on_vc_success_handler:Landroid/os/Handler;

    .line 134
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->vc_listeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v7, v8

    .line 143
    .local v3, "screenWidth":F
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v7, v8

    .line 144
    .local v2, "screenHeight":F
    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 147
    .local v4, "size":D
    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    cmpl-double v7, v4, v7

    if-ltz v7, :cond_6

    const/4 v7, 0x1

    :goto_0
    sput-boolean v7, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "size":D
    :goto_1
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->hasLargeMemory(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 156
    const/4 v7, 0x1

    sput-boolean v7, Lcom/jirbo/adcolony/AdColony;->ads_disabled:Z

    .line 159
    :cond_2
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 160
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    .line 161
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "unknown"

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    .line 164
    :goto_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    .line 165
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, ""

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->imei:Ljava/lang/String;

    .line 167
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    .line 168
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    if-nez v7, :cond_4

    const-string v7, ""

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->android_id:Ljava/lang/String;

    .line 170
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->language:Ljava/lang/String;

    .line 174
    new-instance v7, Lcom/jirbo/adcolony/AdManager;

    invoke-direct {v7, p0}, Lcom/jirbo/adcolony/AdManager;-><init>(Landroid/app/Activity;)V

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    .line 176
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->configure()V

    .line 177
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    invoke-virtual {v7, p2}, Lcom/jirbo/adcolony/AdManager;->configure([Ljava/lang/String;)V

    .line 179
    sget-object v7, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    if-nez v7, :cond_5

    new-instance v7, Lcom/jirbo/adcolony/Analytics;

    invoke-direct {v7}, Lcom/jirbo/adcolony/Analytics;-><init>()V

    .line 180
    :cond_5
    sget-object v7, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    invoke-virtual {v7, p1}, Lcom/jirbo/adcolony/Analytics;->configure(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->configure()V

    .line 183
    return-void

    .line 147
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "screenHeight":F
    .restart local v3    # "screenWidth":F
    .restart local v4    # "size":D
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 149
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "size":D
    :catch_0
    move-exception v6

    .line 151
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "AdColony"

    const-string v8, "Failed to compute screen size"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 162
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v1    # "manager":Landroid/telephony/TelephonyManager;
    :cond_7
    sget-object v7, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    invoke-static {v7}, Lcom/jirbo/adcolony/NetworkStatus;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/jirbo/adcolony/AdColony;->carrier_name:Ljava/lang/String;

    goto :goto_2
.end method

.method public static enable(Z)V
    .locals 1
    .param p0, "setting"    # Z

    .prologue
    .line 102
    if-nez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jirbo/adcolony/AdColony;->ads_disabled:Z

    .line 103
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdManager;->startRefresh()V

    .line 104
    :cond_0
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->device_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/AdColony;->device_id:Ljava/lang/String;

    .line 267
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method static hasLargeMemory(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 346
    :try_start_0
    const-string v5, "android.app.ActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 347
    .local v0, "classActivityManager":Ljava/lang/Class;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 348
    .local v4, "mgr":Landroid/app/ActivityManager;
    const-string v7, "getMemoryClass"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 349
    .local v2, "m_getMemoryClass":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 351
    .local v3, "mb":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device memory class: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " MB"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    const/16 v5, 0x10

    if-le v3, v5, :cond_0

    const/4 v5, 0x1

    .line 357
    .end local v0    # "classActivityManager":Ljava/lang/Class;
    .end local v2    # "m_getMemoryClass":Ljava/lang/reflect/Method;
    .end local v3    # "mb":I
    .end local v4    # "mgr":Landroid/app/ActivityManager;
    :goto_0
    return v5

    .restart local v0    # "classActivityManager":Ljava/lang/Class;
    .restart local v2    # "m_getMemoryClass":Ljava/lang/reflect/Method;
    .restart local v3    # "mb":I
    .restart local v4    # "mgr":Landroid/app/ActivityManager;
    :cond_0
    move v5, v6

    .line 352
    goto :goto_0

    .line 354
    .end local v0    # "classActivityManager":Ljava/lang/Class;
    .end local v2    # "m_getMemoryClass":Ljava/lang/reflect/Method;
    .end local v3    # "mb":I
    .end local v4    # "mgr":Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 356
    .local v1, "err":Ljava/lang/Exception;
    const-string v5, "Device memory class: 16 MB"

    invoke-static {v5}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    move v5, v6

    .line 357
    goto :goto_0
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    return v0
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "AdColony"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method static logError(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "AdColony"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, "AdColony"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method static onV4VCResult(I)V
    .locals 7
    .param p0, "playcount"    # I

    .prologue
    .line 363
    if-lez p0, :cond_1

    const/4 v3, 0x1

    .line 364
    .local v3, "success":Z
    :goto_0
    sget-object v5, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_name:Ljava/lang/String;

    .line 365
    .local v5, "vc_name":Ljava/lang/String;
    sget v4, Lcom/jirbo/adcolony/AdColonyVideoAd;->vc_amount:I

    .line 366
    .local v4, "vc_amount":I
    if-nez v3, :cond_0

    const/4 p0, 0x1

    .line 368
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p0, :cond_3

    .line 370
    sget-object v6, Lcom/jirbo/adcolony/AdColony;->vc_listeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .line 372
    .local v2, "listener":Lcom/jirbo/adcolony/AdColonyV4VCListener;
    invoke-interface {v2, v3, v5, v4}, Lcom/jirbo/adcolony/AdColonyV4VCListener;->onV4VCResult(ZLjava/lang/String;I)V

    goto :goto_2

    .line 363
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/jirbo/adcolony/AdColonyV4VCListener;
    .end local v3    # "success":Z
    .end local v4    # "vc_amount":I
    .end local v5    # "vc_name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 368
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "success":Z
    .restart local v4    # "vc_amount":I
    .restart local v5    # "vc_name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method static openPrivateInputFile(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method static openPrivateOutputFile(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/Analytics;->updateActiveStatus(Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public static removeV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 250
    sget-object v0, Lcom/jirbo/adcolony/AdColony;->vc_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public static resume(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 190
    sget-object v4, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    if-nez v4, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 191
    :cond_1
    sget-object v4, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    iput-object p0, v4, Lcom/jirbo/adcolony/AdManager;->activity:Landroid/app/Activity;

    .line 192
    sget-object v4, Lcom/jirbo/adcolony/AdColony;->ad_manager:Lcom/jirbo/adcolony/AdManager;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdManager;->setUpAdColonyFolder()V

    .line 194
    sget-object v4, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/jirbo/adcolony/Analytics;->instance:Lcom/jirbo/adcolony/Analytics;

    invoke-virtual {v4, v3}, Lcom/jirbo/adcolony/Analytics;->updateActiveStatus(Z)V

    .line 196
    :cond_2
    sget-boolean v4, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    if-eqz v4, :cond_4

    .line 198
    sget-boolean v2, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v2, :cond_3

    .line 200
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v2, v3

    .line 206
    goto :goto_0

    .line 204
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    :cond_4
    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    if-eqz v4, :cond_0

    .line 210
    sget-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    .line 211
    .local v0, "cur":Lcom/jirbo/adcolony/AdColonyDialog;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 212
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    :cond_5
    new-instance v2, Lcom/jirbo/adcolony/AdColonyDialog;

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyDialog;->amount:Ljava/lang/String;

    iget v5, v0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    iget-object v6, v0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v2, v4, v5, v6}, Lcom/jirbo/adcolony/AdColonyDialog;-><init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyVideoAd;)V

    move v2, v3

    .line 214
    goto :goto_0
.end method

.method public static setDeviceID(Ljava/lang/String;)V
    .locals 0
    .param p0, "device_id"    # Ljava/lang/String;

    .prologue
    .line 278
    sput-object p0, Lcom/jirbo/adcolony/AdColony;->device_id:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public static setURLListener(Lcom/jirbo/adcolony/AdColonyURLListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyURLListener;

    .prologue
    .line 235
    sput-object p0, Lcom/jirbo/adcolony/AdColony;->url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

    .line 236
    return-void
.end method

.method static trace(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    return-void
.end method
