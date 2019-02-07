.class public final Lcom/facebook/Session$ReauthorizeRequest;
.super Lcom/facebook/Session$AuthorizationRequest;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReauthorizeRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1930
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    .line 1931
    invoke-virtual {p0, p2}, Lcom/facebook/Session$ReauthorizeRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    .line 1932
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/util/List;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1941
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1942
    invoke-virtual {p0, p2}, Lcom/facebook/Session$ReauthorizeRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    .line 1943
    return-void
.end method


# virtual methods
.method public bridge synthetic setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/Session$ReauthorizeRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$ReauthorizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$ReauthorizeRequest;
    .locals 0
    .param p1, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1954
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;

    .line 1955
    return-object p0
.end method

.method public bridge synthetic setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/Session$ReauthorizeRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$ReauthorizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$ReauthorizeRequest;
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 1968
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    .line 1969
    return-object p0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/Session$ReauthorizeRequest;->setRequestCode(I)Lcom/facebook/Session$ReauthorizeRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestCode(I)Lcom/facebook/Session$ReauthorizeRequest;
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 1983
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;

    .line 1984
    return-object p0
.end method
