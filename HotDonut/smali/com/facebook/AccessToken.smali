.class final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessToken$SerializationProxyV1;
    }
.end annotation


# static fields
.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expires:Ljava/util/Date;

.field private final isSSO:Z

.field private final lastRefresh:Ljava/util/Date;

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

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    .line 36
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expires"    # Ljava/util/Date;
    .param p4, "isSSO"    # Z
    .param p5, "lastRefresh"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    .line 46
    iput-object p3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/facebook/AccessToken;->isSSO:Z

    .line 49
    iput-object p5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    .line 50
    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 162
    const-string v1, " permissions:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 164
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    return-void

    .line 166
    :cond_1
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 168
    if-lez v0, :cond_2

    .line 169
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static createEmptyToken(Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, ""

    sget-object v2, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;)V

    return-object v0
.end method

.method static createForRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 5
    .param p0, "current"    # Lcom/facebook/AccessToken;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Landroid/os/Bundle;ZLjava/util/Date;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const-string v0, "com.facebook.TokenCache.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 112
    .local v6, "originalPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v0, Lcom/facebook/AccessToken;

    const-string v1, "com.facebook.TokenCache.Token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v2, "com.facebook.TokenCache.ExpirationDate"

    .line 118
    invoke-static {p0, v2}, Lcom/facebook/TokenCache;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 119
    const-string v4, "com.facebook.TokenCache.IsSSO"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 120
    const-string v5, "com.facebook.TokenCache.LastRefreshDate"

    invoke-static {p0, v5}, Lcom/facebook/TokenCache;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;)V

    return-object v0

    .line 115
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method static createFromDialog(Ljava/util/List;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Landroid/os/Bundle;ZLjava/util/Date;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static createFromSSO(Ljava/util/List;Landroid/content/Intent;)Lcom/facebook/AccessToken;
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Landroid/os/Bundle;ZLjava/util/Date;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method static createFromString(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/AccessToken;
    .locals 6
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/AccessToken;

    sget-object v2, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;)V

    return-object v0
.end method

.method private static createNew(Ljava/util/List;Landroid/os/Bundle;ZLjava/util/Date;)Lcom/facebook/AccessToken;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isSSO"    # Z
    .param p3, "expirationBase"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/Date;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "token":Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/facebook/AccessToken;->getExpiresInDate(Landroid/os/Bundle;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 101
    .local v2, "expires":Ljava/util/Date;
    invoke-static {v1}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v3, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;)V

    goto :goto_0
.end method

.method private static getExpiresInDate(Landroid/os/Bundle;Ljava/util/Date;)Ljava/util/Date;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "expirationBase"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 209
    if-nez p0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-object v4

    .line 213
    :cond_1
    const-wide/high16 v1, -0x8000000000000000L

    .line 215
    .local v1, "secondsFromBase":J
    const-string v5, "expires_in"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    .local v3, "secondsObject":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 217
    check-cast v3, Ljava/lang/Long;

    .end local v3    # "secondsObject":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 228
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_3

    .line 229
    new-instance v4, Ljava/util/Date;

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 218
    .restart local v3    # "secondsObject":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 220
    :try_start_0
    check-cast v3, Ljava/lang/String;

    .end local v3    # "secondsObject":Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v1

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tokenToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 153
    const-string v0, "null"

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lcom/facebook/LoggingBehaviors;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehaviors;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 199
    new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    iget-boolean v4, p0, Lcom/facebook/AccessToken;->isSSO:Z

    iget-object v5, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;ZLjava/util/Date;Lcom/facebook/AccessToken$SerializationProxyV1;)V

    return-object v0
.end method


# virtual methods
.method getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    return-object v0
.end method

.method getIsSSO()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/AccessToken;->isSSO:Z

    return v0
.end method

.method getLastRefresh()Ljava/util/Date;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

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
    .line 61
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method isInvalid()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method toCacheBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.facebook.TokenCache.Token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "com.facebook.TokenCache.ExpirationDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCache;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 128
    const-string v1, "com.facebook.TokenCache.Permissions"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    const-string v1, "com.facebook.TokenCache.IsSSO"

    iget-boolean v2, p0, Lcom/facebook/AccessToken;->isSSO:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v1, "com.facebook.TokenCache.LastRefreshDate"

    iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCache;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 132
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    .line 146
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
