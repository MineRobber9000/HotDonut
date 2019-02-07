.class public Lcom/amazon/ags/overlay/AGSToast;
.super Landroid/widget/RelativeLayout;
.source "AGSToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/overlay/AGSToast$3;
    }
.end annotation


# static fields
.field private static BACKGROUND_COLOR:I = 0x0

.field private static final FEATURE_NAME:Ljava/lang/String; = "AGS_OL"

.field private static final TAG:Ljava/lang/String;

.field private static VERTICAL_MARGIN_BOTTOM_LANDSCAPE:F

.field private static VERTICAL_MARGIN_BOTTOM_PORTRAIT:F

.field private static VERTICAL_MARGIN_TOP_LANDSCAPE:F

.field private static VERTICAL_MARGIN_TOP_PORTRAIT:F


# instance fields
.field private final context:Landroid/content/Context;

.field private final fadeInDuration:I

.field private final fadeOutDuration:I

.field private hideAnimation:Landroid/view/animation/Animation;

.field private isShowing:Z

.field private final popUpContent:Lcom/amazon/ags/overlay/PopUpContent;

.field private final popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

.field private showAnimation:Landroid/view/animation/Animation;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x3d23d70a    # 0.04f

    const v2, 0x3ca3d70a    # 0.02f

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGS_OL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/overlay/AGSToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/overlay/AGSToast;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/amazon/ags/overlay/AGSToast;->BACKGROUND_COLOR:I

    .line 39
    sput v2, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_PORTRAIT:F

    .line 40
    sput v3, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_BOTTOM_PORTRAIT:F

    .line 41
    sput v2, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_LANDSCAPE:F

    .line 42
    sput v3, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_BOTTOM_LANDSCAPE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ags/overlay/PopUpContent;Lcom/amazon/ags/api/overlay/PopUpLocation;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popUpContent"    # Lcom/amazon/ags/overlay/PopUpContent;
    .param p3, "popUpLocation"    # Lcom/amazon/ags/api/overlay/PopUpLocation;
    .param p4, "fadeInDuration"    # I
    .param p5, "fadeOutDuration"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/overlay/AGSToast;->isShowing:Z

    .line 60
    iput-object p1, p0, Lcom/amazon/ags/overlay/AGSToast;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpContent:Lcom/amazon/ags/overlay/PopUpContent;

    .line 62
    iput p4, p0, Lcom/amazon/ags/overlay/AGSToast;->fadeInDuration:I

    .line 63
    iput p5, p0, Lcom/amazon/ags/overlay/AGSToast;->fadeOutDuration:I

    .line 64
    iput-object p3, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    .line 65
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->setupGameCircleToast()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ags/overlay/AGSToast;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/overlay/AGSToast;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->finishHide()V

    return-void
.end method

