.class public Lcom/jirbo/adcolony/AdColonyOverlay;
.super Lcom/jirbo/adcolony/AdColonyVideo;
.source "AdColonyOverlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {p0, p1, p2, p3}, Lcom/amazon/android/Kiwi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jirbo/adcolony/AdColonyVideo;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "new_config"    # Landroid/content/res/Configuration;

    .prologue
    .line 30
    :try_start_0
    invoke-super {p0, p1}, Lcom/jirbo/adcolony/AdColonyVideo;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyOverlay;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 35
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 36
    .local v2, "w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 37
    .local v1, "h":I
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_width:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_height:I

    if-eq v1, v3, :cond_0

    .line 39
    :cond_2
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_width:I

    .line 40
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_height:I

    .line 43
    sget-boolean v3, Lcom/jirbo/adcolony/AdColony;->is_tablet:Z

    if-eqz v3, :cond_3

    .line 45
    if-le v2, v1, :cond_4

    .line 48
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyOverlay;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x1000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 58
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/CustomVideoView;->getCurrentPosition()I

    move-result v3

    sput v3, Lcom/jirbo/adcolony/AdColonyOverlay;->video_seek_to_ms:I

    .line 60
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 61
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_overlay:Lcom/jirbo/adcolony/AdColonyVideo$VideoOverlay;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v2, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    sget-boolean v3, Lcom/jirbo/adcolony/AdColonyOverlay;->video_finished:Z

    if-nez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/CustomVideoView;->requestFocus()Z

    .line 67
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    sget v4, Lcom/jirbo/adcolony/AdColonyOverlay;->video_seek_to_ms:I

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/CustomVideoView;->seekTo(I)V

    .line 68
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->video_view:Lcom/jirbo/adcolony/CustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/CustomVideoView;->start()V

    goto :goto_0

    .line 72
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "h":I
    .end local v2    # "w":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 54
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "h":I
    .restart local v2    # "w":I
    :cond_4
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyOverlay;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x80000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jirbo/adcolony/AdColonyVideo;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/android/Kiwi;->onCreate(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/jirbo/adcolony/AdColonyVideo;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-static {p0, p1}, Lcom/amazon/android/Kiwi;->onCreateDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jirbo/adcolony/AdColonyVideo;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->onDestroy()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->onPause()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->onResume()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->onStart()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/jirbo/adcolony/AdColonyVideo;->onStop()V

    invoke-static {p0}, Lcom/amazon/android/Kiwi;->onStop(Landroid/app/Activity;)V

    return-void
.end method
