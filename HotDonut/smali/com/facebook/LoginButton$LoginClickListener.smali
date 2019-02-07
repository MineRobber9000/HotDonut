.class Lcom/facebook/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/LoginButton;Lcom/facebook/LoginButton$LoginClickListener;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/facebook/LoginButton$LoginClickListener;-><init>(Lcom/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 446
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v9}, Lcom/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 447
    .local v2, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$0(Lcom/facebook/LoginButton;)Lcom/facebook/SessionTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v7

    .line 448
    .local v7, "openSession":Lcom/facebook/Session;
    if-eqz v7, :cond_3

    .line 450
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$1(Lcom/facebook/LoginButton;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 452
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v9}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "logout":Ljava/lang/String;
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v9}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/android/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "cancel":Ljava/lang/String;
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$2(Lcom/facebook/LoginButton;)Lcom/facebook/GraphUser;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$2(Lcom/facebook/LoginButton;)Lcom/facebook/GraphUser;

    move-result-object v9

    invoke-interface {v9}, Lcom/facebook/GraphUser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 456
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v9}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v12}, Lcom/facebook/LoginButton;->access$2(Lcom/facebook/LoginButton;)Lcom/facebook/GraphUser;

    move-result-object v12

    invoke-interface {v12}, Lcom/facebook/GraphUser;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "message":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 462
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 463
    new-instance v10, Lcom/facebook/LoginButton$LoginClickListener$1;

    invoke-direct {v10, p0, v7}, Lcom/facebook/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/LoginButton$LoginClickListener;Lcom/facebook/Session;)V

    invoke-virtual {v9, v4, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 468
    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 500
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "logout":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 458
    .restart local v1    # "cancel":Ljava/lang/String;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "logout":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-virtual {v9}, Lcom/facebook/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "message":Ljava/lang/String;
    goto :goto_0

    .line 471
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v4    # "logout":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_1

    .line 474
    :cond_3
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$0(Lcom/facebook/LoginButton;)Lcom/facebook/SessionTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v3

    .line 475
    .local v3, "currentSession":Lcom/facebook/Session;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 476
    :cond_4
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$0(Lcom/facebook/LoginButton;)Lcom/facebook/SessionTracker;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 477
    new-instance v9, Lcom/facebook/Session$Builder;

    invoke-direct {v9, v2}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v10}, Lcom/facebook/LoginButton;->access$3(Lcom/facebook/LoginButton;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v8

    .line 478
    .local v8, "session":Lcom/facebook/Session;
    invoke-static {v8}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 479
    move-object v3, v8

    .line 481
    .end local v8    # "session":Lcom/facebook/Session;
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v9

    if-nez v9, :cond_0

    .line 482
    const/4 v6, 0x0

    .line 483
    .local v6, "openRequest":Lcom/facebook/Session$OpenRequest;
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$4(Lcom/facebook/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 484
    new-instance v6, Lcom/facebook/Session$OpenRequest;

    .end local v6    # "openRequest":Lcom/facebook/Session$OpenRequest;
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$4(Lcom/facebook/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 489
    .end local v2    # "context":Landroid/content/Context;
    .restart local v6    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_6
    :goto_2
    if-eqz v6, :cond_0

    .line 490
    iget-object v9, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v9}, Lcom/facebook/LoginButton;->access$5(Lcom/facebook/LoginButton;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 492
    sget-object v9, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    iget-object v10, p0, Lcom/facebook/LoginButton$LoginClickListener;->this$0:Lcom/facebook/LoginButton;

    invoke-static {v10}, Lcom/facebook/LoginButton;->access$6(Lcom/facebook/LoginButton;)Lcom/facebook/Session$AuthorizationType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 493
    invoke-virtual {v3, v6}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_1

    .line 485
    .restart local v2    # "context":Landroid/content/Context;
    :cond_7
    instance-of v9, v2, Landroid/app/Activity;

    if-eqz v9, :cond_6

    .line 486
    new-instance v6, Lcom/facebook/Session$OpenRequest;

    .end local v6    # "openRequest":Lcom/facebook/Session$OpenRequest;
    check-cast v2, Landroid/app/Activity;

    .end local v2    # "context":Landroid/content/Context;
    invoke-direct {v6, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .restart local v6    # "openRequest":Lcom/facebook/Session$OpenRequest;
    goto :goto_2

    .line 495
    :cond_8
    invoke-virtual {v3, v6}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1
.end method
