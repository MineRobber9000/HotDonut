.class public Lcom/jirbo/adcolony/AdColonyBannerAd;
.super Landroid/widget/FrameLayout;
.source "AdColonyBannerAd.java"


# instance fields
.field banner_height:I

.field banner_width:I

.field custom:Z

.field hidden:Z

.field loaded:Z

.field refresh_handler:Landroid/os/Handler;

.field url:Ljava/lang/String;

.field web_view:Landroid/webkit/WebView;

.field zone_id:Ljava/lang/String;

.field zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x140

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 36
    const/16 v0, 0x32

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    .line 40
    new-instance v0, Lcom/jirbo/adcolony/AdColonyBannerAd$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyBannerAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    .line 110
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->init()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v7, 0x140

    iput v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 36
    const/16 v7, 0x32

    iput v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    .line 40
    new-instance v7, Lcom/jirbo/adcolony/AdColonyBannerAd$1;

    invoke-direct {v7, p0}, Lcom/jirbo/adcolony/AdColonyBannerAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V

    iput-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    .line 56
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    .line 58
    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v8, "tag"

    invoke-interface {p2, v7, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "tag_value":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 61
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "tags":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 64
    .local v4, "tag":Ljava/lang/String;
    const-string v7, "url:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->custom:Z

    .line 67
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const-string v7, "zone:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_id:Ljava/lang/String;

    goto :goto_1

    .line 73
    :cond_1
    const-string v7, "width:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    const/4 v7, 0x6

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v7, "Malformed \'width\' in banner layout - must be followed by an integer number of pixels (do not specify \'px\')."

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v7, "height:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    const/4 v7, 0x7

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 90
    :catch_1
    move-exception v1

    .line 92
    .restart local v1    # "err":Ljava/lang/NumberFormatException;
    const-string v7, "Malformed \'height\' in banner layout - must be followed by an integer number of pixels (do not specify \'px\')."

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed tag \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in banner layout."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "tags":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x140

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 36
    const/16 v0, 0x32

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    .line 40
    new-instance v0, Lcom/jirbo/adcolony/AdColonyBannerAd$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyBannerAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    .line 117
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_id:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    .line 119
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "banner_width"    # I
    .param p4, "banner_height"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x140

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 36
    const/16 v0, 0x32

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    .line 40
    new-instance v0, Lcom/jirbo/adcolony/AdColonyBannerAd$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyBannerAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    .line 128
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    .line 129
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 130
    iput p4, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->custom:Z

    .line 132
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->init()V

    .line 133
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    .line 206
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->loaded:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->removeAllViews()V

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyBannerAd$2;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyBannerAd$2;-><init>(Lcom/jirbo/adcolony/AdColonyBannerAd;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 171
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 173
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "old_w"    # I
    .param p4, "old_h"    # I

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 280
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 282
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->loaded:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    if-nez v3, :cond_0

    .line 284
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->loaded:Z

    .line 285
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->removeAllViews()V

    .line 288
    :cond_0
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    if-eqz v3, :cond_1

    .line 290
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 291
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 292
    .local v2, "display_width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 293
    .local v1, "display_height":I
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    int-to-double v6, p1

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 296
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "display_height":I
    .end local v2    # "display_width":I
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 214
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isConfigured()Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-boolean v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->custom:Z

    if-nez v6, :cond_5

    .line 224
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_id:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    invoke-virtual {v6}, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->zone()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_id:Ljava/lang/String;

    .line 225
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/AdManager;->findBannerZoneInfo(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    .line 227
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/jirbo/adcolony/AdColony;->ads_disabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "active"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "YES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 232
    :cond_2
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 236
    :cond_3
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "reload_period"

    invoke-virtual {v6, v7, v10}, Lcom/jirbo/adcolony/JSON$JSObject;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v4, v6, 0x3e8

    .line 237
    .local v4, "reload_period":I
    if-lez v4, :cond_4

    .line 239
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->refresh_handler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    :cond_4
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->zone_info:Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdManager$BannerZoneInfo;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v7, "url"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/JSON$JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    .line 245
    .end local v4    # "reload_period":I
    :cond_5
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    if-nez v6, :cond_8

    .line 247
    :cond_6
    const-string v5, "windowtype=banner"

    .line 248
    .local v5, "search_phrase":Ljava/lang/String;
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, "i":I
    if-eq v2, v11, :cond_8

    .line 251
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "part":Ljava/lang/String;
    const/16 v6, 0x26

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 253
    if-eq v2, v11, :cond_7

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_7
    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "dims":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 259
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "dims":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "part":Ljava/lang/String;
    .end local v5    # "search_phrase":Ljava/lang/String;
    :cond_8
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Banner URL:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 272
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .restart local v0    # "dims":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "part":Ljava/lang/String;
    .restart local v5    # "search_phrase":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "err":Ljava/lang/Exception;
    const/16 v6, 0x140

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_width:I

    .line 264
    const/16 v6, 0x32

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->banner_height:I

    goto :goto_1
.end method

.method public show()V
    .locals 5

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->hidden:Z

    .line 193
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->loaded:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->removeAllViews()V

    .line 196
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBannerAd;->web_view:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBannerAd;->getHeight()I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/AdColonyBannerAd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_0
    return-void
.end method
