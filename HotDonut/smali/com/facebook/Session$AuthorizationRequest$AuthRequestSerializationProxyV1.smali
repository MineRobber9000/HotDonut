.class Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session$AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthRequestSerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x79685fde6eced24fL


# instance fields
.field private final loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCode:I

.field private suppressLoginActivityVerification:Z


# direct methods
.method private constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Z)V
    .locals 0
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;
    .param p2, "requestCode"    # I
    .param p4, "suppressVerification"    # Z
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
    .line 1821
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1823
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    .line 1824
    iput p2, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->requestCode:I

    .line 1825
    iput-object p3, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->permissions:Ljava/util/List;

    .line 1826
    iput-boolean p4, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->suppressLoginActivityVerification:Z

    .line 1827
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;ZLcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;)V
    .locals 0

    .prologue
    .line 1821
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1830
    new-instance v0, Lcom/facebook/Session$AuthorizationRequest;

    iget-object v1, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iget v2, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->requestCode:I

    iget-object v3, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->permissions:Ljava/util/List;

    .line 1831
    iget-boolean v4, p0, Lcom/facebook/Session$AuthorizationRequest$AuthRequestSerializationProxyV1;->suppressLoginActivityVerification:Z

    .line 1830
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Lcom/facebook/SessionLoginBehavior;ILjava/util/List;ZLcom/facebook/Session$AuthorizationRequest;)V

    return-object v0
.end method
