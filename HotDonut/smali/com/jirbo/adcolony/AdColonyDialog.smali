.class public Lcom/jirbo/adcolony/AdColonyDialog;
.super Landroid/view/View;
.source "AdColonyDialog.java"


# static fields
.field static current:Lcom/jirbo/adcolony/AdColonyDialog;

.field static img_bg:Lcom/jirbo/adcolony/AdColonyImage;

.field static img_cancel:Lcom/jirbo/adcolony/AdColonyImage;

.field static img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

.field static img_logo:Lcom/jirbo/adcolony/AdColonyImage;

.field public static maxed_out:I

.field public static post_popup:I

.field public static pre_popup:I

.field static scale:D

.field static text_paint:Landroid/graphics/Paint;

.field static widths:[F


# instance fields
.field ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field amount:Ljava/lang/String;

.field button_x1:I

.field button_x2:I

.field button_y:I

.field center_x:I

.field center_y:I

.field dialog_type:I

.field left_x:I

.field start_ms:J

.field top_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 18
    sput v1, Lcom/jirbo/adcolony/AdColonyDialog;->pre_popup:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/jirbo/adcolony/AdColonyDialog;->post_popup:I

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/jirbo/adcolony/AdColonyDialog;->maxed_out:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    .line 31
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->widths:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "dialog_type"    # I
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 90
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/AdColonyDialog;->start_ms:J

    .line 91
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyDialog;->amount:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    .line 93
    iput-object p3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 95
    invoke-static {}, Lcom/jirbo/adcolony/AdColonyDialog;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, -0x1

    .line 98
    .local v0, "match_parent":I
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    sput-object p0, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    goto :goto_0
.end method

.method public static isReady()Z
    .locals 14

    .prologue
    .line 35
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .line 71
    .local v0, "bg_key":Ljava/lang/String;
    .local v1, "cancel_key":Ljava/lang/String;
    .local v2, "confirm_key":Ljava/lang/String;
    .local v5, "logo_key":Ljava/lang/String;
    .local v6, "resources":Lcom/jirbo/adcolony/AdManager$ResourceGroup;
    :goto_0
    return v10

    .line 37
    .end local v0    # "bg_key":Ljava/lang/String;
    .end local v1    # "cancel_key":Ljava/lang/String;
    .end local v2    # "confirm_key":Ljava/lang/String;
    .end local v5    # "logo_key":Ljava/lang/String;
    .end local v6    # "resources":Lcom/jirbo/adcolony/AdManager$ResourceGroup;
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v10

    iget-object v6, v10, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    .line 39
    .restart local v6    # "resources":Lcom/jirbo/adcolony/AdManager$ResourceGroup;
    const-string v0, "v4vc-alert-bg@2x"

    .line 40
    .restart local v0    # "bg_key":Ljava/lang/String;
    const-string v5, "v4vc-alert-logo@2x"

    .line 41
    .restart local v5    # "logo_key":Ljava/lang/String;
    const-string v2, "v4vc-btn-confirm@2x"

    .line 42
    .restart local v2    # "confirm_key":Ljava/lang/String;
    const-string v1, "v4vc-btn-cancel@2x"

    .line 44
    .restart local v1    # "cancel_key":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v6, v5}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v6, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v6, v1}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->isReady(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    goto :goto_0

    .line 49
    :cond_4
    new-instance v10, Lcom/jirbo/adcolony/AdColonyImage;

    invoke-virtual {v6, v0}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    .line 50
    new-instance v10, Lcom/jirbo/adcolony/AdColonyImage;

    invoke-virtual {v6, v5}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_logo:Lcom/jirbo/adcolony/AdColonyImage;

    .line 51
    new-instance v10, Lcom/jirbo/adcolony/AdColonyImage;

    invoke-virtual {v6, v2}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    .line 52
    new-instance v10, Lcom/jirbo/adcolony/AdColonyImage;

    invoke-virtual {v6, v1}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jirbo/adcolony/AdManager$Resource;->filepath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;)V

    sput-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_cancel:Lcom/jirbo/adcolony/AdColonyImage;

    .line 54
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 55
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 56
    .local v9, "w":I
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 58
    .local v4, "h":I
    const/16 v10, 0x1e0

    if-le v9, v10, :cond_5

    const/16 v9, 0x1e0

    .line 59
    :cond_5
    const/16 v10, 0x1e0

    if-le v4, v10, :cond_6

    const/16 v4, 0x1e0

    .line 60
    :cond_6
    if-ge v9, v4, :cond_7

    int-to-double v10, v9

    const-wide/high16 v12, 0x4074000000000000L    # 320.0

    div-double v7, v10, v12

    .line 62
    .local v7, "scale":D
    :goto_1
    sput-wide v7, Lcom/jirbo/adcolony/AdColonyDialog;->scale:D

    .line 64
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v7, v11

    invoke-virtual {v10, v11, v12}, Lcom/jirbo/adcolony/AdColonyImage;->resize(D)V

    .line 65
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_logo:Lcom/jirbo/adcolony/AdColonyImage;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v7, v11

    invoke-virtual {v10, v11, v12}, Lcom/jirbo/adcolony/AdColonyImage;->resize(D)V

    .line 66
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v7, v11

    invoke-virtual {v10, v11, v12}, Lcom/jirbo/adcolony/AdColonyImage;->resize(D)V

    .line 67
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->img_cancel:Lcom/jirbo/adcolony/AdColonyImage;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, v7, v11

    invoke-virtual {v10, v11, v12}, Lcom/jirbo/adcolony/AdColonyImage;->resize(D)V

    .line 68
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    mul-double/2addr v11, v7

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    sget-object v10, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 71
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 61
    .end local v7    # "scale":D
    :cond_7
    int-to-double v10, v4

    const-wide/high16 v12, 0x4074000000000000L    # 320.0

    div-double v7, v10, v12

    .restart local v7    # "scale":D
    goto :goto_1
