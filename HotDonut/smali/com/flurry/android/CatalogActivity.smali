.class public Lcom/flurry/android/CatalogActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static volatile a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Lcom/flurry/android/w;

.field private d:Ljava/util/List;

.field private e:Lcom/flurry/android/u;

.field private f:Lcom/flurry/android/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "<html><body><table height=\'100%\' width=\'100%\' border=\'0\'><tr><td style=\'vertical-align:middle;text-align:center\'>No recommendations available<p><button type=\'input\' onClick=\'activity.finish()\'>Back</button></td></tr></table></body></html>"

    sput-object v0, Lcom/flurry/android/CatalogActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    .line 426
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/p;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/p;

    return-object v0
.end method

.method private a(Lcom/flurry/android/x;)V
    .locals 3

    .prologue
    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/flurry/android/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    iget-object v1, p1, Lcom/flurry/android/x;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/android/w;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/CatalogActivity;)J
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/u;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 356
    instance-of v0, p1, Lcom/flurry/android/y;

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Lcom/flurry/android/x;

    invoke-direct {v0}, Lcom/flurry/android/x;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/p;

    iput-object v1, v0, Lcom/flurry/android/x;->a:Lcom/flurry/android/p;

    .line 362
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/x;->b:Ljava/lang/String;

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    invoke-virtual {v2}, Lcom/flurry/android/w;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/flurry/android/x;->c:Ljava/util/List;

    .line 364
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 371
    :cond_0
    new-instance v1, Lcom/flurry/android/x;

    invoke-direct {v1}, Lcom/flurry/android/x;-><init>()V

    move-object v0, p1

    .line 372
    check-cast v0, Lcom/flurry/android/y;

    .line 373
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    invoke-virtual {v2}, Lcom/flurry/android/u;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v0}, Lcom/flurry/android/y;->a()Lcom/flurry/android/p;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/p;

    .line 375
    invoke-virtual {v0}, Lcom/flurry/android/y;->a()Lcom/flurry/android/p;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/android/x;->a:Lcom/flurry/android/p;

    .line 377
    iget-object v0, v1, Lcom/flurry/android/x;->a:Lcom/flurry/android/p;

    new-instance v3, Lcom/flurry/android/f;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    invoke-virtual {v5}, Lcom/flurry/android/u;->k()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/android/f;-><init>(BJ)V

    invoke-virtual {v0, v3}, Lcom/flurry/android/p;->a(Lcom/flurry/android/f;)V

    .line 378
    iput-object v2, v1, Lcom/flurry/android/x;->b:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/w;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/android/x;->c:Ljava/util/List;

    .line 381
    invoke-direct {p0, v1}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/x;)V

    .line 405
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_3

    .line 390
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->a()V

    goto :goto_0

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->finish()V

    goto :goto_0

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/x;

    .line 402
    invoke-direct {p0, v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/x;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x2

    const/4 v5, -0x1

    .line 60
    const v0, 0x103000f

    invoke-virtual {p0, v0}, Lcom/flurry/android/CatalogActivity;->setTheme(I)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->b()Lcom/flurry/android/u;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    .line 65
    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "o"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/flurry/android/u;->b(J)Lcom/flurry/android/p;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/p;

    .line 75
    :cond_0
    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p0, p0}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/flurry/android/ab;->setId(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/flurry/android/ab;->setBackgroundColor(I)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setId(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->f:Lcom/flurry/android/p;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/flurry/android/q;

    invoke-direct {v3, p0}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/CatalogActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    const-string v3, "activity"

    invoke-virtual {v2, p0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/flurry/android/w;

    invoke-direct {v2, p0, p0}, Lcom/flurry/android/w;-><init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    iget-object v2, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/flurry/android/w;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0}, Lcom/flurry/android/ab;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/flurry/android/ab;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    invoke-virtual {v3}, Lcom/flurry/android/w;->getId()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v6, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/flurry/android/ab;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->c:Lcom/flurry/android/w;

    invoke-virtual {v6, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/android/CatalogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    sget-object v2, Lcom/flurry/android/CatalogActivity;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v6}, Lcom/flurry/android/CatalogActivity;->setContentView(Landroid/view/View;)V

    .line 76
    return-void

    .line 75
    :cond_2
    const-string v2, "u"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flurry/android/CatalogActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/android/CatalogActivity;->e:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->h()V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    return-void
.end method
