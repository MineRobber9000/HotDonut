.class public Lcom/facebook/FacebookActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FacebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;
    }
.end annotation


# static fields
.field private static final SESSION_IS_ACTIVE_KEY:Ljava/lang/String; = "com.facebook.sdk.FacebookActivity.sessionIsActiveKey"


# instance fields
.field private sessionTracker:Lcom/facebook/SessionTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V
    .locals 4
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .param p5, "authType"    # Lcom/facebook/Session$AuthorizationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Lcom/facebook/Session$AuthorizationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v3}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 297
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    :cond_0
    new-instance v3, Lcom/facebook/Session$Builder;

    invoke-direct {v3, p0}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    .line 299
    .local v2, "session":Lcom/facebook/Session;
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 300
    move-object v0, v2

    .line 302
    .end local v2    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 303
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 304
    invoke-virtual {v3, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    .line 305
    invoke-virtual {v3, p3}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    .line 306
    invoke-virtual {v3, p4}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 307
    .local v1, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v3, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v3, p5}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 313
    .end local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_2
    :goto_0
    return-void

    .line 310
    .restart local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected final closeSession()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 174
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 177
    :cond_0
    return-void
.end method

.method protected final closeSessionAndClearTokenInformation()V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 184
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 187
    :cond_0
    return-void
.end method

.method protected final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 155
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 166
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method protected final getSessionPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 197
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getSessionState()Lcom/facebook/SessionState;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 144
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final isSessionOpen()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;

    invoke-direct {v0, p0, v3}, Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;-><init>(Lcom/facebook/FacebookActivity;Lcom/facebook/FacebookActivity$DefaultSessionStatusCallback;)V

    .line 52
    .local v0, "callback":Lcom/facebook/Session$StatusCallback;
    new-instance v2, Lcom/facebook/SessionTracker;

    invoke-direct {v2, p0, v0}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v2, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-static {p0, v3, v0, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCache;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v1

    .line 55
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 56
    const-string v2, "com.facebook.sdk.FacebookActivity.sessionIsActiveKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 65
    .end local v1    # "session":Lcom/facebook/Session;
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v1    # "session":Lcom/facebook/Session;
    :cond_1
    iget-object v2, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v2, v1}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->stopTracking()V

    .line 82
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v1, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 92
    .local v0, "currentSession":Lcom/facebook/Session;
    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 93
    const-string v1, "com.facebook.sdk.FacebookActivity.sessionIsActiveKey"

    iget-object v2, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/SessionTracker;->isTrackingActiveSession()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "state"    # Lcom/facebook/SessionState;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 106
    return-void
.end method

.method protected final openSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0, v0}, Lcom/facebook/FacebookActivity;->openSessionForRead(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .line 270
    const v1, 0xface

    .line 269
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/FacebookActivity;->openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 271
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .locals 6
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookActivity;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V

    .line 292
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .line 230
    const v1, 0xface

    .line 229
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/FacebookActivity;->openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 231
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .locals 6
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "behavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p4, "activityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookActivity;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V

    .line 252
    return-void
.end method

.method protected setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 115
    return-void
.end method
