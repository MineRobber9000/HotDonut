.class public Lcom/facebook/Session$AuthorizationRequest;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$SessionLoginBehavior:[I = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private suppressLoginActivityVerification:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$SessionLoginBehavior()[I
    .locals 3

    .prologue
    .line 1668
    sget-object v0, Lcom/facebook/Session$AuthorizationRequest;->$SWITCH_TABLE$com$facebook$SessionLoginBehavior:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/SessionLoginBehavior;->values()[Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_ONLY:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/facebook/Session$AuthorizationRequest;->$SWITCH_TABLE$com$facebook$SessionLoginBehavior:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1674
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1680
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$1;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1691
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1674
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1694
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/Session$AuthorizationRequest$2;-><init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1705
    return-void
.end method

.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Z)V
    .locals 1
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p2, "requestCode"    # I
    .param p4, "suppressLoginActivityVerification"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1674
    const v0, 0xface

    iput v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1712
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$3;

    invoke-direct {v0, p0}, Lcom/facebook/Session$AuthorizationRequest$3;-><init>(Lcom/facebook/Session$AuthorizationRequest;)V

    iput-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    .line 1725
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1726
    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1727
    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1728
    iput-boolean p4, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1729
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;ZLcom/facebook/Session$AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 1710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/Session$AuthorizationRequest;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/Session$AuthorizationRequest;)Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    return v0
.end method


# virtual methods
.method allowKatana()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1787
    invoke-static {}, Lcom/facebook/Session$AuthorizationRequest;->$SWITCH_TABLE$com$facebook$SessionLoginBehavior()[I

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/SessionLoginBehavior;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1790
    :goto_0
    :pswitch_0
    return v0

    .line 1789
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1787
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method allowWebView()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1795
    invoke-static {}, Lcom/facebook/Session$AuthorizationRequest;->$SWITCH_TABLE$com$facebook$SessionLoginBehavior()[I

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v2}, Lcom/facebook/SessionLoginBehavior;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1798
    :goto_0
    :pswitch_0
    return v0

    .line 1796
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1795
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
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
    .line 1779
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    .prologue
    .line 1768
    iget v0, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method getStartActivityDelegate()Lcom/facebook/Session$StartActivityDelegate;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/Session$StartActivityDelegate;

    return-object v0
.end method

.method readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 1811
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "statusCallback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 1742
    return-object p0
.end method

.method setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 1750
    if-eqz p1, :cond_0

    .line 1751
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1753
    :cond_0
    return-object p0
.end method

.method setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/Session$AuthorizationRequest;"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1773
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1775
    :cond_0
    return-object p0
.end method

.method setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 1761
    if-ltz p1, :cond_0

    .line 1762
    iput p1, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    .line 1764
    :cond_0
    return-object p0
.end method

.method public suppressLoginActivityVerification(Z)V
    .locals 0
    .param p1, "suppressVerification"    # Z

    .prologue
    .line 1737
    iput-boolean p1, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1738
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1804
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;

    .line 1805
    iget-boolean v4, p0, Lcom/facebook/Session$AuthorizationRequest;->suppressLoginActivityVerification:Z

    .line 1804
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;ZLcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;)V

    return-object v0
.end method