.method private finishHide()V
    .locals 1

    .prologue
    .line 246
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amazon/ags/overlay/AGSToast;->setVisibility(I)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/overlay/AGSToast;->isShowing:Z

    .line 248
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method private getGravity(Lcom/amazon/ags/api/overlay/PopUpLocation;)I
    .locals 3
    .param p1, "location"    # Lcom/amazon/ags/api/overlay/PopUpLocation;

    .prologue
    const/16 v0, 0x33

    .line 153
    sget-object v1, Lcom/amazon/ags/overlay/AGSToast$3;->$SwitchMap$com$amazon$ags$api$overlay$PopUpLocation:[I

    invoke-virtual {p1}, Lcom/amazon/ags/api/overlay/PopUpLocation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    return v0

    .line 157
    :pswitch_1
    const/16 v0, 0x35

    goto :goto_0

    .line 159
    :pswitch_2
    const/16 v0, 0x53

    goto :goto_0

    .line 161
    :pswitch_3
    const/16 v0, 0x55

    goto :goto_0

    .line 163
    :pswitch_4
    const/16 v0, 0x31

    goto :goto_0

    .line 165
    :pswitch_5
    const/16 v0, 0x51

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private getVerticalMargin(Lcom/amazon/ags/api/overlay/PopUpLocation;)F
    .locals 4
    .param p1, "location"    # Lcom/amazon/ags/api/overlay/PopUpLocation;

    .prologue
    const/4 v3, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/amazon/ags/overlay/AGSToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 128
    .local v0, "orientation":I
    sget-object v1, Lcom/amazon/ags/overlay/AGSToast$3;->$SwitchMap$com$amazon$ags$api$overlay$PopUpLocation:[I

    invoke-virtual {p1}, Lcom/amazon/ags/api/overlay/PopUpLocation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 140
    if-ne v0, v3, :cond_2

    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_PORTRAIT:F

    :goto_0
    return v1

    .line 132
    :pswitch_0
    if-ne v0, v3, :cond_0

    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_PORTRAIT:F

    goto :goto_0

    :cond_0
    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_LANDSCAPE:F

    goto :goto_0

    .line 137
    :pswitch_1
    if-ne v0, v3, :cond_1

    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_BOTTOM_PORTRAIT:F

    goto :goto_0

    :cond_1
    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_BOTTOM_LANDSCAPE:F

    goto :goto_0

    .line 140
    :cond_2
    sget v1, Lcom/amazon/ags/overlay/AGSToast;->VERTICAL_MARGIN_TOP_LANDSCAPE:F

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupDefaultAnimations()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/amazon/ags/overlay/AGSToast;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->showAnimation:Landroid/view/animation/Animation;

    .line 97
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->showAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/amazon/ags/overlay/AGSToast;->fadeInDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/ags/overlay/AGSToast;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->hideAnimation:Landroid/view/animation/Animation;

    .line 100
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->hideAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/amazon/ags/overlay/AGSToast;->fadeOutDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    return-void
.end method

.method private setupGameCircleToast()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/amazon/ags/overlay/AGSToast;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->windowManager:Landroid/view/WindowManager;

    .line 70
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpContent:Lcom/amazon/ags/overlay/PopUpContent;

    invoke-virtual {v0}, Lcom/amazon/ags/overlay/PopUpContent;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/ags/overlay/AGSToast;->setupRemoteView(Landroid/widget/RemoteViews;)V

    .line 71
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->setupWindow()V

    .line 72
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->setupDefaultAnimations()V

    .line 73
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->setupShowAnimationCallBack()V

    .line 74
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->setupHideAnimationCallBack()V

    .line 75
    return-void
.end method

.method private setupHideAnimationCallBack()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->hideAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/amazon/ags/overlay/AGSToast$1;

    invoke-direct {v1, p0}, Lcom/amazon/ags/overlay/AGSToast$1;-><init>(Lcom/amazon/ags/overlay/AGSToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    return-void
.end method

.method private setupRemoteView(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 172
    sget-object v1, Lcom/amazon/ags/overlay/AGSToast;->TAG:Ljava/lang/String;

    const-string v2, "Entering setupRemoteView..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v1, Lcom/amazon/ags/overlay/AGSToast;->BACKGROUND_COLOR:I

    invoke-virtual {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->setBackgroundColor(I)V

    .line 175
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "viewContent":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/amazon/ags/overlay/AGSToast;->addView(Landroid/view/View;)V

    .line 178
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->setVisibility(I)V

    .line 179
    return-void
.end method

.method private setupShowAnimationCallBack()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast;->showAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/amazon/ags/overlay/AGSToast$2;

    invoke-direct {v1, p0}, Lcom/amazon/ags/overlay/AGSToast$2;-><init>(Lcom/amazon/ags/overlay/AGSToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 217
    return-void
.end method

.method private setupWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 105
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 106
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x120

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-direct {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->getGravity(Lcom/amazon/ags/api/overlay/PopUpLocation;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-direct {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->getVerticalMargin(Lcom/amazon/ags/api/overlay/PopUpLocation;)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 114
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 115
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amazon/ags/overlay/AGSToast;->finishHide()V

    .line 93
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 234
    iget-boolean v1, p0, Lcom/amazon/ags/overlay/AGSToast;->isShowing:Z

    if-nez v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 239
    sget-object v1, Lcom/amazon/ags/overlay/AGSToast;->TAG:Ljava/lang/String;

    const-string v2, "pop-up child view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 80
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 81
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x120

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 84
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 85
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 86
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-direct {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->getGravity(Lcom/amazon/ags/api/overlay/PopUpLocation;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->popUpLocation:Lcom/amazon/ags/api/overlay/PopUpLocation;

    invoke-direct {p0, v1}, Lcom/amazon/ags/overlay/AGSToast;->getVerticalMargin(Lcom/amazon/ags/api/overlay/PopUpLocation;)F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 88
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-boolean v1, p0, Lcom/amazon/ags/overlay/AGSToast;->isShowing:Z

    if-eqz v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, v2}, Lcom/amazon/ags/overlay/AGSToast;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 225
    sget-object v1, Lcom/amazon/ags/overlay/AGSToast;->TAG:Ljava/lang/String;

    const-string v2, "pop-up child view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/overlay/AGSToast;->showAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/amazon/ags/overlay/AGSToast;->setVisibility(I)V

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/ags/overlay/AGSToast;->isShowing:Z

    goto :goto_0
.end method
