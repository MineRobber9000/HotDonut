.class public Lcom/facebook/android/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0
    .param p1, "fb"    # Lcom/facebook/android/Facebook;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/android/AsyncFacebookRunner;->fb:Lcom/facebook/android/Facebook;

    .line 53
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/android/AsyncFacebookRunner$1;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$1;->start()V

    .line 102
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    const/4 v1, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .param p4, "state"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 7
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .param p5, "state"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/android/AsyncFacebookRunner$2;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$2;->start()V

    .line 283
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    .param p3, "state"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 180
    return-void
.end method
