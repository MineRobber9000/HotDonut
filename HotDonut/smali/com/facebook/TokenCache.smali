.class public abstract Lcom/facebook/TokenCache;
.super Ljava/lang/Object;
.source "TokenCache.java"


# static fields
.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCache.ExpirationDate"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field public static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCache.IsSSO"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCache.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCache.Permissions"

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCache.Token"

.field public static final USER_FBID_KEY:Ljava/lang/String; = "com.facebook.TokenCache.UserFBID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v3, -0x8000000000000000L

    const/4 v2, 0x0

    .line 363
    if-nez p0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-object v2

    .line 367
    :cond_1
    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 368
    .local v0, "n":J
    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 372
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const-string v0, "com.facebook.TokenCache.ExpirationDate"

    invoke-static {p0, v0}, Lcom/facebook/TokenCache;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 209
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const-string v0, "com.facebook.TokenCache.ExpirationDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIsSSO(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 280
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const-string v0, "com.facebook.TokenCache.IsSSO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 312
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    const-string v0, "com.facebook.TokenCache.LastRefreshDate"

    invoke-static {p0, v0}, Lcom/facebook/TokenCache;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 342
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    const-string v0, "com.facebook.TokenCache.LastRefreshDate"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    const-string v0, "com.facebook.TokenCache.Permissions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 148
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const-string v0, "com.facebook.TokenCache.Token"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 121
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v3

    .line 125
    :cond_1
    const-string v4, "com.facebook.TokenCache.Token"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const-string v4, "com.facebook.TokenCache.ExpirationDate"

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 131
    .local v0, "expiresMilliseconds":J
    cmp-long v4, v0, v5

    if-eqz v4, :cond_0

    .line 135
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 376
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    return-void
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 193
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const-string v0, "com.facebook.TokenCache.ExpirationDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/TokenCache;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 196
    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .prologue
    .line 225
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string v0, "com.facebook.TokenCache.ExpirationDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 227
    return-void
.end method

.method public static putIsSSO(Landroid/os/Bundle;Z)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Z

    .prologue
    .line 298
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    const-string v0, "com.facebook.TokenCache.IsSSO"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 327
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    const-string v0, "com.facebook.TokenCache.LastRefreshDate"

    invoke-static {p0, v0, p1}, Lcom/facebook/TokenCache;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    .line 330
    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # J

    .prologue
    .line 358
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    const-string v0, "com.facebook.TokenCache.LastRefreshDate"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "bundle"

    invoke-static {p0, v1}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    const-string v1, "value"

    invoke-static {p1, v1}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 260
    check-cast v0, Ljava/util/ArrayList;

    .line 264
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v1, "com.facebook.TokenCache.Permissions"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    return-void

    .line 262
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "bundle"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string v0, "com.facebook.TokenCache.Token"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract load()Landroid/os/Bundle;
.end method

.method public abstract save(Landroid/os/Bundle;)V
.end method
