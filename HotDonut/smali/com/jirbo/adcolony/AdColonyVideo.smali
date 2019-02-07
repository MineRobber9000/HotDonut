.class public abstract Lcom/jirbo/adcolony/AdColonyVideo;
.super Landroid/app/Activity;
.source "AdColonyVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;
    }
.end annotation


# static fields
.field static active:Z

.field static is_replay:Z

.field static video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field static video_finished:Z

.field static video_height:I

.field static video_seek_to_ms:I

.field static video_width:I


# instance fields
.field display_height:I

.field display_width:I

.field layout:Landroid/widget/FrameLayout;

.field video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

.field video_view:Lcom/jirbo/adcolony/CustomVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 274
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    const/high16 v4, -0x1000000

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    .line 80
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 86
    sget-boolean v2, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 89
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    .line 90
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    .line 92
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    if-le v2, v3, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 130
    .restart local v0    # "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    .line 131
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    .line 139
    sget-boolean v2, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    if-ge v2, v3, :cond_0

    .line 141
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    .line 142
    .local v1, "temp":I
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    .line 143
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    .line 146
    .end local v1    # "temp":I
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->setVolumeControlStream(I)V

    .line 147
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, -0x80000000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    .end local v0    # "display":Landroid/view/Display;
    :cond_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    .line 112
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->setRequestedOrientation(I)V

    goto :goto_0

    .line 117
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyVideo;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 240
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 242
    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;->selected_button:I

    if-nez v1, :cond_0

    .line 246
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    .line 247
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-static {v1}, Lcom/jirbo/adcolony/ReportingManager;->logVideoContinueClick(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 248
    sget-object v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->finish()V

    .line 256
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 267
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    .line 223
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->stopPlayback()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    .line 231
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x0

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->layout:Landroid/widget/FrameLayout;

    .line 158
    sget v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_width:I

    .line 159
    .local v1, "w":I
    sget v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_height:I

    .line 160
    .local v0, "h":I
    if-nez v1, :cond_0

    .line 162
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_width:I

    .line 163
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->display_height:I

    .line 164
    sget-boolean v3, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v3, :cond_0

    if-le v1, v0, :cond_0

    .line 166
    int-to-double v3, v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 170
    :cond_0
    new-instance v3, Lcom/jirbo/adcolony/CustomVideoView;

    invoke-direct {v3, p0}, Lcom/jirbo/adcolony/CustomVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    .line 171
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v3, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    invoke-direct {v3, p0}, Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;-><init>(Lcom/jirbo/adcolony/AdColonyVideo;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    .line 174
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v1, v0, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/AdColonyVideo;->setContentView(Landroid/view/View;)V

    .line 178
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/CustomVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 179
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/CustomVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 181
    sget-boolean v3, Lcom/jirbo/adcolony/AdManager;->using_internal_storage:Z

    if-eqz v3, :cond_1

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/CustomVideoView;->setVideoPath(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    .line 189
    .local v2, "whoa":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to play video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 190
    sget-object v3, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v3, v7}, Lcom/jirbo/adcolony/AdColonyVideoAd;->onFinished(Z)V

    .line 191
    sput-boolean v7, Lcom/jirbo/adcolony/AdColonyVideo;->active:Z

    .line 192
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->finish()V

    goto :goto_0

    .line 198
    .end local v2    # "whoa":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    sget-object v4, Lcom/jirbo/adcolony/AdColonyVideo;->video_ad:Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyVideoAd;->video_info:Lcom/jirbo/adcolony/AdManager$VideoInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdManager$VideoInfo;->video_filepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/CustomVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "has_focus"    # Z

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 206
    sget-boolean v0, Lcom/jirbo/adcolony/AdColonyVideo;->video_finished:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->requestFocus()Z

    .line 209
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    sget v1, Lcom/jirbo/adcolony/AdColonyVideo;->video_seek_to_ms:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/CustomVideoView;->seekTo(I)V

    .line 210
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyVideo;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    .line 213
    :cond_0
    return-void
.end method
