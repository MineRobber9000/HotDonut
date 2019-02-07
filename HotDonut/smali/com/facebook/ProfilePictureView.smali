.class public Lcom/facebook/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_ID_KEY:Ljava/lang/String; = "ProfilePictureView_userId"


# instance fields
.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/ImageRequest;

.field private onErrorListener:Lcom/facebook/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private queryHeight:I

.field private queryWidth:I

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ProfilePictureView;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    .line 101
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    .line 101
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    .line 128
    invoke-direct {p0, p1}, Lcom/facebook/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/facebook/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    .line 101
    iput v0, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, p2}, Lcom/facebook/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/ProfilePictureView;Lcom/facebook/ImageResponse;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/facebook/ProfilePictureView;->processResponse(Lcom/facebook/ImageResponse;)V

    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .locals 3
    .param p1, "forcePreset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "dimensionId":I
    iget v2, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    packed-switch v2, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 473
    :pswitch_0
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 476
    :pswitch_1
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 477
    goto :goto_1

    .line 479
    :pswitch_2
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    .line 480
    goto :goto_1

    .line 482
    :pswitch_3
    if-eqz p1, :cond_0

    .line 485
    sget v0, Lcom/facebook/android/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 486
    goto :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 350
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->removeAllViews()V

    .line 352
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    .line 354
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 358
    .local v0, "imageLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 363
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/facebook/ProfilePictureView;->addView(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/ProfilePictureView;->setPresetSize(I)V

    .line 369
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 370
    return-void
.end method

.method private processResponse(Lcom/facebook/ImageResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/ImageResponse;

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/facebook/ImageResponse;->getRequest()Lcom/facebook/ImageRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    if-ne v2, v3, :cond_0

    .line 418
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    .line 419
    invoke-virtual {p1}, Lcom/facebook/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 420
    invoke-virtual {p1}, Lcom/facebook/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 421
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 422
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->onErrorListener:Lcom/facebook/ProfilePictureView$OnErrorListener;

    .line 423
    .local v1, "listener":Lcom/facebook/ProfilePictureView$OnErrorListener;
    if-eqz v1, :cond_1

    .line 424
    new-instance v2, Lcom/facebook/FacebookException;

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in downloading profile picture for userId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    invoke-interface {v1, v2}, Lcom/facebook/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 437
    .end local v0    # "error":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/facebook/ProfilePictureView$OnErrorListener;
    :cond_0
    :goto_0
    return-void

    .line 427
    .restart local v0    # "error":Ljava/lang/Exception;
    .restart local v1    # "listener":Lcom/facebook/ProfilePictureView$OnErrorListener;
    :cond_1
    sget-object v2, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const/4 v3, 0x6

    sget-object v4, Lcom/facebook/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v1    # "listener":Lcom/facebook/ProfilePictureView$OnErrorListener;
    :cond_2
    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    invoke-virtual {p1}, Lcom/facebook/ImageResponse;->isCachedRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/facebook/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_0
.end method

.method private refreshImage(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/facebook/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v1

    .line 374
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    iget v2, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    if-nez v2, :cond_3

    .line 376
    iget v2, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    if-nez v2, :cond_3

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->isCropped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_square:I

    .line 381
    .local v0, "blankImage":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    .end local v0    # "blankImage":I
    :cond_1
    :goto_1
    return-void

    .line 379
    :cond_2
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    goto :goto_0

    .line 382
    :cond_3
    if-nez v1, :cond_4

    if-eqz p1, :cond_1

    .line 383
    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/facebook/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_1
.end method

.method private sendImageRequest(Z)V
    .locals 8
    .param p1, "allowCachedResponse"    # Z

    .prologue
    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    .line 392
    iget v2, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 393
    iget v3, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    .line 395
    new-instance v5, Lcom/facebook/ProfilePictureView$1;

    invoke-direct {v5, p0}, Lcom/facebook/ProfilePictureView$1;-><init>(Lcom/facebook/ProfilePictureView;)V

    move v4, p1

    .line 389
    invoke-static/range {v0 .. v5}, Lcom/facebook/ImageRequest;->createProfilePictureImageRequest(Landroid/content/Context;Ljava/lang/String;IIZLcom/facebook/ImageRequest$Callback;)Lcom/facebook/ImageRequest;

    move-result-object v7

    .line 402
    .local v7, "request":Lcom/facebook/ImageRequest;
    invoke-static {v7}, Lcom/facebook/ImageDownloader;->downloadAsync(Lcom/facebook/ImageRequest;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    invoke-virtual {v0}, Lcom/facebook/ImageRequest;->cancel()V

    .line 407
    :cond_0
    iput-object v7, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v7    # "request":Lcom/facebook/ImageRequest;
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v6

    .line 409
    .local v6, "e":Ljava/net/MalformedURLException;
    sget-object v0, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateImageQueryParameters()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getHeight()I

    move-result v1

    .line 441
    .local v1, "newHeightPx":I
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getWidth()I

    move-result v2

    .line 442
    .local v2, "newWidthPx":I
    if-lt v2, v0, :cond_0

    if-ge v1, v0, :cond_1

    :cond_0
    move v0, v4

    .line 466
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-direct {p0, v4}, Lcom/facebook/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v3

    .line 448
    .local v3, "presetSize":I
    if-eqz v3, :cond_2

    .line 449
    move v2, v3

    .line 450
    move v1, v3

    .line 455
    :cond_2
    if-gt v2, v1, :cond_5

    .line 456
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    .line 461
    :goto_1
    iget v5, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    if-ne v2, v5, :cond_3

    iget v5, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    if-ne v1, v5, :cond_3

    move v0, v4

    .line 463
    .local v0, "changed":Z
    :cond_3
    iput v2, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 464
    iput v1, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    goto :goto_0

    .end local v0    # "changed":Z
    :cond_4
    move v1, v4

    .line 456
    goto :goto_1

    .line 458
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v1

    :goto_2
    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/ProfilePictureView$OnErrorListener;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/ProfilePictureView;->onErrorListener:Lcom/facebook/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final isCropped()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/facebook/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    .line 346
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 283
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ProfilePictureView;->refreshImage(Z)V

    .line 287
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    .line 248
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 249
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 250
    .local v0, "customMeasure":Z
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 251
    .local v1, "newHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 252
    .local v2, "newWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 253
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v6, :cond_0

    .line 254
    invoke-direct {p0, v7}, Lcom/facebook/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    .line 255
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    const/4 v0, 0x1

    .line 259
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 260
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_1

    .line 261
    invoke-direct {p0, v7}, Lcom/facebook/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    .line 262
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 263
    const/4 v0, 0x1

    .line 266
    :cond_1
    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ProfilePictureView;->setMeasuredDimension(II)V

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ProfilePictureView;->measureChildren(II)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/Bundle;

    if-eq v1, v2, :cond_1

    .line 317
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 319
    check-cast v0, Landroid/os/Bundle;

    .line 320
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string v1, "ProfilePictureView_superState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    const-string v1, "ProfilePictureView_userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    .line 323
    const-string v1, "ProfilePictureView_presetSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    .line 324
    const-string v1, "ProfilePictureView_isCropped"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/ProfilePictureView;->isCropped:Z

    .line 325
    const-string v1, "ProfilePictureView_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 326
    const-string v1, "ProfilePictureView_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    .line 327
    const-string v1, "ProfilePictureView_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    .line 329
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    :cond_2
    const-string v1, "ProfilePictureView_refresh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/ProfilePictureView;->refreshImage(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 296
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 297
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string v2, "ProfilePictureView_superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    const-string v2, "ProfilePictureView_userId"

    iget-object v3, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "ProfilePictureView_presetSize"

    iget v3, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v2, "ProfilePictureView_isCropped"

    iget-boolean v3, p0, Lcom/facebook/ProfilePictureView;->isCropped:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 302
    const-string v2, "ProfilePictureView_bitmap"

    iget-object v3, p0, Lcom/facebook/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 303
    const-string v2, "ProfilePictureView_width"

    iget v3, p0, Lcom/facebook/ProfilePictureView;->queryWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v2, "ProfilePictureView_height"

    iget v3, p0, Lcom/facebook/ProfilePictureView;->queryHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v3, "ProfilePictureView_refresh"

    iget-object v2, p0, Lcom/facebook/ProfilePictureView;->lastRequest:Lcom/facebook/ImageRequest;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    return-object v0

    .line 305
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final setCropped(Z)V
    .locals 1
    .param p1, "showCroppedVersion"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/facebook/ProfilePictureView;->isCropped:Z

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ProfilePictureView;->refreshImage(Z)V

    .line 195
    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/ProfilePictureView$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/ProfilePictureView$OnErrorListener;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/ProfilePictureView;->onErrorListener:Lcom/facebook/ProfilePictureView$OnErrorListener;

    .line 236
    return-void
.end method

.method public final setPresetSize(I)V
    .locals 2
    .param p1, "sizeType"    # I

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_0
    iput p1, p0, Lcom/facebook/ProfilePictureView;->presetSizeType:I

    .line 173
    invoke-virtual {p0}, Lcom/facebook/ProfilePictureView;->requestLayout()V

    .line 174
    return-void

    .line 161
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 214
    .local v0, "force":Z
    :goto_0
    iput-object p1, p0, Lcom/facebook/ProfilePictureView;->userId:Ljava/lang/String;

    .line 216
    invoke-direct {p0, v0}, Lcom/facebook/ProfilePictureView;->refreshImage(Z)V

    .line 217
    return-void

    .line 213
    .end local v0    # "force":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
