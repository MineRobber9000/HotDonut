.class abstract Lcom/facebook/GraphObjectWrapper$ProxyBase;
.super Ljava/lang/Object;
.source "GraphObjectWrapper.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProxyBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final EQUALS_METHOD:Ljava/lang/String; = "equals"

.field private static final TOSTRING_METHOD:Ljava/lang/String; = "toString"


# instance fields
.field protected final state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$ProxyBase;, "Lcom/facebook/GraphObjectWrapper$ProxyBase<TSTATE;>;"
    .local p1, "state":Ljava/lang/Object;, "TSTATE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/facebook/GraphObjectWrapper$ProxyBase;->state:Ljava/lang/Object;

    .line 313
    return-void
.end method


# virtual methods
.method protected final proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$ProxyBase;, "Lcom/facebook/GraphObjectWrapper$ProxyBase<TSTATE;>;"
    const/4 v5, 0x0

    .line 322
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "methodName":Ljava/lang/String;
    const-string v4, "equals"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    aget-object v2, p3, v5

    .line 326
    .local v2, "other":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 327
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 341
    .end local v2    # "other":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 330
    .restart local v2    # "other":Ljava/lang/Object;
    :cond_0
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 331
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    instance-of v4, v0, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;

    if-nez v4, :cond_1

    .line 332
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 334
    check-cast v3, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;

    .line 335
    .local v3, "otherProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$ProxyBase;->state:Ljava/lang/Object;

    iget-object v5, v3, Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;->state:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 336
    .end local v0    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v2    # "other":Ljava/lang/Object;
    .end local v3    # "otherProxy":Lcom/facebook/GraphObjectWrapper$GraphObjectProxy;
    :cond_2
    const-string v4, "toString"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 341
    :cond_3
    iget-object v4, p0, Lcom/facebook/GraphObjectWrapper$ProxyBase;->state:Ljava/lang/Object;

    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method protected final throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 317
    .local p0, "this":Lcom/facebook/GraphObjectWrapper$ProxyBase;, "Lcom/facebook/GraphObjectWrapper$ProxyBase<TSTATE;>;"
    new-instance v0, Lcom/facebook/FacebookGraphObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " got an unexpected method signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-direct {v0, v1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