.end method


# virtual methods
.method buttonContains(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "button_x1"    # I
    .param p4, "button_y1"    # I

    .prologue
    const/4 v0, 0x0

    .line 151
    if-ge p1, p3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    if-lt p2, p4, :cond_0

    .line 153
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    add-int/2addr v1, p3

    if-ge p1, v1, :cond_0

    .line 154
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method calculatePosition()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    .line 210
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 211
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 212
    .local v2, "w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 214
    .local v1, "h":I
    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v3, v3, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->left_x:I

    .line 215
    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v3, v3, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x50

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->top_y:I

    .line 216
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->left_x:I

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    .line 217
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->top_y:I

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    .line 219
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->top_y:I

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    int-to-double v4, v4

    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v6, v6, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    int-to-double v6, v6

    sget-wide v8, Lcom/jirbo/adcolony/AdColonyDialog;->scale:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    .line 220
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    sget v4, Lcom/jirbo/adcolony/AdColonyDialog;->pre_popup:I

    if-ne v3, v4, :cond_0

    .line 222
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->left_x:I

    sget-wide v4, Lcom/jirbo/adcolony/AdColonyDialog;->scale:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    .line 223
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->left_x:I

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    int-to-double v4, v4

    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v6, v6, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    int-to-double v6, v6

    sget-wide v8, Lcom/jirbo/adcolony/AdColonyDialog;->scale:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x2:I

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    goto :goto_0
.end method

.method drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    sget-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v0, v0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v0, v0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 145
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->fontHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    add-int/2addr p3, v0

    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jirbo/adcolony/AdColonyDialog;->drawShadowText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 147
    return-void
.end method

.method drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "w":I
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    .line 124
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0xf0f10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    int-to-float v1, p2

    int-to-float v2, p3

    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method drawShadowText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "w":I
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    .line 135
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    add-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    sget-object v1, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    int-to-float v1, p2

    int-to-float v2, p3

    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    return-void
.end method

.method fontHeight()I
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->calculatePosition()V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 164
    .local v1, "cur_ms":J
    iget-wide v6, p0, Lcom/jirbo/adcolony/AdColonyDialog;->start_ms:J

    sub-long v6, v1, v6

    long-to-int v3, v6

    .line 165
    .local v3, "elapsed_ms":I
    mul-int/lit16 v6, v3, 0xff

    div-int/lit16 v0, v6, 0x3e8

    .line 166
    .local v0, "alpha":I
    const/16 v6, 0x80

    if-le v0, v6, :cond_0

    const/16 v0, 0x80

    .line 167
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 169
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_bg:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->left_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->top_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 171
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->fontHeight()I

    move-result v4

    .line 172
    .local v4, "h":I
    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v5, v6, 0x2

    .line 174
    .local v5, "vspace":I
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    sget v7, Lcom/jirbo/adcolony/AdColonyDialog;->post_popup:I

    if-ne v6, v7, :cond_2

    .line 176
    const-string v6, "Thanks for watching"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 177
    const-string v6, "the sponsored video."

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    sub-int/2addr v8, v5

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "You earned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->amount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 180
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 181
    const-string v6, "Ok"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 205
    :goto_0
    const/16 v6, 0x80

    if-eq v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->invalidate()V

    .line 206
    :cond_1
    return-void

    .line 183
    :cond_2
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    sget v7, Lcom/jirbo/adcolony/AdColonyDialog;->maxed_out:I

    if-ne v6, v7, :cond_3

    .line 185
    const-string v6, "You\'ve reached your daily reward"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 186
    const-string v6, "cap.  Please check back tomorrow"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    sub-int/2addr v8, v5

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 187
    const-string v6, "for more video rewards.  Thanks!"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 189
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 190
    const-string v6, "Ok"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 194
    :cond_3
    const-string v6, "Watch a video to earn"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    int-to-double v8, v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 195
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyDialog;->amount:Ljava/lang/String;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    int-to-double v8, v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 197
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_logo:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_x:I

    sget-object v8, Lcom/jirbo/adcolony/AdColonyDialog;->img_logo:Lcom/jirbo/adcolony/AdColonyImage;

    iget v8, v8, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->center_y:I

    sget-object v9, Lcom/jirbo/adcolony/AdColonyDialog;->img_logo:Lcom/jirbo/adcolony/AdColonyImage;

    iget v9, v9, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 199
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_confirm:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 200
    sget-object v6, Lcom/jirbo/adcolony/AdColonyDialog;->img_cancel:Lcom/jirbo/adcolony/AdColonyImage;

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x2:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/AdColonyImage;->draw(Landroid/graphics/Canvas;II)V

    .line 201
    const-string v6, "Yes"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 202
    const-string v6, "No"

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x2:I

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/AdColonyDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 237
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 238
    .local v1, "y":I
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    sget v3, Lcom/jirbo/adcolony/AdColonyDialog;->post_popup:I

    if-ne v2, v3, :cond_1

    .line 240
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyDialog;->buttonContains(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    sput-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    .line 243
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    invoke-interface {v2}, Lcom/jirbo/adcolony/AdColonyVideoListener;->onAdColonyVideoFinished()V

    .line 273
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 250
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :cond_1
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->dialog_type:I

    sget v3, Lcom/jirbo/adcolony/AdColonyDialog;->maxed_out:I

    if-ne v2, v3, :cond_2

    .line 252
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyDialog;->buttonContains(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    sput-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    .line 255
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 260
    :cond_2
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x1:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyDialog;->buttonContains(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sput-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    .line 263
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyVideoAd;->listener:Lcom/jirbo/adcolony/AdColonyVideoListener;

    sget-boolean v4, Lcom/jirbo/adcolony/AdColony;->vc_post_popup:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/AdColonyVideoAd;->showV4VC(Lcom/jirbo/adcolony/AdColonyVideoListener;Z)Z

    goto :goto_0

    .line 266
    :cond_3
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_x2:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyDialog;->buttonContains(IIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    sput-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->current:Lcom/jirbo/adcolony/AdColonyDialog;

    .line 269
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method textWidthOf(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 106
    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->text_paint:Landroid/graphics/Paint;

    sget-object v4, Lcom/jirbo/adcolony/AdColonyDialog;->widths:[F

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "w":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/AdColonyDialog;->widths:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    float-to-int v3, v2

    return v3
.end method
