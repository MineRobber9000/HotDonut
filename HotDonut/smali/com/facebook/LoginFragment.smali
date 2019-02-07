.class public Lcom/facebook/LoginFragment;
.super Lcom/facebook/FacebookFragment;
.source "LoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;
    }
.end annotation


# static fields
.field private static final FIELDS:Ljava/lang/String; = "fields"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"

.field private static final PICTURE_URL:Ljava/lang/String; = "https://graph.facebook.com/%s/picture?width=%d&height=%d"

.field private static final REQUEST_FIELDS:Ljava/lang/String;


# instance fields
.field private connectedStateLabel:Landroid/widget/TextView;

.field private loginButton:Lcom/facebook/LoginButton;

.field private user:Lcom/facebook/GraphUser;

.field private userInfoSession:Lcom/facebook/Session;

.field private userProfilePic:Landroid/graphics/drawable/Drawable;

.field private userProfilePicID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string v0, ","

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "picture"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LoginFragment;->REQUEST_FIELDS:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/FacebookFragment;-><init>()V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/LoginFragment;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/LoginFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/LoginFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/LoginFragment;->userProfilePicID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/LoginFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/LoginFragment;Lcom/facebook/GraphUser;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/LoginFragment;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/LoginFragment;)Lcom/facebook/LoginButton;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    return-object v0
.end method

.method private fetchUserInfo()V
    .locals 5

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 204
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/facebook/LoginFragment;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v3, :cond_0

    .line 206
    new-instance v3, Lcom/facebook/LoginFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/LoginFragment$1;-><init>(Lcom/facebook/LoginFragment;Lcom/facebook/Session;)V

    invoke-static {v0, v3}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v2

    .line 218
    .local v2, "request":Lcom/facebook/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v3, "fields"

    sget-object v4, Lcom/facebook/LoginFragment;->REQUEST_FIELDS:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/facebook/Request;

    const/4 v4, 0x0

    .line 221
    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 222
    iput-object v0, p0, Lcom/facebook/LoginFragment;->userInfoSession:Lcom/facebook/Session;

    .line 227
    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    goto :goto_0
.end method

.method private getPictureUrlOfUser()Ljava/net/URL;
    .locals 6

    .prologue
    .line 274
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://graph.facebook.com/%s/picture?width=%d&height=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    invoke-interface {v4}, Lcom/facebook/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 276
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 274
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->isSessionOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/android/R$color;->com_facebook_loginfragment_connected_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 236
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/facebook/android/R$color;->com_facebook_loginfragment_connected_shadow_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 235
    invoke-virtual {v4, v5, v10, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 238
    iget-object v4, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    if-eqz v4, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->getPictureUrlOfUser()Ljava/net/URL;

    move-result-object v1

    .line 241
    .local v1, "pictureURL":Ljava/net/URL;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    invoke-interface {v4}, Lcom/facebook/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/LoginFragment;->userProfilePicID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/LoginFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9, v5, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 253
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    invoke-interface {v5}, Lcom/facebook/GraphUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_2
    :try_start_0
    new-instance v2, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;

    iget-object v4, p0, Lcom/facebook/LoginFragment;->user:Lcom/facebook/GraphUser;

    invoke-interface {v4}, Lcom/facebook/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;-><init>(Lcom/facebook/LoginFragment;Ljava/lang/String;)V

    .line 248
    .local v2, "task":Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/net/URL;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    .end local v2    # "task":Lcom/facebook/LoginFragment$ProfilePictureDownloadTask;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 255
    .end local v1    # "pictureURL":Ljava/net/URL;
    :cond_3
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/android/R$string;->com_facebook_loginfragment_logged_in:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$drawable;->com_facebook_profile_default_icon:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    .local v0, "noProfilePic":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 259
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/android/R$dimen;->com_facebook_loginfragment_profile_picture_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 257
    invoke-virtual {v0, v11, v11, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 260
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v0, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "noProfilePic":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/android/R$color;->com_facebook_loginfragment_not_connected_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 264
    .local v3, "textColor":I
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v10, v10, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 266
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/android/R$string;->com_facebook_loginfragment_not_logged_in:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v4, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/LoginButton;->clearPermissions()V

    .line 175
    return-void
.end method

.method public getOnErrorListener()Lcom/facebook/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/LoginButton;->getOnErrorListener()Lcom/facebook/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/FacebookFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/FacebookFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/facebook/FacebookFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/LoginFragment;->setRetainInstance(Z)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget v1, Lcom/facebook/android/R$layout;->com_facebook_loginfragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/facebook/android/R$id;->com_facebook_loginfragment_login_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/LoginButton;

    iput-object v1, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    .line 72
    iget-object v1, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v1, p0}, Lcom/facebook/LoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 73
    sget v1, Lcom/facebook/android/R$id;->com_facebook_loginfragment_profile_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/facebook/LoginFragment;->connectedStateLabel:Landroid/widget/TextView;

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/facebook/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$color;->com_facebook_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/FacebookFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/facebook/FacebookFragment;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->fetchUserInfo()V

    .line 97
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->updateUI()V

    .line 98
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "state"    # Lcom/facebook/SessionState;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->fetchUserInfo()V

    .line 199
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->updateUI()V

    .line 200
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/LoginButton$OnErrorListener;)V
    .locals 1
    .param p1, "onErrorListener"    # Lcom/facebook/LoginButton$OnErrorListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/LoginButton;->setOnErrorListener(Lcom/facebook/LoginButton$OnErrorListener;)V

    .line 185
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/LoginButton;->setPublishPermissions(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 142
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/facebook/FacebookFragment;->setSession(Lcom/facebook/Session;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/LoginFragment;->loginButton:Lcom/facebook/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/LoginButton;->setSession(Lcom/facebook/Session;)V

    .line 115
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->fetchUserInfo()V

    .line 116
    invoke-direct {p0}, Lcom/facebook/LoginFragment;->updateUI()V

    .line 117
    return-void
.end method
