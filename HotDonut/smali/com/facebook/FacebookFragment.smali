.class Lcom/facebook/FacebookFragment;
.super Landroid/support/v4/app/Fragment;
.source "FacebookFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;
    }
.end annotation


# instance fields
.field private sessionTracker:Lcom/facebook/SessionTracker;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V
    .locals 5
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
    .line 234
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v3}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 235
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    new-instance v3, Lcom/facebook/Session$Builder;

    invoke-virtual {p0}, Lcom/facebook/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v2

    .line 237
    .local v2, "session":Lcom/facebook/Session;
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 238
    move-object v0, v2

    .line 240
    .end local v2    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_2

    .line 241
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 242
    invoke-virtual {v3, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    .line 243
    invoke-virtual {v3, p3}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    move-result-object v3

    .line 244
    invoke-virtual {v3, p4}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 245
    .local v1, "openRequest":Lcom/facebook/Session$OpenRequest;
    sget-object v3, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    invoke-virtual {v3, p5}, Lcom/facebook/Session$AuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 251
    .end local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_2
    :goto_0
    return-void

    .line 248
    .restart local v1    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_3
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected final closeSession()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 142
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    .line 145
    :cond_0
    return-void
.end method

.method protected final closeSessionAndClearTokenInformation()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 152
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 155
    :cond_0
    return-void
.end method

.method protected final getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 123
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
    .line 133
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 134
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
    .line 93
    iget-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

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
    .line 164
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 165
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
    .line 111
    iget-object v1, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 112
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
    .line 102
    iget-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Lcom/facebook/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;-><init>(Lcom/facebook/FacebookFragment;Lcom/facebook/FacebookFragment$DefaultSessionStatusCallback;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    .line 45
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/SessionTracker;->stopTracking()V

    .line 62
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "state"    # Lcom/facebook/SessionState;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 83
    return-void
.end method

.method protected final openSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0, v0}, Lcom/facebook/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;)V

    .line 174
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
    .line 213
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .line 214
    const v1, 0xface

    .line 213
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/FacebookFragment;->openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 215
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
    .line 229
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/Session$AuthorizationType;->PUBLISH:Lcom/facebook/Session$AuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V

    .line 230
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
    .line 185
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    .line 186
    const v1, 0xface

    .line 185
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    .line 187
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
    .line 201
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/facebook/Session$AuthorizationType;->READ:Lcom/facebook/Session$AuthorizationType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/Session$AuthorizationType;)V

    .line 202
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/FacebookFragment;->sessionTracker:Lcom/facebook/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 71
    return-void
.end method
