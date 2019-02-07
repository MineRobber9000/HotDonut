.class Lcom/facebook/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ImageRequest$Callback;
    }
.end annotation


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PROFILEPIC_URL_FORMAT:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"

.field static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/ImageRequest$Callback;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/net/URL;

.field private isCancelled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/net/URL;ZLcom/facebook/ImageRequest$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/net/URL;
    .param p3, "allowCachedRedirects"    # Z
    .param p4, "callback"    # Lcom/facebook/ImageRequest$Callback;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "imageUrl"

    invoke-static {p2, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/facebook/ImageRequest;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/facebook/ImageRequest;->imageUrl:Ljava/net/URL;

    .line 67
    iput-object p4, p0, Lcom/facebook/ImageRequest;->callback:Lcom/facebook/ImageRequest$Callback;

    .line 68
    iput-boolean p3, p0, Lcom/facebook/ImageRequest;->allowCachedRedirects:Z

    .line 69
    return-void
.end method

.method static createProfilePictureImageRequest(Landroid/content/Context;Ljava/lang/String;IIZLcom/facebook/ImageRequest$Callback;)Lcom/facebook/ImageRequest;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "allowCachedImage"    # Z
    .param p5, "callback"    # Lcom/facebook/ImageRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/facebook/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 42
    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 44
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Either width or height must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https://graph.facebook.com/%s/picture"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 50
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_1

    .line 51
    const-string v1, "height"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    :cond_1
    if-eqz p2, :cond_2

    .line 55
    const-string v1, "width"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    :cond_2
    const-string v1, "migration_overrides"

    const-string v2, "{october_2012:true}"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    new-instance v1, Lcom/facebook/ImageRequest;

    new-instance v2, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2, p4, p5}, Lcom/facebook/ImageRequest;-><init>(Landroid/content/Context;Ljava/net/URL;ZLcom/facebook/ImageRequest$Callback;)V

    return-object v1
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ImageRequest;->isCancelled:Z

    .line 92
    return-void
.end method

.method getCallback()Lcom/facebook/ImageRequest$Callback;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/ImageRequest;->callback:Lcom/facebook/ImageRequest$Callback;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/ImageRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method getImageUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/ImageRequest;->imageUrl:Ljava/net/URL;

    return-object v0
.end method

.method isCachedRedirectAllowed()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/ImageRequest;->allowCachedRedirects:Z

    return v0
.end method

.method isCancelled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/facebook/ImageRequest;->isCancelled:Z

    return v0
.end method
