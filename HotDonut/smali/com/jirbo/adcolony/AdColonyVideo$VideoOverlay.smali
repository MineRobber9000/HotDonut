.class Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;
.super Landroid/view/View;
.source "AdColonyVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoOverlay"
.end annotation


# instance fields
.field bitmap_scale:F

.field bounds:Landroid/graphics/Rect;

.field button_matrices:[Landroid/graphics/Matrix;

.field continue_matrix:Landroid/graphics/Matrix;

.field error:Z

.field get_matrix:Landroid/graphics/Matrix;

.field info_matrix:Landroid/graphics/Matrix;

.field left_margin:I

.field matrix:Landroid/graphics/Matrix;

.field on_button_press_handler:Landroid/os/Handler;

.field original_background:Landroid/graphics/Bitmap;

.field original_normal_buttons:[Landroid/graphics/Bitmap;

.field original_pressed_buttons:[Landroid/graphics/Bitmap;

.field paint:Landroid/graphics/Paint;

.field replay_matrix:Landroid/graphics/Matrix;

.field request_adjustment:Z

.field scaled_background:Landroid/graphics/Bitmap;

.field scaled_normal_buttons:[Landroid/graphics/Bitmap;

.field scaled_pressed_buttons:[Landroid/graphics/Bitmap;

.field selected_button:I

.field start_time_ms:J

.field text_paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyVideo;

.field video_duration_ms:I


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyVideo;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 307
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    .line 308
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->start_time_ms:J

    .line 280
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    .line 281
    iput-boolean v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->request_adjustment:Z

    .line 282
    const/16 v2, 0x5c

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    .line 285
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->paint:Landroid/graphics/Paint;

    .line 286
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->text_paint:Landroid/graphics/Paint;

    .line 287
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->matrix:Landroid/graphics/Matrix;

    .line 288
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    .line 290
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->info_matrix:Landroid/graphics/Matrix;

    .line 291
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->get_matrix:Landroid/graphics/Matrix;

    .line 292
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->replay_matrix:Landroid/graphics/Matrix;

    .line 293
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->continue_matrix:Landroid/graphics/Matrix;

    .line 297
    new-array v2, v8, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    .line 298
    new-array v2, v8, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    .line 299
    new-array v2, v8, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_normal_buttons:[Landroid/graphics/Bitmap;

    .line 300
    new-array v2, v8, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_pressed_buttons:[Landroid/graphics/Bitmap;

    .line 302
    new-array v2, v8, [Landroid/graphics/Matrix;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->button_matrices:[Landroid/graphics/Matrix;

    .line 468
    new-instance v2, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay$1;-><init>(Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->on_button_press_handler:Landroid/os/Handler;

    .line 310
    sget-object v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdManager$VideoInfo;->image_filepath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    .line 313
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v6, v6}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->onError(Landroid/media/MediaPlayer;II)Z

    .line 316
    iput-boolean v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->error:Z

    .line 352
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_background:Landroid/graphics/Bitmap;

    .line 322
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v2

    iget-object v1, v2, Lcom/jirbo/adcolony/AdManager;->resources:Lcom/jirbo/adcolony/AdManager$ResourceGroup;

    .line 324
    .local v1, "resources":Lcom/jirbo/adcolony/AdManager$ResourceGroup;
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "info-icon-normal"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v6

    .line 325
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "buy-icon-normal"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v7

    .line 326
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "replay-icon-normal"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v9

    .line 327
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "continue-icon-normal"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v10

    .line 329
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "info-icon-pushed"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v6

    .line 330
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "buy-icon-pushed"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v7

    .line 331
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "replay-icon-pushed"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v9

    .line 332
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    const-string v3, "continue-icon-pushed"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdManager$ResourceGroup;->get(Ljava/lang/String;)Lcom/jirbo/adcolony/AdManager$Resource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdManager$Resource;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v10

    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v8, :cond_3

    .line 336
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 338
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v6, v6}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->onError(Landroid/media/MediaPlayer;II)Z

    .line 339
    iput-boolean v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->error:Z

    goto/16 :goto_0

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_normal_buttons:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 343
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_pressed_buttons:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 344
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->button_matrices:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_3
    sget-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->onAdColonyVideoFinished()V

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->text_paint:Landroid/graphics/Paint;

    const v3, -0x3f000001    # -7.9999995f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adjustSize()V
    .locals 12

    .prologue
    const/high16 v11, -0x3d4c0000    # -90.0f

    const/4 v10, 0x1

    .line 507
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    if-eqz v6, :cond_2

    .line 509
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->video_duration_ms:I

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v6}, Lcom/jirbo/adcolony/CustomVideoView;->getDuration()I

    move-result v6

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->video_duration_ms:I

    .line 511
    :cond_0
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/CustomVideoView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 512
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v7, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    if-eq v6, v7, :cond_2

    .line 514
    :cond_1
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sput v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    .line 515
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sput v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    .line 516
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget v7, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    sget v8, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    const/16 v9, 0x11

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iput-boolean v10, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->request_adjustment:Z

    .line 522
    :cond_2
    iget-boolean v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->request_adjustment:Z

    if-eqz v6, :cond_5

    .line 524
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->request_adjustment:Z

    .line 529
    sget v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    .line 530
    sget v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 531
    .local v0, "alt_scale":F
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    .line 532
    :cond_3
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    .line 534
    :cond_4
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 535
    .local v2, "bitmap_width":I
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 537
    .local v1, "bitmap_height":I
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_background:Landroid/graphics/Bitmap;

    invoke-static {v6, v2, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_background:Landroid/graphics/Bitmap;

    .line 540
    sget v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    .line 541
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 542
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->matrix:Landroid/graphics/Matrix;

    sget v7, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 544
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v6, v6, 0x5c

    iput v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    .line 546
    const/high16 v6, 0x428c0000    # 70.0f

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 547
    .local v5, "new_w":I
    const/high16 v6, 0x42780000    # 62.0f

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 548
    .local v4, "new_h":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_5

    .line 550
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_normal_buttons:[Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_normal_buttons:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v3

    invoke-static {v7, v5, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v3

    .line 552
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_pressed_buttons:[Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->original_pressed_buttons:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v3

    invoke-static {v7, v5, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v3

    .line 554
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->button_matrices:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 555
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->button_matrices:[Landroid/graphics/Matrix;

    aget-object v6, v6, v3

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    mul-int/lit8 v8, v3, 0x4e

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x439a0000    # 308.0f

    iget v9, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "alt_scale":F
    .end local v1    # "bitmap_height":I
    .end local v2    # "bitmap_width":I
    .end local v3    # "i":I
    .end local v4    # "new_h":I
    .end local v5    # "new_w":I
    :cond_5
    return-void
.end method

.method public onAdColonyVideoFinished()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    .line 565
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->requestFocus()Z

    .line 566
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->invalidate()V

    .line 567
    return-void
.end method

.method onButton(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 406
    :pswitch_0
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    .line 407
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoInfoClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 408
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->infoLink()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "url":Ljava/lang/String;
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 410
    sget-object v1, Lcom/jirbo/adcolony/AdColony;->url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/AdColony;->url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

    invoke-interface {v1, v0}, Lcom/jirbo/adcolony/AdColonyURLListener;->handleAdColonyURL(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_1
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    const-class v4, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_1
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    .line 428
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoBuyClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 429
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager$VideoInfo;->downloadLink()Ljava/lang/String;

    move-result-object v0

    .line 430
    .restart local v0    # "url":Ljava/lang/String;
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 431
    sget-object v1, Lcom/jirbo/adcolony/AdColony;->url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jirbo/adcolony/AdColony;->url_listener:Lcom/jirbo/adcolony/AdColonyURLListener;

    invoke-interface {v1, v0}, Lcom/jirbo/adcolony/AdColonyURLListener;->handleAdColonyURL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    :cond_3
    const-string v1, "market:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    const-class v4, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 447
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_2
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoRequest(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 448
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoStart(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 449
    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyVideo;->is_replay:Z

    .line 450
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    .line 451
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->requestFocus()Z

    .line 452
    sput v2, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    .line 453
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    .line 454
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    .line 455
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->invalidate()V

    goto/16 :goto_0

    .line 459
    :pswitch_3
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    .line 460
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/CustomVideoView;->stopPlayback()V

    .line 461
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoContinueClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 462
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideo;->finish()V

    .line 463
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    goto/16 :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 571
    const-string v0, "AdColony video finished."

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->logInfo(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyVideo;->is_replay:Z

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoImpression(Lcom/jirbo/adcolony/AdColonyVideoAd;Z)V

    .line 573
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->onAdColonyVideoFinished()V

    .line 574
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v7, 0x0

    .line 356
    iget-boolean v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->error:Z

    if-eqz v6, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->adjustSize()V

    .line 359
    sget-boolean v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    if-eqz v6, :cond_3

    .line 361
    const/16 v6, 0xff

    invoke-virtual {p1, v6, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 362
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_background:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_0

    .line 365
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_normal_buttons:[Landroid/graphics/Bitmap;

    aget-object v2, v6, v1

    .line 366
    .local v2, "img":Landroid/graphics/Bitmap;
    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->scaled_pressed_buttons:[Landroid/graphics/Bitmap;

    aget-object v2, v6, v1

    .line 367
    :cond_2
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->button_matrices:[Landroid/graphics/Matrix;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    .end local v1    # "i":I
    .end local v2    # "img":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    if-eqz v6, :cond_5

    .line 374
    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v6}, Lcom/jirbo/adcolony/CustomVideoView;->getCurrentPosition()I

    move-result v0

    .line 375
    .local v0, "elapsed_ms":I
    iget v6, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->video_duration_ms:I

    sub-int v3, v6, v0

    .line 376
    .local v3, "ms_left":I
    add-int/lit16 v6, v3, 0x3e7

    div-int/lit16 v4, v6, 0x3e8

    .line 377
    .local v4, "seconds_left":I
    const/16 v6, 0x1f4

    if-lt v0, v6, :cond_5

    .line 379
    sget v6, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    add-int/lit8 v5, v6, -0x4

    .line 380
    .local v5, "y":I
    sget-boolean v6, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v6, :cond_4

    .line 383
    add-int/lit8 v5, v5, -0x18

    .line 386
    :cond_4
    if-le v4, v8, :cond_6

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Your app will resume in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v7, v5

    iget-object v8, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 396
    .end local v0    # "elapsed_ms":I
    .end local v3    # "ms_left":I
    .end local v4    # "seconds_left":I
    .end local v5    # "y":I
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->invalidate()V

    goto :goto_0

    .line 390
    .restart local v0    # "elapsed_ms":I
    .restart local v3    # "ms_left":I
    .restart local v4    # "seconds_left":I
    .restart local v5    # "y":I
    :cond_6
    if-ne v4, v8, :cond_5

    .line 392
    const-string v6, "Your app will resume in 1 second"

    int-to-float v7, v5

    iget-object v8, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v9, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    .line 578
    const-string v0, "Error playing AdColony video."

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 580
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    .line 581
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideo;->finish()V

    .line 582
    sget-object v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    if-eqz v3, :cond_1

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 484
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->bitmap_scale:F

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 485
    .local v2, "y":I
    const/16 v3, 0xee

    if-lt v2, v3, :cond_1

    const/16 v3, 0x134

    if-ge v2, v3, :cond_1

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "index":I
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x3e

    if-ge v1, v3, :cond_2

    const/4 v0, 0x1

    .line 493
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 495
    iput v0, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    .line 496
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->on_button_press_handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->on_button_press_handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 498
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->invalidate()V

    .line 502
    .end local v0    # "index":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 489
    .restart local v0    # "index":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_2
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x3e

    if-ge v1, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 490
    :cond_3
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    if-lt v1, v3, :cond_4

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x3e

    if-ge v1, v3, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 491
    :cond_4
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    if-lt v1, v3, :cond_0

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->left_margin:I

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x4e

    add-int/lit8 v3, v3, 0x3e

    if-ge v1, v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method
